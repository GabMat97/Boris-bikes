require 'docking_station'

  describe DockingStation do
    it { is_expected.to respond_to :release_bike}

    it "gets a working bike" do
      bike = Bike.new
      ds = DockingStation.new
      ds.dock(bike)
      expect(ds.release_bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock).with(1).argument}

    it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    end

    it "checks whether a bike is present" do
    ds = DockingStation.new
    expect{ds.release_bike}.to raise_error("no bikes available")
    end
  end

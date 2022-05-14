{ lib, pkgs, ... }:

{
  imports = [
    ../../../common/cpu/intel
    ../../../common/pc/laptop
    ../../../common/pc/laptop/ssd
  ];

  # Essential Firmware
  hardware.enableRedistributableFirmware = lib.mkDefault true;

  # Cooling Management
  services.thermald.enable = lib.mkDefault true;

  # Video Drivers (Intel Iris Xe)
  services.xserver.videoDrivers = lib.mkDefault [ "intel" ];

  # Enable fwupd
  services.fwupd.enable = true;
}

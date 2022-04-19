# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{
  lib,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = ["ehci_pci" "ahci" "ums_realtek" "usb_storage" "sd_mod" "sr_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = [];
  boot.extraModulePackages = [];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/3f009ab5-2372-437a-a131-146bd20987cf";
    fsType = "ext4";
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/55d7ef51-78c9-4d56-acec-ce00fcdcfb5e";}
  ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "ondemand";
}

{ lib }:

let
  sources = import ./sources.nix;
in
{
  jdk-hotspot = import ./jdk-darwin-base.nix { sourcePerArch = sources.openjdk16.mac.jdk.hotspot; knownVulnerabilities = [ "Support ended" ]; };
  jre-hotspot = import ./jdk-darwin-base.nix { sourcePerArch = sources.openjdk16.mac.jre.hotspot; knownVulnerabilities = [ "Support ended" ]; };
  jdk-openj9 = import ./jdk-darwin-base.nix { sourcePerArch = sources.openjdk16.mac.jdk.openj9; knownVulnerabilities = [ "Support ended" ]; };
  jre-openj9 = import ./jdk-darwin-base.nix { sourcePerArch = sources.openjdk16.mac.jre.openj9; knownVulnerabilities = [ "Support ended" ]; };
}

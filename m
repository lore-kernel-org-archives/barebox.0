Delivery-date: Fri, 13 Feb 2026 11:37:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXs-001Dln-16
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 11:37:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXs-0007Ry-1Z
	for lore@pengutronix.de; Fri, 13 Feb 2026 11:37:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgQs7y39czbKz8ntudlIEMTvFnDi7splrBIH+Nrju9Q=; b=ArXdEH65okUEc2zNdQsZ383TeY
	XiAcaMGcApUPfLx0f01hRj0lnQ4w9WAzIgmOw/EnWxAvnUYlcQ5LIqEdSiNHxVx8kaUJP1dgZ6rLy
	E9QoJz0C8OLrITu3/ipeEvtPYWjeSgYTJjfGuCp9Cwh7OXxB5ncOIJHNikVoyPPzSvinBX1zWwccY
	Rf7f/zNU7Kq/EvbGIIbbeY4QkXUSTDa4kzos/d1tmp8g6EnOAcnb9ihG6uDAOrkK0EWpsfVCQHUX6
	ZF0PD0Ji/pFhiyguz90Z8daWDPmAoKrMl/aPmB+vlMZSC/K6bCJauD5P2C3ZyeDc2Ia+aJLJMQaHr
	ecIHX27g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXP-00000003KBA-3ZO3;
	Fri, 13 Feb 2026 10:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXM-00000003K9y-4Awr
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 10:36:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0007Eb-Gt; Fri, 13 Feb 2026 11:36:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXB-000Z4U-2u;
	Fri, 13 Feb 2026 11:36:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0000000BmW2-0fO7;
	Fri, 13 Feb 2026 11:36:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Feb 2026 11:35:57 +0100
Message-ID: <20260213103626.2807840-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
References: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_023637_349647_90C3AB25 
X-CRM114-Status: GOOD (  16.93  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: test boot with Debian netinstaller CDROM image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nocloud image takes quite long to boot and now includes
systemd-firstboot, which doesn't lend itself that well to automated
testing.

Switch to the CDROM image instead. That one doesn't autoboot
unfortunately and opens a screen, so we need a few workarounds for that,
but the tests work again now.

The end goal remains building a dedicated image for testing instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml  |  2 +-
 scripts/fetch-os.sh                        |  2 +-
 test/arm/multi_v8_efiloader_defconfig.yaml | 12 ++--
 test/py/helper.py                          | 39 +++++++++++++
 test/py/test_linux_efiloader.py            | 33 ++++++-----
 test/py/test_linux_smbios.py               | 16 +++++-
 test/strategy.py                           | 64 +++++++++++++++++-----
 7 files changed, 133 insertions(+), 35 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 7e385af65245..9f459fe2c30e 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -35,7 +35,7 @@ jobs:
           - ARCH: arm
             lgenv: test/arm/multi_v8_efiloader_defconfig.yaml
             defconfig: multi_v8_efiloader_defconfig
-            osimg: debian-13-nocloud-arm64.qcow2
+            osimg: debian-13.3.0-arm64-netinst.iso
 
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
diff --git a/scripts/fetch-os.sh b/scripts/fetch-os.sh
index 649e4efe9a05..e22185af2a00 100755
--- a/scripts/fetch-os.sh
+++ b/scripts/fetch-os.sh
@@ -8,7 +8,7 @@ fi
 set -euo pipefail
 
 declare -A images=(
-	["debian-13-nocloud-arm64.qcow2"]="https://cloud.debian.org/images/cloud/trixie/latest/debian-13-nocloud-arm64.qcow2"
+	["debian-13.3.0-arm64-netinst.iso"]="https://cloud.debian.org/images/release/current/arm64/iso-cd/debian-13.3.0-arm64-netinst.iso"
 )
 
 found=0
diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
index b24058da8e99..579ac9f50d25 100644
--- a/test/arm/multi_v8_efiloader_defconfig.yaml
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -9,17 +9,18 @@ targets:
         kernel: barebox-dt-2nd.img
         display: qemu-default
         extra_args: >
-          -drive if=virtio,snapshot=on,file=debian-13-nocloud-arm64.qcow2
+          -drive if=virtio,snapshot=on,file=debian-13.3.0-arm64-netinst.iso
           -device virtio-rng
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         autoboot: 'stop autoboot'
         bootstring: 'commandline:|Starting EFI payload at'
       ShellDriver:
-        prompt: '\x1b\[\?2004hroot@[^:]+:[^ ]+'
+        prompt: '~ # '
         login_prompt: ' login: '
         login_timeout: 300
         await_login_timeout: 20
+        post_login_settle_time: 3
         username: 'root'
       BareboxTestStrategy: {}
     features:
@@ -27,12 +28,13 @@ targets:
       - smbios
       - bootable
       - efi
+      - testfs
     options:
-      root_dev: virtioblk0.0
-      bootm.image: 'boot/vmlinuz-*'
-      bootm.initrd: 'boot/initrd.img-*'
+      bootm.image: 'install.a64/vmlinuz'
+      bootm.initrd: 'install.a64/initrd.gz'
 
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+  debian_iso: !template "../../debian-13.3.0-arm64-netinst.iso"
 imports:
   -  ../strategy.py
diff --git a/test/py/helper.py b/test/py/helper.py
index 17d40c584679..ab615280048f 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -5,6 +5,7 @@ import pytest
 import os
 import re
 import shlex
+import subprocess
 
 
 def parse_config(lines):
@@ -197,3 +198,41 @@ def skip_disabled(config, *options):
 
         if bool(undefined):
             pytest.skip("skipping test due to disabled " + (",".join(undefined)) + " dependency")
+
+
+def ensure_debian_iso(env, destdir):
+    """
+    Extract Debian kernel and initrd from ISO into destdir.
+
+    The debian_iso specified under images in the YAML will be used
+    Files are extracted into destdir/install.a64/{vmlinuz,initrd.gz}
+    and skipped if they already exist.
+
+    Returns destdir, or None if the ISO doesn't exist.
+    """
+    iso_path = env.config.get_image_path("debian_iso")
+    if iso_path is None:
+        return None
+
+    outdir = os.path.join(destdir, "install.a64")
+    vmlinuz_path = os.path.join(outdir, "vmlinuz")
+    initrd_path = os.path.join(outdir, "initrd.gz")
+
+    if os.path.exists(vmlinuz_path) and os.path.exists(initrd_path):
+        return destdir
+
+    os.makedirs(outdir, exist_ok=True)
+
+    with open(vmlinuz_path, "wb") as f:
+        subprocess.run(
+            ["isoinfo", "-i", iso_path, "-x", "/INSTALL.A64/VMLINUZ.;1"],
+            stdout=f, check=True,
+        )
+
+    with open(initrd_path, "wb") as f:
+        subprocess.run(
+            ["isoinfo", "-i", iso_path, "-x", "/INSTALL.A64/INITRD.GZ;1"],
+            stdout=f, check=True,
+        )
+
+    return destdir
diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index 385f3fde4c30..df50f21bffc0 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -1,8 +1,21 @@
 # SPDX-License-Identifier: GPL-2.0-only
+# Boot to Linux via EFI CDROM installer image
 
 import re
 import pytest
 
+from .helper import ensure_debian_iso
+
+fetchdir = "/mnt/9p/testfs"
+
+
+@pytest.fixture(scope="module")
+def debian_iso(env, testfs):
+    result = ensure_debian_iso(env, testfs)
+    if result is None:
+        pytest.skip("Debian ISO not found")
+    return result
+
 
 def get_dmesg(shell, grep=None):
     cmd = 'dmesg'
@@ -13,9 +26,9 @@ def get_dmesg(shell, grep=None):
     return stdout
 
 
-@pytest.mark.lg_feature(['bootable', 'efi'])
+@pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
 @pytest.mark.parametrize('efiloader', [False, True])
-def test_boot_manual_with_initrd(strategy, barebox, env, efiloader):
+def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
     """Test booting Debian kernel directly without GRUB"""
 
     barebox.run_check(f"global.bootm.efi={'required' if efiloader else 'disabled'}")
@@ -25,27 +38,22 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader):
         return config.get_target_option(strategy.target.name, opt)
 
     try:
-        root_dev = get_option(strategy, "root_dev")
         kernel_path = get_option(strategy, "bootm.image")
     except KeyError:
-        pytest.fail("Feature bootable enabled, but root_dev/bootm.image option missing.")  # noqa
+        pytest.fail("Feature bootable enabled, but bootm.image option missing.")
 
-    # Detect block devices
-    barebox.run_check("detect -a")
-    barebox.run_check(f"ls /mnt/{root_dev}/")
-
-    [kernel_path] = barebox.run_check(f"ls /mnt/{root_dev}/{kernel_path}")
+    kernel_path = f"{fetchdir}/{kernel_path}"
+    [kernel_path] = barebox.run_check(f"ls {kernel_path}")
 
     try:
         initrd_path = get_option(strategy, "bootm.initrd")
-        [initrd_path] = barebox.run_check(f"ls /mnt/{root_dev}/{initrd_path}")
+        initrd_path = f"{fetchdir}/{initrd_path}"
+        [initrd_path] = barebox.run_check(f"ls {initrd_path}")
         barebox.run_check(f"global.bootm.initrd={initrd_path}")
     except KeyError:
         pass
 
     barebox.run_check(f"global.bootm.image={kernel_path}")
-    barebox.run_check(f"global.bootm.root_dev=/dev/{root_dev}")
-    barebox.run_check("global.bootm.appendroot=1")
     # Speed up subsequent runs a bit
     barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
 
@@ -90,7 +98,6 @@ def test_expected_efi_messages(shell, env):
 
     expected_patterns = [
         r"efi:\s+EFI v2\.8 by barebox",
-        r"Remapping and enabling EFI services\.",
         r"efivars:\s+Registered efivars operations",
     ]
 
diff --git a/test/py/test_linux_smbios.py b/test/py/test_linux_smbios.py
index 97a6ae3c80a4..48051e29d0d0 100644
--- a/test/py/test_linux_smbios.py
+++ b/test/py/test_linux_smbios.py
@@ -2,8 +2,20 @@
 
 import pytest
 
+from .helper import ensure_debian_iso
 
-@pytest.mark.lg_feature(['bootable', 'smbios'])
+fetchdir = "/mnt/9p/testfs"
+
+
+@pytest.fixture(scope="module")
+def debian_iso(env, testfs):
+    result = ensure_debian_iso(env, testfs)
+    if result is None:
+        pytest.skip("Debian ISO not found")
+    return result
+
+
+@pytest.mark.lg_feature(['bootable', 'smbios', 'testfs'])
 def test_smbios3_tables_present(shell):
     _, _, ret = shell.run("test -e /sys/firmware/dmi/tables/smbios_entry_point")
     assert ret == 0, "SMBIOS entry point not found"
@@ -20,7 +32,7 @@ def test_smbios3_tables_present(shell):
     assert ret == 0, "SMBIOS entry point is not SMBIOS 3.x"
 
 
-@pytest.mark.lg_feature(['bootable', 'smbios'])
+@pytest.mark.lg_feature(['bootable', 'smbios', 'testfs'])
 def test_smbios_contains_barebox(shell):
     """
     Search raw SMBIOS/DMI tables for a barebox vendor string.
diff --git a/test/strategy.py b/test/strategy.py
index 35cda3aca498..3ad3cb2a45f2 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -1,16 +1,19 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 import enum
+import time
 
 import attr
 import pytest
 import subprocess
 import re
 from contextlib import contextmanager
+import pexpect
 
 from labgrid import target_factory, step, driver
 from labgrid.strategy import Strategy, StrategyError
 from labgrid.util import labgrid_version
+from labgrid.util.timeout import Timeout
 
 match = re.match(r'^(\d+?)\.', labgrid_version())
 if match is None or int(match.group(1)) < 25:
@@ -74,11 +77,7 @@ class BareboxTestStrategy(Strategy):
             # interrupt barebox
             self.target.activate(self.barebox)
         elif status == Status.shell:
-            # transition to barebox
-            self.transition(Status.barebox)  # pylint: disable=missing-kwoa
-            self.barebox.boot("")
-            self.barebox.await_boot()
-            self.target.activate(self.shell)
+            self._boot_kernel("")
         else:
             raise StrategyError(
                 "no transition found from {} to {}".
@@ -113,18 +112,57 @@ class BareboxTestStrategy(Strategy):
             self.power.cycle()
             self.target.activate(self.barebox)
 
+    def skip_cdrom_installer(self):
+        # Wait for installer to boot. Send Enter every cycle to dismiss
+        # GRUB menu and any installer prompts. The screen TUI has a clock
+        # in the status bar that makes pattern matching unreliable, so
+        # avoid matching on it.
+        timeout = Timeout(float(self.shell.login_timeout))
+
+        while not timeout.expired:
+            self.console.sendline("")
+            index, _, _, _ = self.console.expect(
+                ["Starting system log daemon", pexpect.TIMEOUT],
+                timeout=self.shell.await_login_timeout)
+            if index == 0:
+                break
+
+        # Switch to screen window 3 (shell) and disable the status bar.
+        # Retry until the shell prompt appears.
+        while not timeout.expired:
+            self.console.sendline("\x013")
+            time.sleep(0.5)
+            self.console.sendline("\x01:hardstatus ignore")
+            time.sleep(0.5)
+            self.console.sendline("")
+            index, _, _, _ = self.console.expect(
+                [self.shell.prompt, pexpect.TIMEOUT],
+                timeout=self.shell.await_login_timeout)
+            if index == 0:
+                break
+
+    def _boot_kernel(self, boottarget=None, bootm=False, skip_cdrom_installer=True):
+        self.transition(Status.barebox)
+
+        if bootm:
+            self.barebox_bootm(boottarget)
+        else:
+            self.barebox.boot(boottarget)
+
+        self.barebox.await_boot()
+
+        if skip_cdrom_installer:
+            self.skip_cdrom_installer()
+
+        self.target.activate(self.shell)
+
     @contextmanager
-    def boot_kernel(self, boottarget=None, bootm=False):
+    def boot_kernel(self, boottarget=None, bootm=False, skip_cdrom_installer=True):
         self.transition(Status.barebox)
 
         try:
-            if bootm:
-                self.barebox_bootm(boottarget)
-            else:
-                self.barebox.boot(boottarget)
-
-            self.barebox.await_boot()
-            self.target.activate(self.shell)
+            self._boot_kernel(boottarget=boottarget, bootm=bootm,
+                              skip_cdrom_installer=skip_cdrom_installer)
             yield self.shell
         finally:
             self.target.deactivate(self.shell)
-- 
2.47.3




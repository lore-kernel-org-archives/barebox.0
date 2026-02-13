Delivery-date: Fri, 13 Feb 2026 11:37:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXr-001DlN-1v
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 11:37:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXq-0007RF-QA
	for lore@pengutronix.de; Fri, 13 Feb 2026 11:37:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GqNdJb+G0VTYCk+oTCOQNprzq8k/jraAjhqGBWW2hhM=; b=ZnHKnRdbXzZc+KwiKEFdkkWftk
	F3NgATZsGm2fCN7iezv8/YeoJVEgzuxI799CtouH3b2VZil1Xno8zZJdIv3V8db2hbMb4JU1wvg6U
	mtkeQIWApG+faCWNQIuBWjxFfCPO760E4H0m2hFUpDufXApdedeakjySIIUav3BjrprRZuSudZNZ8
	xHvJ5Zu34VXmKRg7Z3PRNd+rYXUW346+dTy54Rx8/W6i6RW9WmygqrwxPTmcBdTxd1m6KUVKHsmIb
	T4xYVRBBnga0uTZ44/5hWgNIKmgQM0wED7drIVw/AilTGIVvujER9uOzektnJXo2CPWS/JxCREdoR
	BKcOkYxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXM-00000003KA6-2LXL;
	Fri, 13 Feb 2026 10:36:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXH-00000003K8J-1xdt
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 10:36:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0007EZ-Cz; Fri, 13 Feb 2026 11:36:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXB-000Z4R-2m;
	Fri, 13 Feb 2026 11:36:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0000000BmW2-0TxK;
	Fri, 13 Feb 2026 11:36:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Feb 2026 11:35:56 +0100
Message-ID: <20260213103626.2807840-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
References: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_023631_506193_E3A3F1E5 
X-CRM114-Status: GOOD (  10.92  )
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
Subject: [PATCH 1/3] test: py: linux: use utilities available in Debian netinstall images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Debian CDROMs for netinstall on ARM64 don't have journalctl (no
systemd) and no stat or strings.

Adapt the tests we have to use the commands available within the busybox
included on the CDROM images.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 19 +++++++++----------
 test/py/test_linux_smbios.py    | 11 ++++++-----
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index b9ea82d27c0d..385f3fde4c30 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -4,13 +4,11 @@ import re
 import pytest
 
 
-def get_journalctl(shell, kernel=True, grep=None):
-    opts = ''
+def get_dmesg(shell, grep=None):
+    cmd = 'dmesg'
     if grep is not None:
-        opts += f" --grep={grep}"
-    if kernel:
-        opts += " -k"
-    stdout, _, ret = shell.run(f"journalctl --no-pager {opts} -o cat")
+        cmd += f" | grep '{grep}'"
+    stdout, _, ret = shell.run(cmd)
     assert ret == 0
     return stdout
 
@@ -56,11 +54,11 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader):
         shell.run_check("grep -q apparmor=0 /proc/cmdline")
 
         initrd_freed = any("Freeing initrd memory"
-                           in line for line in get_journalctl(shell, 'initrd'))
+                           in line for line in get_dmesg(shell, 'initrd'))
         assert initrd_freed, "initrd was not loaded or freed"
 
         # Verify we booted to shell
-        dmesg = get_journalctl(shell, 'efi')
+        dmesg = get_dmesg(shell, 'efi')
 
         uefi_not_found = re.search("efi: UEFI not found.",
                                    "\n".join(dmesg)) is not None
@@ -81,14 +79,14 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader):
 
 @pytest.mark.lg_feature(['bootable', 'efi'])
 def test_efi_kernel_no_warn(shell):
-    stdout, stderr, ret = shell.run("journalctl -k --no-pager --grep efi -o cat -p warning")
+    stdout, stderr, ret = shell.run("dmesg -r | grep '<[0-4]>.*\\<efi\\>'")
     assert stdout == []
     assert stderr == []
 
 
 @pytest.mark.lg_feature(['bootable', 'efi'])
 def test_expected_efi_messages(shell, env):
-    dmesg = get_journalctl(shell, 'efi')
+    dmesg = get_dmesg(shell, 'efi')
 
     expected_patterns = [
         r"efi:\s+EFI v2\.8 by barebox",
@@ -122,6 +120,7 @@ def test_efi_systab(shell, env):
 @pytest.mark.lg_feature(['bootable', 'efi'])
 def test_efivars_filesystem_not_empty(shell):
     # Directory must not be empty
+    shell.run("mount -t efivarfs efivarfs /sys/firmware/efi/efivars")
     stdout, _, ret = shell.run("ls -1 /sys/firmware/efi/efivars")
     assert ret == 0
 
diff --git a/test/py/test_linux_smbios.py b/test/py/test_linux_smbios.py
index d0c2b7ca5665..97a6ae3c80a4 100644
--- a/test/py/test_linux_smbios.py
+++ b/test/py/test_linux_smbios.py
@@ -8,15 +8,16 @@ def test_smbios3_tables_present(shell):
     _, _, ret = shell.run("test -e /sys/firmware/dmi/tables/smbios_entry_point")
     assert ret == 0, "SMBIOS entry point not found"
 
-    [stdout], _, ret = shell.run("stat -c '%s' /sys/firmware/dmi/tables/DMI")
+    [stdout], _, ret = shell.run("wc -c </sys/firmware/dmi/tables/DMI")
     assert ret == 0
 
     size = int(stdout)
     assert size > 0, "SMBIOS DMI table is empty"
 
-    [stdout], _, ret = shell.run("dd if=/sys/firmware/dmi/tables/smbios_entry_point bs=1 count=5 2>/dev/null")
-    assert ret == 0
-    assert stdout == "_SM3_", "SMBIOS entry point is not SMBIOS 3.x"
+    shell.run_check("echo _SM3_ >/tmp/sm3")
+    stdout, _, ret = shell.run("cmp --bytes 5 /tmp/sm3 /sys/firmware/dmi/tables/smbios_entry_point")
+    assert stdout == []
+    assert ret == 0, "SMBIOS entry point is not SMBIOS 3.x"
 
 
 @pytest.mark.lg_feature(['bootable', 'smbios'])
@@ -26,5 +27,5 @@ def test_smbios_contains_barebox(shell):
     This avoids dmidecode and relies on simple string matching.
     """
     # The DMI table is binary; strings are still ASCII embedded
-    stdout, _, ret = shell.run("strings /sys/firmware/dmi/tables/DMI | grep -i barebox")
+    stdout, _, ret = shell.run("grep -a barebox /sys/firmware/dmi/tables/DMI")
     assert len(stdout) > 0, "barebox not found in SMBIOS/DMI tables"
-- 
2.47.3




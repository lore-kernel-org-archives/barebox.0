Delivery-date: Fri, 09 Jan 2026 18:00:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFr8-0033g3-1Z
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:00:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFr7-0008EC-Pt
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:00:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dhRHm7MDk4Me0PXYn/ZNhfY+o8msn6bMWktkMgLT3Lw=; b=FXup1k58SDFue1zkUicA2Utk2N
	h9Cow+SZkhh3zPTBvIJF0zOPLKF5DWWINOGoeRpcEq6l7rIzBlaZNRbTbzda6McBH7C6Un8SwQNbX
	F1nUxy0JVoaO3mKsbCPHoDqklKUQR1m6fC/6TPKLTbLN/P9LOHU8nyhiB61kdNQfLKmf+vJ/UwT5m
	4FcrYLqndZjMAw5JlZpyE3Jett1irxmLwB8eiALz89zeVqhoHPFLTRzL+WGJnYkq8RRNbFRrCrCTN
	A7AhVeaU7BIy/rrUxaInEComnNqEytTjwtI7N2j2oVu2v3TGp5PbrcUy9PoB/3DxS8Icv/ZLtK0vQ
	XYk7VokQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqR-00000002gr9-3IJv;
	Fri, 09 Jan 2026 17:00:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqO-00000002goI-22ur
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqM-0007jb-Td; Fri, 09 Jan 2026 18:00:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  9 Jan 2026 17:57:30 +0100
Message-ID: <20260109170007.805177-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260109170007.805177-1-a.fatoum@barebox.org>
References: <20260109170007.805177-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090012_523778_7FF7378E 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] test: py: add more kernel boot tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have one boot test for a Debian kernel via GRUB. The kernel in this
same image can be EFI booted directly thanks to its EFI stub and it can
be even booted without EFI at all via the normal boot protocol.

Add a test exercising both.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/arm/multi_v8_efiloader_defconfig.yaml |  5 ++
 test/py/test_linux_efiloader.py            | 64 ++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
index 42bb418af6f8..b24058da8e99 100644
--- a/test/arm/multi_v8_efiloader_defconfig.yaml
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -27,6 +27,11 @@ targets:
       - smbios
       - bootable
       - efi
+    options:
+      root_dev: virtioblk0.0
+      bootm.image: 'boot/vmlinuz-*'
+      bootm.initrd: 'boot/initrd.img-*'
+
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
 imports:
diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index 8530747a7a6b..b9ea82d27c0d 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -15,6 +15,70 @@ def get_journalctl(shell, kernel=True, grep=None):
     return stdout
 
 
+@pytest.mark.lg_feature(['bootable', 'efi'])
+@pytest.mark.parametrize('efiloader', [False, True])
+def test_boot_manual_with_initrd(strategy, barebox, env, efiloader):
+    """Test booting Debian kernel directly without GRUB"""
+
+    barebox.run_check(f"global.bootm.efi={'required' if efiloader else 'disabled'}")
+
+    def get_option(strategy, opt):
+        config = strategy.target.env.config
+        return config.get_target_option(strategy.target.name, opt)
+
+    try:
+        root_dev = get_option(strategy, "root_dev")
+        kernel_path = get_option(strategy, "bootm.image")
+    except KeyError:
+        pytest.fail("Feature bootable enabled, but root_dev/bootm.image option missing.")  # noqa
+
+    # Detect block devices
+    barebox.run_check("detect -a")
+    barebox.run_check(f"ls /mnt/{root_dev}/")
+
+    [kernel_path] = barebox.run_check(f"ls /mnt/{root_dev}/{kernel_path}")
+
+    try:
+        initrd_path = get_option(strategy, "bootm.initrd")
+        [initrd_path] = barebox.run_check(f"ls /mnt/{root_dev}/{initrd_path}")
+        barebox.run_check(f"global.bootm.initrd={initrd_path}")
+    except KeyError:
+        pass
+
+    barebox.run_check(f"global.bootm.image={kernel_path}")
+    barebox.run_check(f"global.bootm.root_dev=/dev/{root_dev}")
+    barebox.run_check("global.bootm.appendroot=1")
+    # Speed up subsequent runs a bit
+    barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
+
+    # Boot the kernel - it should use EFI stub by default
+    with strategy.boot_kernel(bootm=True) as shell:
+        shell.run_check("grep -q apparmor=0 /proc/cmdline")
+
+        initrd_freed = any("Freeing initrd memory"
+                           in line for line in get_journalctl(shell, 'initrd'))
+        assert initrd_freed, "initrd was not loaded or freed"
+
+        # Verify we booted to shell
+        dmesg = get_journalctl(shell, 'efi')
+
+        uefi_not_found = re.search("efi: UEFI not found.",
+                                   "\n".join(dmesg)) is not None
+
+        if efiloader:
+            test_efi_kernel_no_warn(shell)
+            test_expected_efi_messages(shell, env)
+            test_efi_systab(shell, env)
+            test_efivars_filesystem_not_empty(shell)
+
+            assert not uefi_not_found, \
+                   "EFI stub was not used despite global.bootm.efi=required"
+        else:
+            # Verify that EFI was NOT used
+            assert uefi_not_found, \
+                   "EFI stub was used despite global.bootm.efi=disabled"
+
+
 @pytest.mark.lg_feature(['bootable', 'efi'])
 def test_efi_kernel_no_warn(shell):
     stdout, stderr, ret = shell.run("journalctl -k --no-pager --grep efi -o cat -p warning")
-- 
2.47.3




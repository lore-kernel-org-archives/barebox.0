Delivery-date: Mon, 24 Aug 2026 09:30:39 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyP8g-006chH-2c
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:30:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1CC0620190E
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:30:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zSmxCAph;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4hoyFCc7aWS97ARimswZgYYUungKxIrOw2oxGewz3JY=; b=zSmxCAphfNVynmu7DPl8qaqAO5
	lJLgSqaCglxOH3/GuRjv35tC3xhezsOcHm/Rl64URfuFERur4yb5+/3o9e7V3AEmOKYtKe38AuP1E
	Ax2cPfBBsE+z7wviP5gam4okLo87PujSYXR6GpJye+qT+5zO3BL5wozb5ofyHEXh51FHGFpUpIgyp
	X3HlajNW3m4QWqFKwlhyGlOzABA6TlaAapCijpEyWAr+hLo+4QuKTlzmTGmrqgGHlJj8D2jwvoPNS
	K6U23urT8Yhn80FBLM6Bz2fuyECKAJGRxZ7gelWLZe8VrI4J7adtWgRFuo89xLkMw5XFqmA6U8o0F
	dRhlBJig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8I-0000000G55y-3bW3;
	Mon, 24 Aug 2026 07:30:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8E-0000000G53q-2PZj
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EEC51201B99;
	Mon, 24 Aug 2026 09:30:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-00346Y-2m;
	Mon, 24 Aug 2026 09:30:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-0000000Di4D-3Cb4;
	Mon, 24 Aug 2026 09:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/4] test: py: efiloader: test EFI ResetSystem from booted Linux
Date: Mon, 24 Aug 2026 09:29:54 +0200
Message-ID: <20260824073005.3267576-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
References: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_003010_786659_76E45B2D 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> arm64 machine_restart()
    calls efi_reboot() before falling back to PSCI whenever EFI runtime services
    are available, so rebooting the booted Debian kernel calls barebox's ResetSystem
    implementation, wh [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ga8urwr5tmgtra3mr8mh77tj53z59yut
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1CC0620190E

From: Ahmad Fatoum <a.fatoum@barebox.org>

arm64 machine_restart() calls efi_reboot() before falling back to
PSCI whenever EFI runtime services are available, so rebooting the
booted Debian kernel calls barebox's ResetSystem implementation,
which lives entirely in the .efi_runtime code section.

This way, we have a test that verifies we can call into efi_runtime
section both at boot and at runtime.

QEMU would restart the VM on a successful reset, so the test expects the
barebox banner to reappear on the console.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_linux_efiloader.py | 57 +++++++++++++++++++++++++++++----
 1 file changed, 50 insertions(+), 7 deletions(-)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index a76e55a91e52..eae6703e9d49 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -26,13 +26,7 @@ def get_dmesg(shell, grep=None):
     return stdout
 
 
-@pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
-@pytest.mark.parametrize('efiloader', [False, True])
-def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
-    """Test booting Debian kernel directly without GRUB"""
-
-    barebox.run_check(f"global.bootm.efi={'required' if efiloader else 'disabled'}")
-
+def configure_bootm(strategy, barebox):
     def get_option(strategy, opt):
         config = strategy.target.env.config
         return config.get_target_option(strategy.target.name, opt)
@@ -57,6 +51,16 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
     # Speed up subsequent runs a bit
     barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
 
+
+@pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
+@pytest.mark.parametrize('efiloader', [False, True])
+def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
+    """Test booting Debian kernel directly without GRUB"""
+
+    barebox.run_check(f"global.bootm.efi={'required' if efiloader else 'disabled'}")
+
+    configure_bootm(strategy, barebox)
+
     # Boot the kernel - it should use EFI stub by default
     with strategy.boot_kernel(bootm=True) as shell:
         shell.run_check("grep -q apparmor=0 /proc/cmdline")
@@ -127,3 +131,42 @@ def check_efivars_filesystem_not_empty(shell):
     assert ret == 0
 
     assert len(stdout), "EFI variables directory is empty"
+
+
+@pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
+def test_efi_reset_system(strategy, barebox, env, debian_iso):
+    """Test rebooting Linux via barebox's EFI ResetSystem runtime service
+
+    arm64 machine_restart() calls efi_reboot() before falling back to
+    PSCI whenever EFI runtime services are available, so a reboot from
+    the booted kernel calls into the barebox .efi_runtime code section
+    after ExitBootServices.
+    """
+
+    barebox.run_check("global.bootm.efi=required")
+
+    configure_bootm(strategy, barebox)
+
+    with strategy.boot_kernel(bootm=True) as shell:
+        # ensure the kernel did not give up on EFI runtime services
+        check_expected_efi_messages(shell, env)
+        stdout, _, _ = shell.run("dmesg | grep 'Runtime Services are disabled'")
+        assert stdout == [], "kernel disabled EFI runtime services"
+
+        strategy.console.sendline("reboot -f")
+
+        # QEMU reboots the VM on a successful reset, so barebox comes
+        # back up on the same console
+        _, before, _, _ = strategy.console.expect(
+            [r"barebox 2\d{3}"], timeout=120)
+
+        # A faulting ResetSystem would be caught by the kernel, which
+        # then complains and falls back to PSCI. That also reboots, so
+        # check the console log to tell the two apart.
+        before = before.decode("utf-8", errors="replace")
+        for pattern in ["Synchronous exception in EFI runtime service",
+                        "Unable to handle kernel",
+                        "Internal error",
+                        "Runtime Services are disabled"]:
+            assert pattern not in before, \
+                   f"kernel reported EFI runtime fault: {pattern}"
-- 
2.47.3




Delivery-date: Fri, 13 Feb 2026 11:37:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXr-001DlD-1Q
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 11:37:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqqXr-0007RW-Lw
	for lore@pengutronix.de; Fri, 13 Feb 2026 11:37:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/2NILRKiRDQrxe/QJueBK1VkbwfCBubV/gqB2wwqTL4=; b=OEeTTLjODMzqL1XQpR4a/RGRpG
	KC16uXszq02n7eFzO0atrHq7wTsZa4HeXAAx90vCDpYmc3VGLdvXcouMhQVqIlNcyff+29+ysF86D
	JiWo00WjQV/GhPqltfICrwbU0bVHJtgHqr34HbjkvNBGT4bSgNGjzLPvDeWAfDZdm7j6QW6kqCpTx
	ZF5B+ZR9TlwWVkpW0I9p6p0JaxRYdqtzh1F/n7+XQIX5BiKlituyyTvq2oP+hg4ozrlwhOnlgB6zj
	f57t68swLqOvbKA5XPnDQuRMiRtmmAcAq9v1/An2nWPjMuBia2/Z6EdXyYP8s7O3ekGlCme4Mj5Zj
	oKhbmg5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXL-00000003K9e-11Hg;
	Fri, 13 Feb 2026 10:36:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqqXH-00000003K8H-1tfA
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 10:36:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0007Ea-Ge; Fri, 13 Feb 2026 11:36:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXB-000Z4X-33;
	Fri, 13 Feb 2026 11:36:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqqXD-0000000BmW2-0qm7;
	Fri, 13 Feb 2026 11:36:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Feb 2026 11:35:58 +0100
Message-ID: <20260213103626.2807840-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
References: <20260213103626.2807840-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_023631_497950_B05CC14B 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 3/3] test: py: linux: remove test_ prefix for intermediate functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

These functions are not standalone tests, but they are called from
actual tests, so rename them to prevent pytest from collecting them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index df50f21bffc0..a76e55a91e52 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -72,10 +72,10 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
                                    "\n".join(dmesg)) is not None
 
         if efiloader:
-            test_efi_kernel_no_warn(shell)
-            test_expected_efi_messages(shell, env)
-            test_efi_systab(shell, env)
-            test_efivars_filesystem_not_empty(shell)
+            check_efi_kernel_no_warn(shell)
+            check_expected_efi_messages(shell, env)
+            check_efi_systab(shell, env)
+            check_efivars_filesystem_not_empty(shell)
 
             assert not uefi_not_found, \
                    "EFI stub was not used despite global.bootm.efi=required"
@@ -85,15 +85,13 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
                    "EFI stub was used despite global.bootm.efi=disabled"
 
 
-@pytest.mark.lg_feature(['bootable', 'efi'])
-def test_efi_kernel_no_warn(shell):
-    stdout, stderr, ret = shell.run("dmesg -r | grep '<[0-4]>.*\\<efi\\>'")
+def check_efi_kernel_no_warn(shell):
+    stdout, stderr, _ = shell.run("dmesg -r | grep '<[0-4]>.*\\<efi\\>'")
     assert stdout == []
     assert stderr == []
 
 
-@pytest.mark.lg_feature(['bootable', 'efi'])
-def test_expected_efi_messages(shell, env):
+def check_expected_efi_messages(shell, env):
     dmesg = get_dmesg(shell, 'efi')
 
     expected_patterns = [
@@ -106,8 +104,7 @@ def test_expected_efi_messages(shell, env):
                f"Missing expected EFI message: {pattern}"
 
 
-@pytest.mark.lg_feature(['bootable', 'efi'])
-def test_efi_systab(shell, env):
+def check_efi_systab(shell, env):
     stdout, stderr, ret = shell.run("cat /sys/firmware/efi/systab")
     assert ret == 0
     assert stderr == []
@@ -124,9 +121,7 @@ def test_efi_systab(shell, env):
                f"Missing expected entry in systab : {pattern}"
 
 
-@pytest.mark.lg_feature(['bootable', 'efi'])
-def test_efivars_filesystem_not_empty(shell):
-    # Directory must not be empty
+def check_efivars_filesystem_not_empty(shell):
     shell.run("mount -t efivarfs efivarfs /sys/firmware/efi/efivars")
     stdout, _, ret = shell.run("ls -1 /sys/firmware/efi/efivars")
     assert ret == 0
-- 
2.47.3




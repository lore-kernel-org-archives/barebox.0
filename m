Delivery-date: Mon, 23 Jun 2025 08:40:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqq-00AB2v-1d
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqp-0001Rm-9z
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPr/IUFHvjdlO+kJMOEamyITdsHWWJV+n/mt+/rJpJg=; b=igoU5iga22i2tymCnxG9JaH0/i
	ZpwlzM2053QwtvqYsq1mlGzSFsCZNaCz8pNou7WiUbqbqibXZb6o6yX+b1Kg406yVpr3NKBI9af9m
	hCr4h2OdMxCyHl5E3TZaTwWYszHG3yoPGJRHh0c04kCMiXtok0/k9nNDnIXUqC/YL50nHJvT5aV2b
	JvzPKObKSHot34pApEk1MvWBYL3CdJ1QiyS2FG3uo9CYtNFaEQPmhhF/Pv6uawSSQRFMWYpiybI2L
	7SxgZzNA6yRQbW4PUeTk4QC6GkgoNeBAEQj3ZTqQy5ZDX1qnshNv1f2mzyRcYGfCjfw889dz9XaCn
	/kgTwfHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqG-00000001kb3-047j;
	Mon, 23 Jun 2025 06:39:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTadg-00000001jLH-2vlK
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:26:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTadf-0006dU-Db; Mon, 23 Jun 2025 08:26:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:26:40 +0200
Message-Id: <20250623062641.3529615-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062641.3529615-1-a.fatoum@barebox.org>
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232644_733784_461F4433 
X-CRM114-Status: GOOD (  11.96  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: py: test mount/unmount of pstore file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file system internals were recently touched to enable easier porting
of the 9P file system. This led to regressions[1][2] that broke
unmounting a volumes.

Add a simple regression test that would have caught the two described
issues.

[1]: a3ef153fdf26 ("fs: unreference path on file close")
[2]: aef3b0134519 ("fs: unreference path in canonicalize_path()")

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v5_v6_defconfig |  1 +
 arch/arm/configs/multi_v7_defconfig    |  1 +
 arch/arm/configs/multi_v8_defconfig    |  1 +
 test/py/test_mount.py                  | 21 +++++++++++++++++++++
 4 files changed, 24 insertions(+)
 create mode 100644 test/py/test_mount.py

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 2afc072e129c..91d3a63e85ab 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -38,6 +38,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
 CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 4fb696a10626..726afe8ce6c5 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -143,6 +143,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
 CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 3d3f3254df20..a487d331d04e 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -89,6 +89,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
diff --git a/test/py/test_mount.py b/test/py/test_mount.py
new file mode 100644
index 000000000000..33608a3b6ddb
--- /dev/null
+++ b/test/py/test_mount.py
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+from .helper import skip_disabled
+
+
+def test_findmnt_umount(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_FINDMNT")
+
+    barebox.run_check("mount -t ramfs none /tmp")
+    findmnt_out1 = barebox.run_check("findmnt /tmp")
+    barebox.run_check("umount /tmp")
+
+    assert len(findmnt_out1) == 2
+
+
+def test_echo_umount(barebox):
+    barebox.run_check("mount -t ramfs none /tmp")
+    barebox.run_check("echo -o /tmp/file test")
+    barebox.run_check("umount /tmp")
+
+    # Nothing to assert, we are happy if this is reached without exception
-- 
2.39.5




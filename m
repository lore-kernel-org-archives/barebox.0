Delivery-date: Wed, 17 Sep 2025 16:19:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszy-0046PY-2T
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszw-0003jz-6T
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gVFmoIgXhm3P+NW/KWfNJ9thnbO+x7xtjV2sJrF6a6Y=; b=InNf71SYjmuOtIFhts9lQCkA8L
	BpAHH0NnPvD52Gs9HS+i9Vb2FrKaYdTm3yI/a+I3Z4sFnvDCexeyJ8vznoCgEuJCKhdj2KbcBpsOk
	HJgPeXSE0txLUy+LY10hQdlYrg3/bx01ESBRQKad18zumAwIRViud+hDOZT+d0SbkDJ9rkwyyYw5G
	pbNS0b+ozsmScr6kulG7hdauNktZDLowq2PFNK3w1TuRqfIQFI/Vg6GvVtTyfXP/mb/RM/+LBo/JQ
	LZ1b+Cx1afp2MLSA/b+gcuACP33vgsC7y7jA8Vd8/aRYE5z97DBsZkLbKM+Nik+iwPXTeMc1xjGaZ
	KxsAK2uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszR-0000000C8Nq-0ENE;
	Wed, 17 Sep 2025 14:18:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87h-3CXs
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-00033d-Aj; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-001mH3-0Q;
	Wed, 17 Sep 2025 16:18:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-36kB;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-20-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=1547;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=P8fCMXKU1lrqZe0f9Qwcl3QzCjqGzEjq6nwiOOr4H8s=;
 b=cMAeFUIZFKBYQ17E9yHbtJoCsUVVjPOtgeKmZ1bGvkCAnMPoc5yphIkbih9fwwETswhf7BBhZ
 8J90APPc19RCTh6JXL474ZMuYhi95IyI5Lws1K8LKSNvpkT/MRhd9bQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_803313_3627801A 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/24] security: fastboot: add security policy for
 fastboot oem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fastboot OEM commands allow to execute arbitrary commands via fastboot,
so add a security policy for it to limit access to this functionality.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Sconfig    | 4 ++++
 common/fastboot.c | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/common/Sconfig b/common/Sconfig
index edbc4bc028af79e2a72bb86de94ecce5c7b7643d..9142685a1d3f9846e69b746e545420eab5935661 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -6,6 +6,10 @@ config RATP
 	bool "Allow remote control via RATP"
 	depends on $(kconfig-enabled,CONSOLE_RATP)
 
+config FASTBOOT_CMD_OEM
+	bool "Allow Fastboot OEM commands"
+	depends on $(kconfig-enabled,FASTBOOT_CMD_OEM)
+
 endmenu
 
 menu "Boot Policy"
diff --git a/common/fastboot.c b/common/fastboot.c
index e5c79c22376caa81dbd6bb9385e103a7afd7dfe9..b661d610a3ce32fd4c148537a4a2f9308d00fdf9 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -42,6 +42,7 @@
 #include <linux/types.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd.h>
+#include <security/config.h>
 #include <fastboot.h>
 #include <system-partitions.h>
 
@@ -968,6 +969,11 @@ static void __maybe_unused cb_oem(struct fastboot *fb, const char *cmd)
 {
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
 
+	if (!IS_ALLOWED(SCONFIG_FASTBOOT_CMD_OEM)) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "OEM commands not allowed");
+		return;
+	}
+
 	fb_run_command(fb, cmd, cmd_oem_dispatch_info, ARRAY_SIZE(cmd_oem_dispatch_info));
 }
 

-- 
2.47.3




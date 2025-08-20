Delivery-date: Wed, 20 Aug 2025 16:32:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojra-002eHH-2z
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrY-0006TV-Uv
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wTLLPSi95JVPjREoYhayualBTfXzNmWoY7qmwQSUBgQ=; b=Y1W+eqHGYvXPlgjnXCX8KAAHhJ
	8ZOsNSr72qvKqNHkZbO2UD7B+7GlFp5OkiThRt2UnKyNPszgYZHa1hZbGahEmsbmQrFgnhsihKkZJ
	/jTyuo+84W18LcDHnYR0FUUYx6ZUua+DERGOv3WhRQcDnvklv3lD9QjByy6Fx1oojJdsV4RMg1Qsc
	+ncLa+nT0VyHNcXy3phJsf4iGiJUnkPG84htgi38A5WuOGfxhWRfc9mZHzzKExOG4KjFjXDl/TSEA
	yP4ACFlmKeNjqcg4odXdRnXcvUwm+wnoGr3HPQs7l21UopXu+aiAx1xlsh60MoCUnn/cI1b9KV9YC
	3C7Tqmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqx-0000000E4PX-2KBX;
	Wed, 20 Aug 2025 14:31:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixJ-0000000DoZn-1UJE
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003G6-61; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001Fs2-39;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1s;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-20-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=1547;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bEpwuzek3RbEJQJdBMqV4pqoIAjKQx1d84Ah7i5YmGU=;
 b=TgGGoe5t/PBJ4NpwIvw1YpqW0+eRHyZ/p2aFSkfD7TxBHEQxx+2UpuM/TQblIWK2593hN21xZ
 IfmY1ahoGgaAp+bHi2CtMrLdCcXGUEYwkKVsN2wEJ0Pz0TY7DSBwQmw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063421_410519_F422F912 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/24] security: fastboot: add security policy for fastboot
 oem
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
index 603391de77392aa7e1e61e32fd1844642f8ea42c..5c83b102e13909d49401ce03f9a98c6077894ee0 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -42,6 +42,7 @@
 #include <linux/types.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd.h>
+#include <security/config.h>
 #include <fastboot.h>
 #include <system-partitions.h>
 
@@ -966,6 +967,11 @@ static void __maybe_unused cb_oem(struct fastboot *fb, const char *cmd)
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
2.39.5




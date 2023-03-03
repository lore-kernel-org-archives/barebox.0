Delivery-date: Fri, 03 Mar 2023 10:31:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ku-007O4N-27
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:31:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kt-0004kz-JZ
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:31:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qxVM6+WoA28x42DzjYxGy6kiLj/a579icnr10HtgXjk=; b=hZMCeVPL7N+rzJTxMVjybfnt+1
	ax5TR+FO6cOSPL+OkWfmsUVmFIc4yqq53UGfzg6VW7b0a8Z1MarCG+QNWMxBlCwIziSkiar0NhMlu
	NcO6YiOj/kTBLLCMbtluciUUCuEm9B352ohFMqGboerJSVicTgs+gxlDD6VisiRTCYzUXoOaLUKHA
	4pr0ESgiJk4/JmMcMXKgbtQxeiyaT+AcUfA+EQafnupU3uFC1ls8t2Fpu7rTny+zLnOy8je2gQfwi
	mG+/VJrCB+9oBJTzhCwJZk+qj7aEC06LibGB7tiibVlxzhrxuGSe/RSEkzd+9+h2K7is5UA2TJELP
	UsGNBPRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1je-005kHh-Sw; Fri, 03 Mar 2023 09:29:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c6-005ee0-AL
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qxVM6+WoA28x42DzjYxGy6kiLj/a579icnr10HtgXjk=; b=ULkSaGOmEscKKLilOVx+7W0ach
	+70G/g/TGiXtjR7fylqRjMVSGC+dUzKtXBCjSgKNtH14rJtRwKAbNIg+DQVC2eTuGTWFbTdSGeqjQ
	9jsisCYba+D10XST0FFRqnDJgg+FXo6sGDWEKotl6qwZs3Atc6IV0tPU5ZdgWrKxnUnqI532obKpW
	0nwiLoBMun8mf2/FQh4ZIuvbtbq4Baz5VzSmXSBzZ3McIcXDAaa/DS+Sy83DHt2YMmAXU839kk4U8
	9AaZsYLdWEYbu9uS6wUPMmrZLgl0aRMDbSYij5HKGN6L57kGWVrdf7M0Fxh/jTYXfpNTfK0UGLQtp
	dlVDxHmg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bs-00FdLC-0V
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000Gd-8r; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjT-If; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2jG-UP; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:15 +0100
Message-Id: <20230303092131.3063587-35-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_272979_72E102AC 
X-CRM114-Status: GOOD (  16.71  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 34/50] ARM: Rockchip: Make safe for multi-arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make sure Rockchip initcalls are only executed when running on
a Rockchip SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/bootm.c    |  4 ++++
 arch/arm/mach-rockchip/rockchip.c | 29 +++++++++++++++++++++++------
 include/mach/rockchip/rockchip.h  |  2 ++
 3 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index 036a3696ad..4317fdefd6 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <memory.h>
+#include <mach/rockchip/rockchip.h>
 
 struct newidb_entry {
 	uint32_t sector;
@@ -113,6 +114,9 @@ static struct image_handler image_handler_rkns_barebox_image = {
 
 static int rockchip_register_barebox_image_handler(void)
 {
+	if (rockchip_soc() < 0)
+		return 0;
+
 	return register_image_handler(&image_handler_rkns_barebox_image);
 }
 late_initcall(rockchip_register_barebox_image_handler);
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index 0a89ab1841..e75238481c 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -3,18 +3,35 @@
 #include <init.h>
 #include <mach/rockchip/rockchip.h>
 
+static int __rockchip_soc = -1;
+
+int rockchip_soc(void)
+{
+	return __rockchip_soc;
+}
+
 static int rockchip_init(void)
 {
-	if (of_machine_is_compatible("rockchip,rk3188"))
+	if (of_machine_is_compatible("rockchip,rk3188")) {
+		__rockchip_soc = 3188;
 		return rk3188_init();
-	if (of_machine_is_compatible("rockchip,rk3288"))
+	}
+
+	if (of_machine_is_compatible("rockchip,rk3288")) {
+		__rockchip_soc = 3288;
 		return rk3288_init();
-	if (of_machine_is_compatible("rockchip,rk3566"))
+	}
+
+	if (of_machine_is_compatible("rockchip,rk3566")) {
+		__rockchip_soc = 3566;
 		return rk3568_init();
-	if (of_machine_is_compatible("rockchip,rk3568"))
+	}
+
+	if (of_machine_is_compatible("rockchip,rk3568")) {
+		__rockchip_soc = 3568;
 		return rk3568_init();
+	}
 
-	pr_err("Unknown rockchip SoC\n");
-	return -ENODEV;
+	return 0;
 }
 postcore_initcall(rockchip_init);
diff --git a/include/mach/rockchip/rockchip.h b/include/mach/rockchip/rockchip.h
index 16a691ee8c..485526ef53 100644
--- a/include/mach/rockchip/rockchip.h
+++ b/include/mach/rockchip/rockchip.h
@@ -37,4 +37,6 @@ static inline int rk3568_init(void)
 
 void rk3568_lowlevel_init(void);
 
+int rockchip_soc(void);
+
 #endif /* __MACH_ROCKCHIP_H */
-- 
2.30.2




Delivery-date: Thu, 04 Jan 2024 09:58:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJYs-003Jqw-0e
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 09:58:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJYr-0006Ks-6e
	for lore@pengutronix.de; Thu, 04 Jan 2024 09:58:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XlmoMufm26GmGPx0nk8rVdqUD3KywgjG8Wz97z7CHdc=; b=qeW+qir2LyAu3ShtpsI9OMV1OD
	0hp2rF5GxxlAzXU9byh3dQb/AHb1KMpUF2oCPeq0Om+YHWyfsl/+pgkZUdFT38yG0yYziw1f1tbm2
	jnC5mOA+Fe7PQjy7i2OYrVkcHdwRw/JHVKourjsyFlSDKzksuRGg2zx1s4g6xzs5T7aQApJBBaAqT
	erjzm3UjPjMEDA0oXgBUpQHsMYBIXMJnzdNkZrfiDth8R3ADNEZjlKWwRDi+aKM8aKUFKIiCe/RsB
	C9LF40Q+NNv70mOYCZnVcS3tAe/WdzNi6B9IZvJvnyjJKUsl7OzEiDs7dj7OqDurf4Mtt3Fg4sqea
	igKRS/ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJXt-00DHpA-2A;
	Thu, 04 Jan 2024 08:57:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJXr-00DHoE-1P
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 08:57:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJXq-00067r-3j; Thu, 04 Jan 2024 09:57:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJXp-000Iwx-Nc; Thu, 04 Jan 2024 09:57:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLJXp-002H0v-21;
	Thu, 04 Jan 2024 09:57:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Jan 2024 09:57:36 +0100
Message-Id: <20240104085736.541171-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_005743_472320_CA0D91D1 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: kasan: reserve shadow memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We did not have any protection in place to ensure that KASAN shadow memory
isn't overwritten during boot. Add that now to avoid strange effects
during debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix build when CONFIG_KASAN is disabled (Sascha)
---
 arch/arm/cpu/start.c  | 4 ++++
 include/linux/kasan.h | 4 ++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 15f5b2937227..9f4cdfe67fbf 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -133,6 +133,10 @@ static int barebox_memory_areas_init(void)
 		request_sdram_region("board data", (unsigned long)barebox_boarddata,
 				     barebox_boarddata_size);
 
+	if (IS_ENABLED(CONFIG_KASAN))
+		request_sdram_region("kasan shadow", kasan_shadow_base,
+				     mem_malloc_start() - kasan_shadow_base);
+
 	return 0;
 }
 device_initcall(barebox_memory_areas_init);
diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 54fb993f38ba..5fa0bebb796b 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -42,11 +42,11 @@
 #define KASAN_ALLOCA_LEFT	0xCA
 #define KASAN_ALLOCA_RIGHT	0xCB
 
-#if defined(CONFIG_KASAN) && !defined(__PBL__)
-
 extern unsigned long kasan_shadow_start;
 extern unsigned long kasan_shadow_base;
 
+#if defined(CONFIG_KASAN) && !defined(__PBL__)
+
 static inline void *kasan_mem_to_shadow(const void *addr)
 {
 	unsigned long a = (unsigned long)addr;
-- 
2.39.2




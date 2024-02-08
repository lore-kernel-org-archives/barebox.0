Delivery-date: Thu, 08 Feb 2024 08:52:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXzDJ-008Jgp-1C
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:52:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXzDK-000836-0p
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:52:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/HGcXVkqycYp9I8kJ/3hPg2hvDxc7V3YLQ9cupof+k0=; b=k6zfyF+zGsHAhmJGWn7XTansPs
	Yyv1YNizy2n+R7jmYCVBLHh7RhdoQvzgsw7xu2lkq5EY7/VMRvrNtJzgPc9dP72olH1iPU+GT+M3e
	Fva09EJop7T+3Vntyv4NqGy+NDGa5bFCfegs5nWYI0YZJN+6rxmCQKq6o89gFla2H+w/mjBK+SFuk
	tLMK/AUDrCkFJWdj68TarlEn5MJ8ubZhYhWzt05AOa5Qkl2eA24Alg9PDJePQmzHwSRxvA45UmNWq
	FKANJ1VnpGThZ+OoeNPQPxHb00aYrIVanN7h5tgh4WSYHY6BtkL91iXdqOtFvLb7oxwGpGeq0brDB
	v+Y3Sv4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXzCp-0000000CwNa-3x82;
	Thu, 08 Feb 2024 07:52:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXzCm-0000000CwMg-2mSY
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:52:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-0007yJ-VW; Thu, 08 Feb 2024 08:52:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-005AjF-J1; Thu, 08 Feb 2024 08:52:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXzCk-002vmV-1Z;
	Thu, 08 Feb 2024 08:52:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Feb 2024 08:52:17 +0100
Message-Id: <20240208075217.697668-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208075217.697668-1-s.hauer@pengutronix.de>
References: <20240208075217.697668-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_235220_735631_90AE1512 
X-CRM114-Status: GOOD (  13.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: bbu: fix i.MX9 eMMC boot bbu handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX9 eMMC boot bbu handler does not work currently, because the
code expects a i.MX image which is not what we need on i.MX9.
The code is also full of i.MX image specific quirks which we don't need
on i.MX9, so use the just created
imx_bbu_internal_mmcboot_register_handler() for i.MX9.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c |  5 -----
 include/mach/imx/bbu.h               | 16 +++++++---------
 2 files changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index e26317e8bf..8cdaab5c16 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -617,11 +617,6 @@ int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
 						 unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
-int imx9_bbu_internal_mmcboot_register_handler(const char *name,
-						 const char *devicefile,
-						 unsigned long flags)
-	__alias(imx_bbu_internal_mmcboot_register_handler);
-
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index f6397a9dd7..9a35b0074d 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -82,8 +82,6 @@ int imx8m_bbu_internal_mmc_register_handler(const char *name, const char *device
 					    unsigned long flags);
 int imx8m_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 						unsigned long flags);
-int imx9_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
-					       unsigned long flags);
 
 int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
@@ -184,13 +182,6 @@ static inline int imx8m_bbu_internal_mmcboot_register_handler(const char *name,
 	return -ENOSYS;
 }
 
-static inline int imx9_bbu_internal_mmcboot_register_handler(const char *name,
-							      const char *devicefile,
-							      unsigned long flags)
-{
-	return -ENOSYS;
-}
-
 static inline int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
@@ -231,4 +222,11 @@ static inline int imx_bbu_external_nand_register_handler(const char *name, const
 }
 #endif
 
+static inline int imx9_bbu_internal_mmcboot_register_handler(const char *name,
+							      const char *devicefile,
+							      unsigned long flags)
+{
+	return bbu_mmcboot_register_handler(name, devicefile, flags);
+}
+
 #endif /* __MACH_IMX_BBU_H */
-- 
2.39.2




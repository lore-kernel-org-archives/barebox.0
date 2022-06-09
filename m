Delivery-date: Thu, 09 Jun 2022 08:04:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBHM-008SDH-2f
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBHK-0002R5-L7
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QsOaKHRvb4krSgIZy9LUrIXOQfY6/6Sc5SEgMFQnAw=; b=KE09ca4NnpRSgn
	se4MYXkH1iAvozmdIfuoHfR3DPWpxMh372Kle066ywXoqmb3N2bViM0Rixvzy3v4p2fZ8937Z9SlZ
	MGNIl2Jz+7qMkgxGGKiH8oUSuE9dj43cSHHb619PeCNvI0dHtNJYwogruFz0Bioq3uqDqADIU3iBT
	JF8W3B4HLgMzHwjHmJFygDfweDjP7T8vkl4u+IIPtTJh7bA4GJEn/guW+82vnn3ouiGTztenjqrDG
	aWVoiuM4lPTyUVvCDAhCIDJHWp85FxHbnPIRTRboUCJY/6fGE1dm7WDHw0h4PtJSFc22Gz27QX4RO
	WP+eBa3HsLFAzwxjl5tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBFq-00Gx3X-5c; Thu, 09 Jun 2022 06:02:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCh-00Gv75-NW
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008Gb-Gs; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9C-0O; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZi-Ao; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:07 +0200
Message-Id: <20220609055922.667016-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225935_822317_DBCE4A83 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/21] ARM: rpi: switch to ARM_USE_COMPRESSED_DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We'll add a generic image containing multiple DTs in a follow-up commit,
which would benefit from compressing the DTs. For uniformity, compress
the existing DTs as well to save some kilobytes there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c | 17 +++++++++--------
 arch/arm/mach-bcm283x/Kconfig           |  1 +
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 7b9809b86cb7..091bfb8f4b14 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -57,26 +57,27 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 #define RPI_ENTRY_FUNCTION(name, memsize, r2) \
 	ENTRY_FUNCTION_WITHSTACK(name, rpi_stack_top(memsize), __r0, __r1, r2)
 
-extern char __dtb_bcm2835_rpi_start[];
+extern char __dtb_z_bcm2835_rpi_start[];
+extern char __dtb_z_bcm2836_rpi_2_start[];
+extern char __dtb_z_bcm2837_rpi_3_start[];
+extern char __dtb_z_bcm2837_rpi_cm3_start[];
+
 RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, r2)
 {
-	start_raspberry_pi(SZ_128M, __dtb_bcm2835_rpi_start, (void *)r2);
+	start_raspberry_pi(SZ_128M, __dtb_z_bcm2835_rpi_start, (void *)r2);
 }
 
-extern char __dtb_bcm2836_rpi_2_start[];
 RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, r2)
 {
-	start_raspberry_pi(SZ_512M, __dtb_bcm2836_rpi_2_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2836_rpi_2_start, (void *)r2);
 }
 
-extern char __dtb_bcm2837_rpi_3_start[];
 RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, r2)
 {
-	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_3_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_3_start, (void *)r2);
 }
 
-extern char __dtb_bcm2837_rpi_cm3_start[];
 RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, r2)
 {
-	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_cm3_start, (void *)r2);
+	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_cm3_start, (void *)r2);
 }
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 75acee8dad56..5be236a68419 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -8,6 +8,7 @@ config ARCH_TEXT_BASE
 
 config MACH_RPI_COMMON
 	bool
+	select ARM_USE_COMPRESSED_DTB
 
 menu "select Broadcom BCM283X boards to be built"
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Fri, 13 Aug 2021 17:34:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZCN-0006DT-0H
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 17:34:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEZCI-00065K-PS
	for lore@pengutronix.de; Fri, 13 Aug 2021 17:34:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGet37zEXng+G497A+Kx5LwQ6b7Hpph7ptGv/XpYoyU=; b=Dr54D8W5oKges+
	Umy0hknn/G3Nxd/I4VNacHKNBvVog29JcJL4oRC5FTfhqHfJco7NIaxSrIKWn204StPmg/E4kUlB+
	INsKRpvgW1Y8O9GadVf4WUIfbCSiRZHZaqnogUctIeIVToRzVALc2kn+1waqzTGffs+L9dLqMZci6
	q0exvuyoV04GliPwep7dRxEBrmVkBFeFcuSuY43YnLRM/qkq95wl3ioCBVKf3HUvPFeL1SERBH1XC
	gH3zww+ecnL1DxMUuYbnL0PCiOyyRm/xj7hTs9VZPxCD+Lr8AaohlPyLxGNsfKSFd3lpwmQGXJ1M0
	bYpJorIJEwWTa0aWWVVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZAe-00CyMI-OU; Fri, 13 Aug 2021 15:32:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZAa-00CyL2-8h
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 15:32:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAY-0005uQ-Tj; Fri, 13 Aug 2021 17:32:26 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAY-0006VD-Dc; Fri, 13 Aug 2021 17:32:26 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mEZAY-0003DA-Cj; Fri, 13 Aug 2021 17:32:26 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Aug 2021 17:22:43 +0200
Message-Id: <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=tHUzpA5y/bFlI+jcu7XjhsUNz/UZxC05gNL3FMAu1Aw=;
 m=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 p=oPqjVSiQn+UxyFcQw21PHFLW74OJQvfUkpEnLWGXWA8=;
 g=4247fa78af98180863681d9adcada1a7a5fcc3e1
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEWjjsACgkQwfwUeK3K7Amrogf+Jl2
 pCahvVL32F0lfUO/d1mfs6K+/hvlnRjQv0SM9t+70hViEluVYfcUesmhPBaDfG2a31Sqy9gRO9DnZ
 Qkomgbc5r9SOxcR4Gx6fEj/dSOH9TQRXq82ognOGSW3MAgE9zG72JWaoVAm/nn0Y6BM9LC/zobGSW
 /XenP4jYDzgfgmt3fDYXGNSNCDaPj9mo7TbSP9B8qFJ/wgwLNhmU95Ayx/VYqqPFHgwE5+pMT1GN4
 ITDh+OD80VbviCsh+ib/AphZcNdb54f5lN2GO8kXyDonVoEYG9X5B2hye+qWkdwFBXYNSBecB2JX8
 vMbNAleEtHDMfDOFsByb9G0I9Q7x54g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_083228_351176_24A35745 
X-CRM114-Status: GOOD (  14.88  )
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
Cc: rcz@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] imx8mp-evk: Add support for booting via USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 27 +++++++++++++++++++++++
 arch/arm/mach-imx/boot.c                  |  4 +++-
 include/asm-generic/sections.h            |  1 +
 3 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3298ded5866d..1fb7899198d6 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -99,6 +99,30 @@ static int power_init_board(void)
 	return 0;
 }
 
+/* read piggydata via a bootrom callback and place it behind our copy in SDRAM */
+static int imx8m_bootrom_load_image(void)
+{
+	int (*download_image)(u8 *dest, u32 offset, u32 size, u32 xor) = *(void **)0x988;
+	size_t count = __piggydata_end - __piggydata_start;
+	char *p = (char *)MX8M_ATF_BL33_BASE_ADDR + (__piggydata_start - __image_start);
+
+	while (count) {
+		size_t chunksize = min(count, (size_t)1024);
+		int ret;
+
+		ret = download_image(p, 0, chunksize, (uintptr_t)p ^ chunksize);
+		if (ret != 0xf0) {
+			pr_err("Failed to load piggy data (ret = %x)\n", ret);
+			return -EIO;
+		}
+
+		p += chunksize;
+		count -= chunksize;
+	}
+
+	return 0;
+}
+
 extern struct dram_timing_info imx8mp_evk_dram_timing;
 
 static void start_atf(void)
@@ -125,6 +149,9 @@ static void start_atf(void)
 	case BOOTSOURCE_MMC:
 		imx8mp_esdhc_load_image(instance, false);
 		break;
+	case BOOTSOURCE_SERIAL:
+		imx8m_bootrom_load_image();
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 2b66bbf71eb1..7c1d49291045 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -495,10 +495,12 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
 	case 5:
 		*src = BOOTSOURCE_NOR;
 		break;
-	case 15:
+	case 14: /* observed on i.MX8MP for USB "serial" booting */
+	case 15: /* observed on i.MX8MM for USB "serial" booting */
 		*src = BOOTSOURCE_SERIAL;
 		break;
 	default:
+		*src = BOOTSOURCE_UNKNOWN;
 		break;
 	}
 }
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 870bff21f668..597c4951ea5e 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -9,6 +9,7 @@ extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
 extern char __piggydata_start[];
+extern char __piggydata_end[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


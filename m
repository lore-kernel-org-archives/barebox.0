Delivery-date: Wed, 01 Jun 2022 09:16:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwIax-00Gvo2-Vl
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 09:16:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwIaw-0005HO-Fh
	for lore@pengutronix.de; Wed, 01 Jun 2022 09:16:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ma8scAerrXpqyd+qPCEkVfoi16bIvfZN8CZ9M9lBr70=; b=CyO4kRk6kTLjmF
	DzzQgTuCV9Kz/uD9k5k2iaVSKoAJOJ8T8mUvbJTL+hZix1cSFFvK7007G/bIXstDQcjMRJVHe8H/M
	I8O+do4KU+4pAelQsqtU1nSzLFztktD6Mn1AgDBzpXfRFmz7AkRc2sWaxNhHroeyJxSX5Buqpk+6K
	WIbvP2nnCkaGxBLIUcF4P/rFhWWPIoKmaQPmWoMSYPUpBTuuLKVLTXv9Q7wZUZgBpjzrymx+OBprl
	PWtn5uaiE0QyAWKn1AY0WN8a3S7PufYoVQz2pasi/7D4Yntw2NIbAimt5DlKVkUFk0gBSMI5xd0Ie
	S4ZGj2oU9Uhwj36W3Whw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwIZK-00ELn4-Tp; Wed, 01 Jun 2022 07:15:03 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwIZG-00ELmG-74
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 07:14:59 +0000
Received: by mail-lf1-x132.google.com with SMTP id be31so1218353lfb.10
        for <barebox@lists.infradead.org>; Wed, 01 Jun 2022 00:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lHq5ZX3S+4LQgf2C3Ijf6wJI0U1Z6r2IbdKq7WSx2Nc=;
        b=E6/orICd81zUwl/qQnGKRSPIbyjkcgCocMZ779SdkTYIfr9yvHp57lbPrd5HaFbOJ/
         pVqnnKrcZRiTrU1y68HXHfCzHj0T6cUImggPKGG8GFlLOT2/wvWgHw8b1RL6TjhqCODT
         LqPv8ZUeWKCNgd4XK1vyGc+gk2ZKGo2Q5sEwwYIWMcPC4Pdjn2HgghM1K0s+i5RxxH8H
         T57yZZBwGaLQRn768kX6d9slcdAW9mT72ji5PdcLjbt01e5k5VQQnWwLZdv5cOhcw5d2
         8368oG0AnAqi/12PPPHCb/vW5l+x6DSAk9RmO7vfj1dEUKegRscHBGRcaOcWvN9/m6eA
         b2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lHq5ZX3S+4LQgf2C3Ijf6wJI0U1Z6r2IbdKq7WSx2Nc=;
        b=kBqOfksMKdNLDyMuESh4In9D20H5WUOsZFn+RIPOTecq+yEXDc3wLKd4kbfPGSCwyx
         7e1jUfEPGpvrs+RvUHQcnABCCcirGUVwhp0H4oS6nIgMMB5QSV6/c47IOmsdwgUAANJR
         yQwPWe1Jfr06zKr0DJn3u1AaVymzsobexISGXu0mp5l/rhurDmgc2kaJaJaQn33oV9Sz
         KQKk+4bpJB5Q5KhzWphkmdjhp5KgQwxuH7yH3hK2XwMyfUVKiQHnhr3otTNi5QordVcg
         pKxpe+fn7kLhhdijTBmYwdY7NTwbo+sbb4Epzjsa2BFjrqgEE/jAXlKWoLh3d2rdvW88
         Yk6g==
X-Gm-Message-State: AOAM532A0UOrDsm/Dcclp4oeD7Vo2SGJT7D/QBGvp3dUj+6qh1Wkgy8N
	RRKqGxD6SG1kGaiPcKS7+cmA222R69A=
X-Google-Smtp-Source: ABdhPJwFYeOe6GiPliGInBeDrYkVEg0s87sXbSlVnbO6oxlpP6DZgyIcy5Af+IKCt0TwxBp6X/FJ5A==
X-Received: by 2002:a05:6512:4018:b0:477:ccbe:8e3d with SMTP id br24-20020a056512401800b00477ccbe8e3dmr41972575lfb.672.1654067694811;
        Wed, 01 Jun 2022 00:14:54 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q27-20020ac2511b000000b00477cc59e376sm189521lfb.161.2022.06.01.00.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 00:14:53 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 10:14:52 +0300
Message-Id: <20220601071452.17033-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_001458_293810_DC961698 
X-CRM114-Status: GOOD (  15.29  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arm-linux-ld: arch/arm/mach-omap/xload.o: in function read_mtd_barebox':
/home/ARM/barebox/arch/arm/mach-omap/xload.c:75: undefined reference to mtd_peb_read_file'

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/xload.c | 72 ++++++++++++++++++--------------------
 1 file changed, 34 insertions(+), 38 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 6d3704b8cf..78b2221304 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -53,46 +53,44 @@ static void *read_mtd_barebox(const char *part, unsigned int start, unsigned int
 	struct mtd_info *mtd;
 	unsigned int ps, pe;
 
-	if (!IS_ENABLED(CONFIG_MTD)) {
-		printf("Cannot load from nand/nor: MTD support is disabled\n");
-		return NULL;
-	}
+	if (IS_ENABLED(CONFIG_MTD)) {
+		cdev = cdev_open_by_name(part, O_RDONLY);
+		if (!cdev) {
+			printf("failed to open partition\n");
+			return NULL;
+		}
 
-	cdev = cdev_open_by_name(part, O_RDONLY);
-	if (!cdev) {
-		printf("failed to open partition\n");
-		return NULL;
-	}
+		mtd = cdev->mtd;
+		if (!mtd)
+			return NULL;
 
-	mtd = cdev->mtd;
-	if (!mtd)
-		return NULL;
+		if (mtd_mod_by_eb(start, mtd) != 0) {
+			printf("Start must be eraseblock aligned\n");
+			return NULL;
+		}
 
-	if (mtd_mod_by_eb(start, mtd) != 0) {
-		printf("Start must be eraseblock aligned\n");
-		return NULL;
-	}
+		to = xmalloc(size);
 
-	to = xmalloc(size);
+		ps = mtd_div_by_eb(start, mtd);
+		pe = mtd_div_by_eb(start + size, mtd);
+		ret = mtd_peb_read_file(mtd, ps, pe, to, size);
+		if (ret) {
+			printf("Can't read image from %s: %d\n", part, ret);
+			goto err;
+		}
 
-	ps = mtd_div_by_eb(start, mtd);
-	pe = mtd_div_by_eb(start + size, mtd);
-	ret = mtd_peb_read_file(mtd, ps, pe, to, size);
-	if (ret) {
-		printf("Can't read image from %s: %d\n", part, ret);
-		goto err;
-	}
+		size = get_image_size(to);
+		if (!size) {
+			printf("failed to get image size\n");
+			goto err;
+		}
 
-	size = get_image_size(to);
-	if (!size) {
-		printf("failed to get image size\n");
-		goto err;
-	}
+		return to;
 
-	return to;
+		err:
+		free(to);
+	}
 
-err:
-	free(to);
 	return NULL;
 }
 
@@ -292,7 +290,7 @@ static void *am33xx_net_boot(void)
  */
 static __noreturn int omap_xload(void)
 {
-	void *func;
+	void *func = NULL;
 
 	if (!barebox_part)
 		barebox_part = &default_part;
@@ -310,10 +308,8 @@ static __noreturn int omap_xload(void)
 		} else if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
 			printf("booting from USB\n");
 			func = omap4_xload_boot_usb();
-		} else {
+		} else
 			printf("booting from USB not enabled\n");
-			func = NULL;
-		}
 		break;
 	case BOOTSOURCE_NAND:
 		printf("booting from NAND\n");
@@ -327,16 +323,16 @@ static __noreturn int omap_xload(void)
 		if (IS_ENABLED(CONFIG_OMAP_SERIALBOOT)) {
 			printf("booting from serial\n");
 			func = omap_serial_boot();
-			break;
 		}
+		break;
 	case BOOTSOURCE_NET:
 		if (IS_ENABLED(CONFIG_AM33XX_NET_BOOT)) {
 			printf("booting from NET\n");
 			func = am33xx_net_boot();
-			break;
 		} else {
 			printf("booting from network not enabled\n");
 		}
+		break;
 	default:
 		printf("unknown boot source. Fall back to nand\n");
 		func = omap_xload_boot_nand(barebox_part);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


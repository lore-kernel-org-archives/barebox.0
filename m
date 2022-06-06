Delivery-date: Mon, 06 Jun 2022 08:42:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ny6Ro-004ylm-NK
	for lore@lore.pengutronix.de; Mon, 06 Jun 2022 08:42:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ny6Rn-00008B-80
	for lore@pengutronix.de; Mon, 06 Jun 2022 08:42:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qfXOZlq20S2PIgmBu65TUD3ejSDUifEHMkR3C20yFRM=; b=2Gsz1grEMbvnqU
	WUsV1RfkuyQacsMC06q5okBZPoxzAH5fJ8oMvYXsO4dXstzjuwtmTPyvaN+9sZ8Cr9FJj0a5M6kLD
	4zrkj2od9xmf3iB4nMDN/PAKarnVKeoV+DXlnL0bPMIOXCHXcaubgIhCikex79lqgQYxkGghU567S
	3eAHoEbuWj8Cm617tNjUGrtkhQ6IaN828ul/AnZXJGoFj78Vb2unZ/VpHqFHHd1AWD4xrgkdLynvK
	pyteV49nz5c3TXjsrAxMlAkw0oM4eHSqo12cxlklcMCKBX+6Af/k47VDXGkRYXv54oBF5aikXspO0
	EtSiij3/K3uwRYRaqbzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny6Q1-00HKyO-RP; Mon, 06 Jun 2022 06:40:53 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny6Px-00HKpD-8a
	for barebox@lists.infradead.org; Mon, 06 Jun 2022 06:40:50 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a23so14730781ljd.9
        for <barebox@lists.infradead.org>; Sun, 05 Jun 2022 23:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8SJulD3fkoQlFwPsjvN1ac3zxryjf7PjcB6iw+6i5yk=;
        b=Sn1JYYewyMWk5eViquq1ZWBGPWQK8XTo8DYNaVnBB/VkM5KFyIeM6U9obStFv+aMHg
         ppBUROAfG/d5IeFXidjVSF+4T1AE8OlblYLhK/Jh3lEp+UL6PEO2xu2bTheOig8MRCxs
         5D0ambo4DU9S/LAr5UCRa9XzR3iB8d5Kn9xnDf2ts2DWtiQnIhl7/t8/gBwowAqumT0b
         2E7eqCRSpCr5LUSITABc0/rBWU5j8AFwdNx70ToX9OExMONeEBAUbl5nm6IwrC0zy7KF
         05w7SFLUDtfDR6vWgs7xTmOzAKFtOXrenJZsUdlAwdHGGO1Ph6ub/+sLyDI0ghSbaKA6
         uHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8SJulD3fkoQlFwPsjvN1ac3zxryjf7PjcB6iw+6i5yk=;
        b=wrsVdrlOuBHIusqvGy4AjVzoyJEkz2VTwqCEUm/arvEs5tNO/yjS6AMstOokjQUha1
         Af+rbuOkZQPZfpbfrZ2LBD2+0aUQZJlBCcmDFVUzg3IZEfXprrfnXjgjeAPPIhmIxdZM
         CJXY8JxH+RAfIziGug7m97Nz1xX1VuHZJoqtABZP8aiH0alou9LJ5SohartWY7F5g8AO
         arboSdW88+OGKp4lp/cVka1mYFLW87DdxIWFpYePQA5yNxILd+MPY0dMorwACojeoHAZ
         pinx1czFCxi75oTFd1H6BJ2HfoHvITT+Ljm9VjRvg6yqL10yLbAGLwJFPakQoxqdXNXY
         gxDA==
X-Gm-Message-State: AOAM530e4X/3MVCjT/v2qse6uOHknKYtQhRhS7by4aN5tlDioJLFl07u
	yPMc/rks3mRXWP+NxqZiIAi8XJeSXmc=
X-Google-Smtp-Source: ABdhPJxSgLmkbukjXU+sFczXxvVzC2TK9IlS0FELDel1LOlIHpGzAUX8tBIButRA9blOXvIOfXNKow==
X-Received: by 2002:a2e:5c88:0:b0:255:8ec0:47e9 with SMTP id q130-20020a2e5c88000000b002558ec047e9mr4687152ljb.293.1654497643613;
        Sun, 05 Jun 2022 23:40:43 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id f9-20020a2e6a09000000b00254319f8e63sm2358361ljc.91.2022.06.05.23.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 23:40:42 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon,  6 Jun 2022 09:40:34 +0300
Message-Id: <20220606064034.9568-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_234049_381561_0D753D19 
X-CRM114-Status: UNSURE (   8.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: OMAP: syslib: Optimize wait_on_value() function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Saves up to 8 bytes in THUMB mode.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/syslib.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index 42da348c5a..488f0ab859 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -52,19 +52,16 @@ void sdelay(unsigned long loops)
  * @param[in] read_addr  address to read from
  * @param[in] bound max iterations
  *
- * @return 1 if match_value is found, else if bound iterations reached,
+ * @return non zero if match_value is found, else if bound iterations reached,
  *         returns 0
  */
 u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound)
 {
-	u32 i = 0, val;
 	do {
-		++i;
-		val = readl(read_addr) & read_bit_mask;
+		u32 val = readl(read_addr) & read_bit_mask;
 		if (val == match_value)
-			return 1;
-		if (i == bound)
-			return 0;
-	} while (1);
-}
+			break;
+	} while (--bound);
 
+	return bound;
+}
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


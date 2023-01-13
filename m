Delivery-date: Fri, 13 Jan 2023 15:08:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGKjd-00AqIP-PC
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 15:08:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGKjb-0003gx-V9
	for lore@pengutronix.de; Fri, 13 Jan 2023 15:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CrRaWYCAknVzdiQHi6z0Gl3k7WMr/PsDTjdsWHpE0As=; b=4ZRApFBmw5Jvgj
	bzUQnhWvAxtwyDZbSzin6Hlp5PamgAfbH8bhxkY1RZ8bB1XFcf+nOYEevMORJMDWXcKJpDgwq6PmX
	8FZBlGCbBX0syiLEetVKVoWlmkbWpCTIh5zUf51z9JudWHowgUO5u296z7y5v5aFNcjU0yCZk3eU8
	zT7E2P2FnEAN6jmDvCz+ciPhf8op1qy/yuyDMVuseYLYGO14GIGz6kVc7vf+3XIhL7pbz5Yn7d/wT
	MQnwpAnj2eqohu/OQtKQWpaXFZRqqeUW/mrUA138PWkKwjrjBMQUsQazcY/a1Ajhgr91P2fVVDxpR
	twrnbp0MXCkfEkOxkGhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKi5-002s2s-F5; Fri, 13 Jan 2023 14:07:09 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKi0-002s25-IA
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 14:07:05 +0000
Received: by mail-lf1-x135.google.com with SMTP id g18so423874lfh.0
        for <barebox@lists.infradead.org>; Fri, 13 Jan 2023 06:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CrRaWYCAknVzdiQHi6z0Gl3k7WMr/PsDTjdsWHpE0As=;
        b=Wgdm8MNmybz6AF3gRjNrOn8vvk70jsR1nUfxB6M3T2P5zDW2leRh3nngQ5PWURtvK5
         2zwYzOmrT8KMoxefZUO++z+0Tz4oa4mfPUMr+PzGqOsTH4JKQVKs43J3V4PZoowGWSd2
         MJAmyo2Q5swEcr9ZnRRCVSpuyXYwSwsj9HLQSgX/vXQfYLm2CADjhPUDq/HInYDXCrBZ
         q4n27WwmZM00sPN6NFSFtd2KRObxUhLZWV2+sOhvYUKvXaA+IOj7QtjhQt9UGq+9EJBw
         Zg1JRmL+Lffu3ggEfbtOgh4xep6E4Be60F2Z/pFAbPhi0hPkOKX6QB1zZWBemUrZw3nK
         zIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CrRaWYCAknVzdiQHi6z0Gl3k7WMr/PsDTjdsWHpE0As=;
        b=QacYgxyoLzkcEvm8J3TK25znjIoKnH0X/stE1zvO8t8zdhP/EpvW8Li/e1vwjbp0Y5
         oibnlfzjJE6oMxuVBN3yipXMcycESvZ+LJU1ci91OGZ4WEF2gx95vGcz09f/lcyUMPwC
         liGFe5NnwCexenWyDaVKTkVCZWrtk+s5256BxQSflc50YBFHpkZy7pYr+CSXaWhmyWYc
         a5uDz0yxi00MaTMU+elaffonADtQUVahT8AVwZiawmVPjZTFbfbUZODYJEXI+XJCyqoT
         d/DLj657HW6YH8sP4m2V0IjxbWAK6evI1W1arhmEZy7FNmTjcgV7m//AuQFJSTunIZaZ
         edvw==
X-Gm-Message-State: AFqh2kpM+OjwQV7X5Xdim8S/P14Pfr+wSW5G7kJdKOZNfl/TI/tjZ2U0
	5y4efaHIUADjgILuaxzNLuDJjLEViHSdaQ==
X-Google-Smtp-Source: AMrXdXtTc72QQ3rpsKSNupJEcbMpIoq+XpBrg8550ZARlnI1oB0pD1xiTZAGyz3ulFa+8pgldRmVxA==
X-Received: by 2002:a05:6512:1688:b0:4ca:fa75:a64a with SMTP id bu8-20020a056512168800b004cafa75a64amr23729810lfb.0.1673618819314;
        Fri, 13 Jan 2023 06:06:59 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id s3-20020a056512314300b0048a9e899693sm3894819lfi.16.2023.01.13.06.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 06:06:57 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Jan 2023 17:06:48 +0300
Message-Id: <20230113140648.31572-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_060704_617228_218FAA29 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ddr_spd: use unsigned type for crc bytes in DDR3/4 SPD check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using signed char type for computed CRC bytes leads to them being sign
extended on comparison with unsigned char values from SPD EEPROM struct.
This happens as when being compared those values undergo integer
promotion that converts them into ints, sign extending signed types.
Having most significant byte set for any of computed CRC bytes thus
results in the mismatch being erroneously detected.

While at it, also remove redundant type casts.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 common/ddr_spd.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 52773178e7..dd3b8511e6 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -65,8 +65,8 @@ int ddr3_spd_check(const struct ddr3_spd_eeprom *spd)
 	char *p = (char *)spd;
 	int csum16;
 	int len;
-	char crc_lsb;	/* byte 126 */
-	char crc_msb;	/* byte 127 */
+	unsigned char crc_lsb;	/* byte 126 */
+	unsigned char crc_msb;	/* byte 127 */
 
 	/*
 	 * SPD byte0[7] - CRC coverage
@@ -77,8 +77,8 @@ int ddr3_spd_check(const struct ddr3_spd_eeprom *spd)
 	len = !(spd->info_size_crc & 0x80) ? 126 : 117;
 	csum16 = crc_itu_t(0, p, len);
 
-	crc_lsb = (char) (csum16 & 0xff);
-	crc_msb = (char) (csum16 >> 8);
+	crc_lsb = csum16 & 0xff;
+	crc_msb = csum16 >> 8;
 
 	if (spd->crc[0] == crc_lsb && spd->crc[1] == crc_msb) {
 		return 0;
@@ -96,14 +96,14 @@ int ddr4_spd_check(const struct ddr4_spd_eeprom *spd)
 	char *p = (char *)spd;
 	int csum16;
 	int len;
-	char crc_lsb;	/* byte 126 */
-	char crc_msb;	/* byte 127 */
+	unsigned char crc_lsb;	/* byte 126 */
+	unsigned char crc_msb;	/* byte 127 */
 
 	len = 126;
 	csum16 = crc_itu_t(0, p, len);
 
-	crc_lsb = (char) (csum16 & 0xff);
-	crc_msb = (char) (csum16 >> 8);
+	crc_lsb = csum16 & 0xff;
+	crc_msb = csum16 >> 8;
 
 	if (spd->crc[0] != crc_lsb || spd->crc[1] != crc_msb) {
 		printf("SPD checksum unexpected.\n"
@@ -117,8 +117,8 @@ int ddr4_spd_check(const struct ddr4_spd_eeprom *spd)
 	len = 126;
 	csum16 = crc_itu_t(0, p, len);
 
-	crc_lsb = (char) (csum16 & 0xff);
-	crc_msb = (char) (csum16 >> 8);
+	crc_lsb = csum16 & 0xff;
+	crc_msb = csum16 >> 8;
 
 	if (spd->mod_section.uc[126] != crc_lsb ||
 	    spd->mod_section.uc[127] != crc_msb) {
-- 
2.30.2




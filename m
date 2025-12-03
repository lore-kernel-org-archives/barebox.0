Delivery-date: Wed, 03 Dec 2025 18:14:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQw-007aaa-0d
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 18:14:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQv-00014T-BW
	for lore@pengutronix.de; Wed, 03 Dec 2025 18:14:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P3x6KO5TvAnCsjfhi20lcGQR/SVnoW9DBF3YVqwInmM=; b=VgMTGBnQeCGohelEREnhFNECau
	EQ1tTsGbh4lTrFVgXPwj5Kg7ElomzSja404t2HekyKWdex7vea2juZN8Nq/0V1wHwOJvsZwOoEq+7
	ZJS5ZwjzlLORUdsKwd56WMgVyjDU0NLsfBsrpjNwvN05Xp1SLtEd6/urx19Jj2d3v8l9tMh9X7P5K
	Qn2781r4ceAZAjxdCv6nfl5VovIXCMc2HlsmHsdoL6SO7lFya0RlLqryoqDWlkwfSI/WHIY/O31CM
	S7H0ojSh6XeqofeFpNv00ve8PHrWeYLDQA1ttdUkZsxqSzCs5sA5oi58xPCesYU2z4pRuDnJPurEt
	jAJrrE1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQQ-00000006qc1-1OKR;
	Wed, 03 Dec 2025 17:13:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQM-00000006qZF-2zgL
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 17:13:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso53882025e9.3
        for <barebox@lists.infradead.org>; Wed, 03 Dec 2025 09:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764782033; x=1765386833; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3x6KO5TvAnCsjfhi20lcGQR/SVnoW9DBF3YVqwInmM=;
        b=kUctXEGeSGppG6WPhWyH6DHbMRszOjzDZeFFOzeiuKGyrHLB09QHdoSA+XOTjXjstX
         Sae0Wq8MCuF5zjQ4xSlTyxtvMQilX2T/2i3GFg/O1VA8O2aRD5AXBpRQdHnucHsMQZIH
         YPN+3XgqciF+hUj2d9I6dwpJleU7Q+cPaF1bF7LSaFuahSA1uWFhWmvUjhOQWyYTLdcm
         Q8Jj71TIeY5SWHWtAF1iMVoypBJUkk/KMAgd2KE/TEVlsl3qTcVsm1ELojHCU/sDEqK0
         Np9RyATias6EEWttNW2C9PrdkwsrJ8Nb4RvfG260ruwLGU5HDCOJWEAC2gMXexjli+Y8
         Ed1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764782033; x=1765386833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P3x6KO5TvAnCsjfhi20lcGQR/SVnoW9DBF3YVqwInmM=;
        b=CARWykapreTmsa3SYNc+Xq6rjoIB8PzQ45bKDa1RVHPVDHefrnBry3YoLypUFWdMGJ
         kxFp6aNdKM3LGsgBuC6TYPQc+WHzeIvC27Ta+Z9uwH/z6ymvs3HMalRBLQ/+sMba9sln
         xv7afe/+015Um9KZ16d77G3vJ2n3J+NEFsryhFWqb4+QweqhsCpsX4hRHRCuNDhOTSCz
         5fPe1o1EZKof1XOqggHOwlHs75Uhg+tcA0RLPeO5DqpY+2FAfwrjilWf8exWioaA4DP0
         VRtQdaDXA3LEqAWqLTChe1AU8oDnsvsuVDyDpNC1P0hVHPJUD6WbcMfL6N/CemESZsSi
         EgWw==
X-Forwarded-Encrypted: i=1; AJvYcCWutYLZ6snhROo3d5JZimVP++2+gkjozpqNuetFGMcX0zrRy4QhrDUOOX7T4A1AIOwpqdZGk3Dw@lists.infradead.org
X-Gm-Message-State: AOJu0YwPV9dx4Muw59v1Ee5WvVTYshxzEA2tugJX23fL4rqzYhnLSfiU
	zoZ6B0v/8BSswW2Tn6/feTLmXauh8Nxd+Lja3tx54QViQjcq1Snln2hxdhOWMw==
X-Gm-Gg: ASbGnctoVeQ5Fb/qPfeSHs2wXhOLurmPuW6Oy64UeY/3Xt9VHW3zCIwjts6oBU1KtGN
	NbvDamqkNqMZ1DbDprdJ9H3aH4D8Vv29h3ST73oslWPWBLug61ZpQi+iSwq+yzew0jfC/5LmbJD
	NfgG3MtMtO2ZyEZmKDjtw7+vOgN7J5egrpVnfYsUmxMG06C7x1SIGXyLPPnhFXGwcdW4V47f8lF
	U6jPmF4kL/CzeTvua5gKXj4eSQ3rINt4bNS5gf9v+okl6lb4r+5Uof9IRp2x6HIOzKZOMYJprf2
	XzGR1teR+2WpPFJDn7f6WuXHH3iWJ5BQ2A5g2ZPKpxM5ZoZGBAAFaWKzrQ20Usr3Ml0SJCkr/6Q
	JbpntqKpZacdJYVhOX0dHy7Dvdmlg1Qe5pj8sQuwQw27A2H735+RF9jem3uJJFSBBdk8VXNFIM+
	siLwSUwD+xSoLTW3+VdK34+ue/ZyliqE/qYdIrlWdzVmkCJREeIAv9PJAtqfYZAG1fUZRQprJab
	LXgsHQ+P7AnMP3rsV94Ky2Os/cC+AQ1lDL4TWP/3OphYyRqz2DJOJl582mhjGcKFA53fZ5IgdXG
	oZkzazqHl7SvVuZZy7bIespIJzd63FPen3RS45xA/Q==
X-Google-Smtp-Source: AGHT+IEOMh/6OjlY1E6Ce5Tyr4ACMjbrAwFugecVkpEvaF1xRzAquhYPFHhPWSKkY2WKlWp3gy3rlg==
X-Received: by 2002:a05:600c:c491:b0:477:632c:5b91 with SMTP id 5b1f17b1804b1-4792af30e95mr39187845e9.16.1764782032678;
        Wed, 03 Dec 2025 09:13:52 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-b582-e1f7-764e-a16b.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:b582:e1f7:764e:a16b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm49112578f8f.2.2025.12.03.09.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 09:13:52 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Wed, 03 Dec 2025 18:13:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-avenger96-v2-2-95f0cfa50aaa@gmail.com>
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764782030; l=4066;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=hNQ5GVG5rYbh2NcfqRcq9QLI0mwhbkg/KALvBeNW7bc=;
 b=yAL80N5g6Uy8reI6OY+G9S2eHnSj4lKvUBwgDV96rIhu/jJkZovC6tJS9lrTc/sqVuk/ZsKv/
 8grnmUfb6pXCwUjpgaqJ8hf2M0/rJl8NHaPTh6qMypLJX2iLP6ZgDTH
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_091354_781517_C91C45E1 
X-CRM114-Status: GOOD (  14.61  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a barebox update handler for STM32MP NOR flash to support firmware
updates in different scenarios. The STM32MP NOR flash layout uses offset 0
for FSBL and offset 512K for FIP, while eMMC boot partitions have FSBL at
offset 0 and FIP at offset 256K. The handler detects the image type and
flashes accordingly: standalone FIP images go to 512K, standalone FSBL
images to offset 0, and combined eMMC boot partition images (detected by
finding FIP at 256K offset) get split with FSBL flashed to offset 0 and
FIP to 512K. Images that exceed available space will fail with -ENOSPC
when pwrite_full() cannot write all bytes.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/mach-stm32mp/bbu.c | 77 +++++++++++++++++++++++++++++++++++++++++++++
 include/mach/stm32mp/bbu.h  | 10 ++++++
 2 files changed, 87 insertions(+)

diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
index 07b5111341..e8d0138cc7 100644
--- a/arch/arm/mach-stm32mp/bbu.c
+++ b/arch/arm/mach-stm32mp/bbu.c
@@ -193,3 +193,80 @@ int stm32mp_bbu_mmc_fip_register(const char *name,
 
 	return ret;
 }
+
+static int stm32mp_bbu_nor_fip_handler(struct bbu_handler *handler,
+			 struct bbu_data *data)
+{
+	struct bbu_data *fsbl_data, *fip_data;
+	enum filetype filetype;
+	int ret;
+
+	filetype = file_detect_type(data->image, data->len);
+	if (filetype == filetype_fip) {
+		pr_debug("Flashing FIP at offset 512K\n");
+		return bbu_flash(data, SZ_512K);
+	}
+
+	if (filetype != filetype_stm32_image_fsbl_v1) {
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(filetype_stm32_image_fsbl_v1),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+
+		/* Force: Let's assume it's an FSBL and flash anyway */
+	}
+
+	if (data->len > SZ_256K)
+		filetype = file_detect_type(data->image + SZ_256K,
+					    data->len - SZ_256K);
+	else
+		filetype = filetype_unknown;
+
+	/* Not an eMMC image, just flash 1:1 */
+	if (filetype != filetype_fip) {
+		pr_debug("Flashing FSBL at offset 0\n");
+		return bbu_flash(data, 0);
+	}
+
+	/* On SPI-NOR, offset 256K is FSBL2. If we get a FIP image there
+	 * instead, let's assume that's an eMMC boot partition image
+	 * and flash the FSBL to offset 0 and the remainder to offset 512K
+	 */
+
+	pr_debug("Flashing FSBL at offset 0\n");
+	fsbl_data = data;
+	fsbl_data->image = data->image;
+	fsbl_data->len = SZ_256K;
+
+	ret = bbu_flash(fsbl_data, 0);
+	if (ret < 0)
+		return ret;
+
+	pr_debug("Flashing FIP from file offset 256K at offset 512K\n");
+	fip_data = data;
+	fip_data->image = data->image + SZ_256K;
+	fip_data->len = data->len - SZ_256K;
+
+	return bbu_flash(fip_data, SZ_512K);
+}
+
+int stm32mp_bbu_nor_fip_register(const char *name,
+				 const char *devicefile,
+				 unsigned long flags)
+{
+	struct stm32mp_bbu_handler *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->handler.flags = flags;
+	priv->handler.devicefile = devicefile;
+	priv->handler.name = name;
+	priv->handler.handler = stm32mp_bbu_nor_fip_handler;
+
+	ret = bbu_register_handler(&priv->handler);
+	if (ret)
+		free(priv);
+
+	return ret;
+}
diff --git a/include/mach/stm32mp/bbu.h b/include/mach/stm32mp/bbu.h
index 233bcf6478..87b29f1527 100644
--- a/include/mach/stm32mp/bbu.h
+++ b/include/mach/stm32mp/bbu.h
@@ -10,6 +10,9 @@
 int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
 				 unsigned long flags);
 
+int stm32mp_bbu_nor_fip_register(const char *name, const char *devicefile,
+				 unsigned long flags);
+
 #else
 
 static inline int stm32mp_bbu_mmc_fip_register(const char *name,
@@ -19,6 +22,13 @@ static inline int stm32mp_bbu_mmc_fip_register(const char *name,
 	return -ENOSYS;
 }
 
+static inline int stm32mp_bbu_nor_fip_register(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 #endif /* MACH_STM32MP_BBU_H_ */

-- 
2.43.0




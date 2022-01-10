Delivery-date: Mon, 10 Jan 2022 23:15:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wW-00GQ0H-W0
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 23:15:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n72wQ-0005Nn-T3
	for lore@pengutronix.de; Mon, 10 Jan 2022 23:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCCX8LaHyOG01gAqTZoPFsMOxQJ2R2xWyQ/QwrAil9w=; b=BHatBgi7SxS8M1
	GNH9uZ/7Uy/8vhzoZ6qAmo+NRKJUM2YfvjXNVPF+Zo+CXK4ExyGn4CjUQn7oZYk2D4Gy01JWKXVk/
	IC9geO/c1TyG+mZwQLGPzmzgbMcgiDo3JdSnPKjJam2HTSYnSxzWHp5w5EYkT7uxIBoMyIMGFhlNi
	LcfjHDfF36HLFlREGt0TYIPVY3fv7H7OPJFnn88ojzO8ryWHpyiHdSHVCU5ppk7OtywqFYBLiHj7G
	VDpwjaTTjknDeasin2FiXNjEd88zyIOuB7MzmtnDsWZd375rhdvYrBCD34VWWmki8jyqLQeRmncag
	yIzD01bKBbh5Cjb544tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n72v4-00Db1q-1R; Mon, 10 Jan 2022 22:13:38 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n72um-00DasO-Ht
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 22:13:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 4AD8A626C3
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1641852795;
 bh=aVOckiAPGTtAJN7n6Y1GMpN3x7Yry0L4wMj1KuNzVYo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Cufxv/gdNLOl5saQzAAXSzFV6BjGt9FkFII9dDz+uwarJpLDsYeGBCgXc2wx3NQs+
 miYnt/IVG96bJ8M4/ClHQP9Aii8KT759kfl64wrxiMV4ZUrEfaLdFbU1wl2XVHsmWs
 tmlFL7fMD0pjh9TqhEkhbivV1DLSbQXEdaUnMHwk=
Received: from fx304 (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 04720626AE
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:15 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <10051.61dcaf7a.5c962.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx304.security-mail.net (Postfix) with ESMTPS id 8DA68626A6
 for <barebox@lists.infradead.org>; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 3F5C427E03DE;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2785327E03F5;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2785327E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1641852794;
 bh=KIdNBjevTFQfwLgvSmMg/jPjV3skmr5d+d+fuj3Xzlc=;
 h=From:To:Date:Message-Id;
 b=p2eCAJfTIPMADL6uDwH/XQokGcTA3WMk2mbDrBq+ktU2zWIEcC49SRY2Zt9APIfw5
 /6O2nQEhtcZcvto11LWSEkuYVVwuNYPICka1ep7L/mtuCe1ca48vDzOjaBjwEw0RjL
 JilcUGxreMx5KM3rmnPKiFhg126OzmYC53QXjqk0=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id i34Z8LBnRK8r; Mon, 10 Jan 2022 23:13:14 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 09A4C27E03DE;
 Mon, 10 Jan 2022 23:13:14 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 10 Jan 2022 23:12:51 +0100
Message-Id: <20220110221255.5003-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220110221255.5003-1-jmaselbas@kalray.eu>
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_141320_934928_21E0C76B 
X-CRM114-Status: GOOD (  10.06  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] filetype: Add QOI format image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QOI image format is a "Quite OK" image format, it's simplicity is it's
strength and could be a good replacement of bmp, maybe even for png.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8ffcd6adcd..e5245668e2 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -45,6 +45,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_mbr] = { "MBR sector", "mbr" },
 	[filetype_bmp] = { "BMP image", "bmp" },
 	[filetype_png] = { "PNG image", "png" },
+	[filetype_qoi] = { "QOI image", "qoi" },
 	[filetype_ext] = { "EXT filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_ubifs] = { "UBIFS image", "ubifs" },
@@ -300,6 +301,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_aimage;
 	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
 		return filetype_png;
+	if (strncmp(buf8, "qoif", 4) == 0)
+		return filetype_qoi;
 	if (is_barebox_mips_head(_buf))
 		return filetype_mips_barebox;
 	if (buf[0] == be32_to_cpu(0x534F4659))
diff --git a/include/filetype.h b/include/filetype.h
index 2640847e1f..8bc179ac08 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -28,6 +28,7 @@ enum filetype {
 	filetype_mbr,
 	filetype_bmp,
 	filetype_png,
+	filetype_qoi,
 	filetype_ext,
 	filetype_gpt,
 	filetype_ubifs,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


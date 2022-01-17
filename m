Delivery-date: Tue, 18 Jan 2022 00:04:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2y-0051JA-Sp
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:04:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b2x-00011v-Cs
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:04:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yaqnfp1xsZFtsW8BW6BQVFzQB2kH2pvai69dZWhVE4U=; b=PhkILa6t7cMIK4
	e5VtyqjIR7uqkAnixKq/BJn5b8eyPhmOz/+xx96lxxOcCjR58A8H90OuuOqIp/C4cLNiqreHZ5/9U
	TAwpFlw8ufvp2TkVeAfGMdLYOKhoFvmNSpx0eC53xF9tIKtjT7JY3r2y18s6CXuVg2VJT12bRTYhB
	axpo/kJcV+2HUwKMyc2nqhEEsTvxgNfqC/3yfEPEM01tM/k0lzBR9BzJHS2C1u2hezLGz4Lmx+lsr
	VDeajD2gzfbevWGYRNdYL9uH8dNg8eX3qCuduVRR+NYgpGUxVscupgEveWCLQt5uEQzJtcj9gfLdM
	hvTZR8iVopd/kqqd5gsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9b1f-00GXUC-9c; Mon, 17 Jan 2022 23:02:59 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9b1W-00GXRm-7z
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:02:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id B12401B7B29F
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642460560;
 bh=TFr0/6O863MhD+7jhTMJ6/K+fYMuU41HPmfBwRdizNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=L0ND5AI6qbmnJ2OZwaU92wisUy3XNEDxa8hzCsmnNOjx+4P5BwUYNkie7oGzKiR7S
 MYs9myOsThiru4uvSgN2bOsn1ZnV10fSVMkZ6PgoxcqvNG062RuOxsnGD9aA9Ksrp1
 sHTRymloIjZRyaLSqWCZKgdu58OlW18gPhHFIkp0=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 696DA1B7B24E
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <281c.61e5f590.e387.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 0F06F1B7B293
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id E688B27E03AE;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id CE44F27E03E1;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu CE44F27E03E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642460559;
 bh=yRmmhG4ZJKtlvyzO4kj1/GfJ2iXD3Q1sdgwiKouJ4TA=;
 h=From:To:Date:Message-Id;
 b=M4CdaUtuSDPdf9DmMZTnApraZ/pdzkvjTbM8ZkJZPNrZW1IP5JrjZGKYTAJw8uZOM
 SF9nRYDxsMGoFA+ZRT+JELGgLSuzQpoZ71BzG1ocYe+3de9Yv2eQH6asFYHqd2ehi8
 00tZlkunc0+lc/CPL39adR8kACPa3Eq92fayjIBA=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Vx5gwq3QL_xn; Tue, 18 Jan 2022 00:02:39 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B021527E03AE;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 18 Jan 2022 00:02:31 +0100
Message-Id: <20220117230235.13549-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117230235.13549-1-jmaselbas@kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_150250_919523_C24ECF4E 
X-CRM114-Status: UNSURE (   9.92  )
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
MIME-Version: 1.0
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
Subject: [PATCH v2 1/5] filetype: Add QOI format image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QOI image format is a "Quite OK" image format, it's simplicity is it's
strengh and could be a good replacement of bmp, maybe even for png.

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


Delivery-date: Tue, 30 Mar 2021 08:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EJ-0002wz-J4
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EI-0001St-Ty
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qx1EsSZn6EHqeXV1WwCqqY/eqfHUAqEcOKfloEyrq9M=; b=BhA1YaueNRhDYgfXETP3Kdyns
	gygyCq7oXge+UiebEGKF0JOp4ifpW4dNa7VUleOFezZKsARytmv3qnCDLL5G9ELRMAICrNU40/tZB
	sitRKOy1H/XYgqqSRoHFNfHdobAj8E4UcTiyA29ipkHW5eC9x0j/qoPyQVxqCpSkueItTp8SkZUav
	mzYmtzuj8J62KjzgHL1nmnQfhbaKBJStkGrhrER0hQelgXXWnrMwVX/qxyEEJ4xFERqNWCl8h9c+e
	nkRDORAqBUlpa/QBbJmzwuS38QnX/GwX/5RZKHz22KqVcZKNBuVqwOXhQboZv14bH7Ty5o+zhO2Mm
	jMwkWFB0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8DH-002rkL-B6; Tue, 30 Mar 2021 06:50:55 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8D8-002ria-3W
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617087041; x=1619679041;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FfSeEEfIrBJTh5DuLY2I3GVg53tXxrsUCMo1cPOSSz4=;
 b=gi3c2NuShw4zQZfCriuby3WUOzAItPjN6izBSVu74HnCsMFXvkiPsr1atdclMINa
 C4AQ8QpM+jJ4CtXOm1h2B+JE/F3aXM2D95+9qvgQCeBG3gsWVB+9y6VUYH5JroZL
 Rov7+icmDvciXoAYJmy4AlfxEr8U2Ohn143/dBajj88=;
X-AuditID: c39127d2-85cb770000001c91-e7-6062ca4160a1
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 7F.23.07313.14AC2606;
 Tue, 30 Mar 2021 08:50:41 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021033008504100-261343 ;
 Tue, 30 Mar 2021 08:50:41 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 08:50:39 +0200
Message-Id: <20210330065040.5030-3-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210330065040.5030-1-s.riedmueller@phytec.de>
References: <20210330065040.5030-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 30.03.2021 08:50:41,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 08:50:41
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpiluLIzCtJLcpLzFFi42JZI8DApet4KinB4NYnPosTi/uZHRg9Ni+p
 D2CM4rJJSc3JLEst0rdL4Mq4e+MDU8EM/orXU9uZGhhv8HQxcnJICJhI/Fmwka2LkYtDSGAb
 o8S7TeeYIZxrjBKtMzcxglSxCRhJLJjWyARiiwjIS8zd38YKYgsLWEu03e1jAbFZBFQlVs54
 AGbzAsXnbFrNDrFBXmLmpe9gNqeAjcTuDdvYQGwhoJo/h/YzQtQLSpyc+YQFZLGEwBVGiS2H
 HkM1C0mcXnyWGcRmFtCWWLbwNfMERv5ZSHpmIUktYGRaxSiUm5mcnVqUma1XkFFZkpqsl5K6
 iREYTocnql/awdg3x+MQIxMH4yFGCQ5mJRFe4QOJCUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 N/CWhAkJpCeWpGanphakFsFkmTg4pRoY0x4vaRLYxZslmb9eaqH45iOVTbp7+CXbU1hPx9cK
 /pqr/LkrgF2N+/By1q1evUEHyuTqX682/xRU4rF9ChO7/Vl3F5NNR/mjpB9XhMi5pjFZsfJM
 vHhmd5CK8MKXNpZnv6qvNF3/8qeoREnZgue5PdeiDryNsWzXeb2rR66f787UW5tYD7MpsRRn
 JBpqMRcVJwIAX5wychUCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075046_364341_55A71220 
X-CRM114-Status: GOOD (  12.19  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] mtd: nand_msx: Implement ooblayout ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The default ooblayout ops do not work on nand_mxs devices and can lead
to an unresponsible system when doing a 'nand -i' on that device.

Thus implement the ooblayout ops for the nand_mxs driver separately.
Since writing the oob area is not supported simply return the whole oob
area as ecc.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/mtd/nand/nand_mxs.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 96ae71364efb..285ae3c121b6 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -269,6 +269,33 @@ static void mxs_nand_return_dma_descs(struct mxs_nand_info *info)
 	info->desc_index = 0;
 }
 
+/*
+ * We don't support writing the oob area so simply return the whole oob
+ * as ECC.
+ */
+static int mxs_nand_ooblayout_ecc(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	if (section)
+		return -ERANGE;
+
+	oobregion->offset = 0;
+	oobregion->length = mtd->oobsize;
+
+	return 0;
+}
+
+static int mxs_nand_ooblayout_free(struct mtd_info *mtd, int section,
+				   struct mtd_oob_region *oobregion)
+{
+	return -ERANGE;
+}
+
+static const struct mtd_ooblayout_ops mxs_nand_ooblayout_ops = {
+	.ecc = mxs_nand_ooblayout_ecc,
+	.free = mxs_nand_ooblayout_free,
+};
+
 static uint32_t mxs_nand_ecc_chunk_cnt(uint32_t page_data_size)
 {
 	return page_data_size / MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
@@ -2218,6 +2245,8 @@ static int mxs_nand_probe(struct device_d *dev)
 	if (err)
 		goto err2;
 
+	mtd_set_ooblayout(mtd, &mxs_nand_ooblayout_ops);
+
 	mxs_nand_scan_bbt(chip);
 
 	err = add_mtd_nand_device(mtd, "nand");
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


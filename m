Delivery-date: Thu, 29 Jun 2023 21:59:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExnF-008kgp-0v
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 21:59:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExnB-0008LL-HF
	for lore@pengutronix.de; Thu, 29 Jun 2023 21:59:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T660VWveR8jhh2iIRTqpv3t59TpIAlBsRq0ZCpcyswo=; b=QOT66BCHYgMDXx
	C5RULSTJmGjFTrLNIzTjR/MX1tv8UaIf6UEe0edcR/noNYlCZkqZn99kXYPBKIi7Hn7BmfLJn/cRO
	5ofWCpOnVnnSxFa4nv70scjbJzcT1kSxijEjgAJijOPgNAPm8Q06DlK7GMEee8H2rSCJc3MbKMtIq
	WUD+y1DRK9+WvtZO9NkKyxWBaH+9iMkLxf+9hT12ADJFsMk4rR/u2lzCy2vpuxa4N8WyldZViuVTc
	O2hZ9efYdymrRTVpSlmSSdtkRj7jZ2jK7zds+3DJ+k4m/qg5aOtlXiHcEr5BGDdtyI9aPPrnOXoAP
	6ivDGoumUBktceoIeA0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qExlr-0020ta-0e;
	Thu, 29 Jun 2023 19:57:39 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qExll-0020rO-2w
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 19:57:35 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b6a0d91e80so17989011fa.3
        for <barebox@lists.infradead.org>; Thu, 29 Jun 2023 12:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688068652; x=1690660652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T660VWveR8jhh2iIRTqpv3t59TpIAlBsRq0ZCpcyswo=;
        b=bHgXSoYiv5ZFFJtcxCM16OY8ppujLmJWLZBbhcAcD1e94oXcGpHqkN1bLIWbyraaJI
         Ryi3TpOfq58O8oL9XCWj5Th0GFjXgtQvPly3+pvnh22GZ8fJbhNH3VYM+ANdrTCrgA48
         /ubCQknIjNZQiErKZstgRGrzvCyeH5SVBwh9yYWc7Ts32/yaa6zeMpBdBzPOo3Ggy0K9
         2QZkmRMUAg8OVRb1wu62V9FSw0yisH0bFnatp7hACV7YkRf0IkBCv3gy9JQhcnm61nA4
         iTt1nhG1RaHbM0B/S3SrHq6Oy19Hjg5VHa1YRlwq/QpVuMRwy/W1D2RmlCj0Tk8ZaN4K
         5/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688068652; x=1690660652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T660VWveR8jhh2iIRTqpv3t59TpIAlBsRq0ZCpcyswo=;
        b=ZexNcFqV9z6oZJNkjN7gt0iUHQ3nMGwThg4RQLopb48B3C2pQ0NyOUjNZyxKdpRaQ0
         pS6rGT0yhXBlpEdo233gq5MN70R2ciXRE0R65lEfesUk5MHbTl9t1WmI30G5YyRHS/cY
         8oN7+O5Fu/UsxIqC2QjzZgkE+Yymw+8x9ul7Je02odL3SKcuMlaAlswgDXryLWoH4cC6
         HsmZBVkDAP2IShAho+xoPCYoVesy+1MuVH3p5/t0LKYRzt3YFl5oq8g7hTxOfbX4JlTY
         FxGepALLuT6BXthmHRpJYrluuXQR5/KkEw3ZW6u93Q1F2bfLyUlj28UcJk+Ua/VhAgog
         mRaw==
X-Gm-Message-State: ABy/qLazO2hI54lJF7zLxp9wbcs1R/8brlGo1LDtNvFZGz1DxwWSRtEn
	/9mM1gw+EyqDT9u3oLQ1uMHCF/L2hqaDqA==
X-Google-Smtp-Source: APBJJlEWRZ1eY4JNszoioiXt6C+e5lh4UST6Yry//j++IVnbCxUP4qmf5yONhBazLBRQbUgqdJQglw==
X-Received: by 2002:a05:6512:3146:b0:4fb:8b78:4a93 with SMTP id s6-20020a056512314600b004fb8b784a93mr634748lfi.7.1688068651733;
        Thu, 29 Jun 2023 12:57:31 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.210])
        by smtp.gmail.com with ESMTPSA id m7-20020ac24287000000b004fb7b2e3ccasm1024123lfh.141.2023.06.29.12.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 12:57:31 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 29 Jun 2023 22:52:58 +0300
Message-ID: <20230629195718.14416-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230629195718.14416-1-denorl2009@gmail.com>
References: <20230629195718.14416-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_125733_949574_C7CD8233 
X-CRM114-Status: GOOD (  22.10  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usb: make sure dma buffers are properly allocated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When we are doing dma_map/unmap we will end up clearing caches. As we
can only do that with the granularity of a cache line, we must ensure
that the corresponding buffers are properly aligned, as otherwise we may
accidentally overwrite some data that happens to reside in the same
cache line. This is exactly what dma_alloc() is for, so use that for
buffers which we are going to map for dma.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/usb/core/usb.c          | 16 ++++---
 drivers/usb/storage/transport.c | 74 +++++++++++++++++++--------------
 drivers/usb/storage/usb.c       | 17 ++++----
 3 files changed, 61 insertions(+), 46 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 178ddbbca5..62d9f11146 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -964,15 +964,15 @@ static int usb_string_sub(struct usb_device *dev, unsigned int langid,
  */
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 {
-	unsigned char mybuf[USB_BUFSIZ];
 	unsigned char *tbuf;
-	int err;
+	int err = 0;
 	unsigned int u, idx;
 
 	if (size <= 0 || !buf || !index)
 		return -1;
+
+	tbuf = dma_alloc(USB_BUFSIZ);
 	buf[0] = 0;
-	tbuf = &mybuf[0];
 
 	/* get langid for strings if it's not yet known */
 	if (!dev->have_langid) {
@@ -980,10 +980,12 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 		if (err < 0) {
 			dev_dbg(&dev->dev, "error getting string descriptor 0 " \
 				   "(error=%lx)\n", dev->status);
-			return -1;
+			err = -1;
+			goto fail;
 		} else if (tbuf[0] < 4) {
 			pr_debug("string descriptor 0 too short\n");
-			return -1;
+			err = -1;
+			goto fail;
 		} else {
 			dev->have_langid = -1;
 			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
@@ -996,7 +998,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 
 	err = usb_string_sub(dev, dev->string_langid, index, tbuf);
 	if (err < 0)
-		return err;
+		goto fail;
 
 	size--;		/* leave room for trailing NULL char in output buffer */
 	for (idx = 0, u = 2; u < err; u += 2) {
@@ -1009,6 +1011,8 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	}
 	buf[idx] = 0;
 	err = idx;
+fail:
+	dma_free(tbuf);
 	return err;
 }
 
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index ad347dfce5..be3b18dc66 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -86,39 +86,44 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 {
 	struct us_data *us = usb_blkdev->us;
 	struct device *dev = &us->pusb_dev->dev;
-	struct bulk_cb_wrap cbw;
-	struct bulk_cs_wrap csw;
+	struct bulk_cb_wrap *cbw;
+	struct bulk_cs_wrap *csw;
 	int actlen, data_actlen;
 	int result;
 	unsigned int residue;
 	unsigned int pipein = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
 	unsigned int pipeout = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
 	int dir_in = US_DIRECTION(cmd[0]);
+	int ret = 0;
+
+	cbw = dma_alloc(sizeof(*cbw));
+	csw = dma_alloc(sizeof(*csw));
 
 	/* set up the command wrapper */
-	cbw.Signature = cpu_to_le32(US_BULK_CB_SIGN);
-	cbw.DataTransferLength = cpu_to_le32(datalen);
-	cbw.Flags = (dir_in ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT);
-	cbw.Tag = ++cbw_tag;
-	cbw.Lun = usb_blkdev->lun;
-	cbw.Length = cmdlen;
+	cbw->Signature = cpu_to_le32(US_BULK_CB_SIGN);
+	cbw->DataTransferLength = cpu_to_le32(datalen);
+	cbw->Flags = (dir_in ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT);
+	cbw->Tag = ++cbw_tag;
+	cbw->Lun = usb_blkdev->lun;
+	cbw->Length = cmdlen;
 
 	/* copy the command payload */
-	memset(cbw.CDB, 0, sizeof(cbw.CDB));
-	memcpy(cbw.CDB, cmd, cbw.Length);
+	memset(cbw->CDB, 0, sizeof(cbw->CDB));
+	memcpy(cbw->CDB, cmd, cbw->Length);
 
 	/* send it to out endpoint */
 	dev_dbg(dev, "Bulk Command S 0x%x T 0x%x L %d F %d Trg %d LUN %d CL %d\n",
-		le32_to_cpu(cbw.Signature), cbw.Tag,
-		le32_to_cpu(cbw.DataTransferLength), cbw.Flags,
-		(cbw.Lun >> 4), (cbw.Lun & 0x0F),
-		cbw.Length);
-	result = usb_bulk_msg(us->pusb_dev, pipeout, &cbw, US_BULK_CB_WRAP_LEN,
+		le32_to_cpu(cbw->Signature), cbw->Tag,
+		le32_to_cpu(cbw->DataTransferLength), cbw->Flags,
+		(cbw->Lun >> 4), (cbw->Lun & 0x0F),
+		cbw->Length);
+	result = usb_bulk_msg(us->pusb_dev, pipeout, cbw, US_BULK_CB_WRAP_LEN,
 			      &actlen, USB_BULK_TO);
 	dev_dbg(dev, "Bulk command transfer result=%d\n", result);
 	if (result < 0) {
 		usb_stor_Bulk_reset(us);
-		return USB_STOR_TRANSPORT_FAILED;
+		ret = USB_STOR_TRANSPORT_FAILED;
+		goto fail;
 	}
 
 	/* DATA STAGE */
@@ -141,13 +146,14 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 		if (result < 0) {
 			dev_dbg(dev, "Device status: %lx\n", us->pusb_dev->status);
 			usb_stor_Bulk_reset(us);
-			return USB_STOR_TRANSPORT_FAILED;
+			ret = USB_STOR_TRANSPORT_FAILED;
+			goto fail;
 		}
 	}
 
 	/* STATUS phase + error handling */
 	dev_dbg(dev, "Attempting to get CSW...\n");
-	result = usb_bulk_msg(us->pusb_dev, pipein, &csw, US_BULK_CS_WRAP_LEN,
+	result = usb_bulk_msg(us->pusb_dev, pipein, csw, US_BULK_CS_WRAP_LEN,
 	                      &actlen, USB_BULK_TO);
 
 	/* did the endpoint stall? */
@@ -158,7 +164,7 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 		if (result >= 0) {
 			dev_dbg(dev, "Attempting to get CSW...\n");
 			result = usb_bulk_msg(us->pusb_dev, pipein,
-			                      &csw, US_BULK_CS_WRAP_LEN,
+			                      csw, US_BULK_CS_WRAP_LEN,
 			                      &actlen, USB_BULK_TO);
 		}
 	}
@@ -166,35 +172,39 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 	if (result < 0) {
 		dev_dbg(dev, "Device status: %lx\n", us->pusb_dev->status);
 		usb_stor_Bulk_reset(us);
-		return USB_STOR_TRANSPORT_FAILED;
+		ret = USB_STOR_TRANSPORT_FAILED;
+		goto fail;
 	}
 
 	/* check bulk status */
-	residue = le32_to_cpu(csw.Residue);
+	residue = le32_to_cpu(csw->Residue);
 	dev_dbg(dev, "Bulk Status S 0x%x T 0x%x R %u Stat 0x%x\n",
-		le32_to_cpu(csw.Signature), csw.Tag, residue, csw.Status);
-	if (csw.Signature != cpu_to_le32(US_BULK_CS_SIGN)) {
+		le32_to_cpu(csw->Signature), csw->Tag, residue, csw->Status);
+	if (csw->Signature != cpu_to_le32(US_BULK_CS_SIGN)) {
 		dev_dbg(dev, "Bad CSW signature\n");
 		usb_stor_Bulk_reset(us);
-		return USB_STOR_TRANSPORT_FAILED;
-	} else if (csw.Tag != cbw_tag) {
+		ret = USB_STOR_TRANSPORT_FAILED;
+	} else if (csw->Tag != cbw_tag) {
 		dev_dbg(dev, "Mismatching tag\n");
 		usb_stor_Bulk_reset(us);
-		return USB_STOR_TRANSPORT_FAILED;
-	} else if (csw.Status >= US_BULK_STAT_PHASE) {
+		ret = USB_STOR_TRANSPORT_FAILED;
+	} else if (csw->Status >= US_BULK_STAT_PHASE) {
 		dev_dbg(dev, "Status >= phase\n");
 		usb_stor_Bulk_reset(us);
-		return USB_STOR_TRANSPORT_ERROR;
+		ret = USB_STOR_TRANSPORT_ERROR;
 	} else if (residue > datalen) {
 		dev_dbg(dev, "residue (%uB) > req data (%uB)\n",
 		          residue, datalen);
-		return USB_STOR_TRANSPORT_FAILED;
-	} else if (csw.Status == US_BULK_STAT_FAIL) {
+		ret = USB_STOR_TRANSPORT_FAILED;
+	} else if (csw->Status == US_BULK_STAT_FAIL) {
 		dev_dbg(dev, "FAILED\n");
-		return USB_STOR_TRANSPORT_FAILED;
+		ret = USB_STOR_TRANSPORT_FAILED;
 	}
 
-	return 0;
+fail:
+	dma_free(cbw);
+	dma_free(csw);
+	return ret;
 }
 
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 6cdcc348e4..f281e0186d 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <init.h>
 #include <malloc.h>
+#include <dma.h>
 #include <errno.h>
 #include <scsi.h>
 #include <linux/usb/usb.h>
@@ -33,7 +34,7 @@ static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &us->pusb_dev->dev;
 	u8 cmd[6];
 	const u8 datalen = 18;
-	u8 *data = xzalloc(datalen);
+	u8 *data = dma_alloc(datalen);
 
 	dev_dbg(dev, "SCSI_REQ_SENSE\n");
 
@@ -44,7 +45,7 @@ static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 	dev_dbg(dev, "Request Sense returned %02X %02X %02X\n",
 		data[2], data[12], data[13]);
 
-	free(data);
+	dma_free(data);
 
 	return 0;
 }
@@ -104,7 +105,7 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	int ret;
 	u8 cmd[6];
 	const u16 datalen = 36;
-	u8 *data = xzalloc(datalen);
+	u8 *data = dma_alloc(datalen);
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = SCSI_INQUIRY;
@@ -126,7 +127,7 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	// TODO:  process and store device info
 
 exit:
-	free(data);
+	dma_free(data);
 	return ret;
 }
 
@@ -154,7 +155,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u8 datalen = 32;
-	u8 *data = xzalloc(datalen);
+	u8 *data = dma_alloc(datalen);
 	int ret;
 	sector_t lba;
 	unsigned sector_size;
@@ -190,7 +191,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 
 	ret = sector_size;
 fail:
-	free(data);
+	dma_free(data);
 	return ret;
 }
 
@@ -199,7 +200,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u32 datalen = 8;
-	__be32 *data = xzalloc(datalen);
+	__be32 *data = dma_alloc(datalen);
 	int ret;
 	sector_t lba;
 	unsigned sector_size;
@@ -229,7 +230,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 
 	ret = SECTOR_SIZE;
 fail:
-	free(data);
+	dma_free(data);
 	return ret;
 }
 
-- 
2.41.0




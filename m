Delivery-date: Thu, 29 Jun 2023 21:58:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExn9-008kfn-8E
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 21:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExn6-0008Kd-Gp
	for lore@pengutronix.de; Thu, 29 Jun 2023 21:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtFgOZLPeWXNWqTGtR9dXq+hQNKx2NzBZ8P130+FTpE=; b=tQDbZguPpuH34T
	CeIU9Cl4WmSaQX38koOBxFVWKA2DUJJQ17x84LRxEUC40xfQ7E9Y+uOH3IEMZ2upvlERtqHFXldYv
	kFGg4sLa5ypAFwdPpfsulTUaT6ZBdrhUG5/JGMUEDgGwPTXlTEqpLcfb1XljO9KkZS2eRJOA+CHsw
	bBrKwQpojieZlN7Y/HHxv6qq75rO2QUCnnHFJ7KvOjCwyBXkDw1zcNqBbblLAPxVxIEFa9/0XJ/M+
	WJRjOEiNnitCUKI04XKFyYfbBcEOUXeUVUKpGQRtNoAFAy6MdOppBOsYTJ2MNrp/YbbWaZ6bVD7og
	2yPPLNhWD/bMj3t4Yhaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qExlo-0020t5-1h;
	Thu, 29 Jun 2023 19:57:36 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qExll-0020r9-12
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 19:57:34 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fb9fd28025so1029771e87.2
        for <barebox@lists.infradead.org>; Thu, 29 Jun 2023 12:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688068651; x=1690660651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtFgOZLPeWXNWqTGtR9dXq+hQNKx2NzBZ8P130+FTpE=;
        b=RAyBqtt6XZsf8RzEpczVoxa9rqnKvaj59Ty13ap1fNPMf2WsrhYvFpwiMtKsz+RAfO
         I9FF7wLLte4ExRza1if3i3oR6lwRZR38QVEDUChG8Iz/3kco+Q279YYeFa52dwQSGzaA
         D05t0BQm4+yv3MFw58bkYjGoSaGnXqJuNe0ACy+/Nu6v1gQMmAB60GVkP79dQrcq6W8p
         Xhyob4s3EwEBU3+J8ZIJkLLWs2P8sZ47QYM5aZo9hLEpVq7BnkEEu2C4nXc/FQZe8uFS
         uTapQnCoAi0TpLV+YbxjwXjZNZnZRTYhW5rdcO0b3Z4Kbvg7vKM+bnIp9xeSnoHRz3w1
         vn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688068651; x=1690660651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtFgOZLPeWXNWqTGtR9dXq+hQNKx2NzBZ8P130+FTpE=;
        b=D/UkAnULrdkmjKjTT7gduDBNQu3Y8pUUruAcJ+RW5HiPqFnkqpWoC1aSTS33lgJDLP
         T5dkVr29OTAemndZ7sQDvgw9e65+ZMayahxLEmmQIkNEQFbp78gBVGEXzCfUW3JQ/BQg
         Ziblils7kxzcpki15KkpyGWDM3suMR/WoTm4MwVTezWyx7W4ShPbtEKWwpchPqVmyErA
         SsMu8rmD1Ark3xoOOl+Q0HBoKJ9ovI4Z43VIUjEQNchkCfsxZOJAU1TecEQeOyAX25eH
         B3/VsKDMhMH5rAUs5cs+PCaX+3wsfiPxMX+QVtnwgFZwwPHby4s2RQNVl5IDBgyK1nJL
         wYHg==
X-Gm-Message-State: ABy/qLYtHy1lYZ4deFQF26NKsCI2dX6L+IotmC+6SQeS78aAEism+cbX
	Glp5Ik+u7Qjvv91xNOUCEWxPtBpGhQl6mA==
X-Google-Smtp-Source: APBJJlEIlqpRvDpnCzLf7A2TmGbVpsDLgZjUEApuyR3JLQBJDFP97xRUhTjTCDrRgCPT8B9qkq+crA==
X-Received: by 2002:a05:6512:556:b0:4fb:748f:604e with SMTP id h22-20020a056512055600b004fb748f604emr683200lfl.36.1688068650789;
        Thu, 29 Jun 2023 12:57:30 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.210])
        by smtp.gmail.com with ESMTPSA id m7-20020ac24287000000b004fb7b2e3ccasm1024123lfh.141.2023.06.29.12.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 12:57:30 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 29 Jun 2023 22:52:57 +0300
Message-ID: <20230629195718.14416-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230629195718.14416-1-denorl2009@gmail.com>
References: <20230629195718.14416-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_125733_361136_9533BF63 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH 1/2] usb: storage: fix missing calls to free()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Memory allocated with xzalloc() was not actually being freed in a few
functions, resulting in memory leaks.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/usb/storage/usb.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index dda7131960..6cdcc348e4 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -169,7 +169,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 
 	if (ret < 0) {
 		dev_warn(dev, "Read Capacity(16) failed\n");
-		return ret;
+		goto fail;
 	}
 
 	/* Note this is logical, not physical sector size */
@@ -181,13 +181,17 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 
 	if ((data[12] & 1) == 1) {
 		dev_warn(dev, "Protection unsupported\n");
-		return -ENOTSUPP;
+		ret = -ENOTSUPP;
+		goto fail;
 	}
 
 	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
 	usb_blkdev->blk.num_blocks = lba + 1;
 
-	return sector_size;
+	ret = sector_size;
+fail:
+	free(data);
+	return ret;
 }
 
 static int read_capacity_10(struct us_blk_dev *usb_blkdev)
@@ -208,7 +212,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 
 	if (ret < 0) {
 		dev_warn(dev, "Read Capacity(10) failed\n");
-		return ret;
+		goto fail;
 	}
 
 	sector_size = be32_to_cpu(data[1]);
@@ -223,7 +227,10 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	usb_blkdev->blk.num_blocks = lba + 1;
 	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
 
-	return SECTOR_SIZE;
+	ret = SECTOR_SIZE;
+fail:
+	free(data);
+	return ret;
 }
 
 static int usb_stor_io_16(struct us_blk_dev *usb_blkdev, u8 opcode,
-- 
2.41.0




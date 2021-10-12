Delivery-date: Tue, 12 Oct 2021 03:56:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71M-0006Ls-Mo
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 03:56:00 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71L-0002Aw-Mo
	for lore@pengutronix.de; Tue, 12 Oct 2021 03:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpeUvOSx5fjL6qm9nXKZsgWAp+ZkGRjsDwVza0kUNfw=; b=kZakmnZgNp0Hxo
	xtDnYIu80M2vP0JPlCinN3QTZt1selaAOSEFKAc4jNtX5WPoLMK1ntx2ybArLSuKnQpQHluX/3XlY
	BOgzDPw1JwoNZ37aVWIcIGaOmjYtv2QYjTH8gHYvSnYuWF4wnvdoOsdxjyO1zs3L8A5IzqoTMjL4e
	ndu22d0nWEdSO5TE4oDFPEM9xKDMrQPZYj8r2Ozx1hAVHdXR+hxtZhwNi7cus7VGA+SmKNvlSmM6e
	ACgQReIm890EUfr1mrvqlx7Tmur7YzQGk5qBaopNSlMFBMZfnTqU3NwiAl5JJXnNW6m+CA7xczXjw
	QVhB4FbXiYcQEvb2pLyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma6zc-00BE3C-MR; Tue, 12 Oct 2021 01:54:12 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma6zW-00BE2F-UJ
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 01:54:08 +0000
Received: by mail-pl1-x629.google.com with SMTP id 21so6290193plo.13
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 18:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ruKtq6TKnZf+9DkhpiFyEykIjm/iMOCS0izPFhNYVok=;
 b=m7iHzYyE4SfnsG8Hu8Ibd8sDNnKQvVy3MUXNMkP7XwEsmChCMuqzJX94lM+5BBtUH2
 mu2BAhb451scE7ipaVnGVpVAJnKM/4niOL3Zva5drGRt1QmovZUrUAuM/tX3xyqkNOCl
 wQ2K2T1R8XVydh58jOc+L2878nyx4XXw9Is31wkUL1NPJVDsHyhPDtszuuloD0egWflL
 r3Ju6POPXj/HPKrEld0UapWHIc7Lp+CPGWqpTRU6BhgV36r4L5mTZJ63jrSlBsKkpLkj
 p/DNoDxqew0rZzJrQeUGe5YnyEKnrrHaDv2Q2bh88IV8c0/Ya3vQ15GHP5zXXpZLlRbT
 wjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ruKtq6TKnZf+9DkhpiFyEykIjm/iMOCS0izPFhNYVok=;
 b=o8q/WITE9mGeKYRFxC017yNmhj6hWo+B1hKBdLNUaKX9ipmdXmZ+V/vOPUYmaNGDg0
 nl2EgNIXx0mr2e3/d1RCwct/wrAARLAFaswPZub4MkDCFG5ZHc46i2iYEC/oik3gUEYn
 gzDUABm+JmS5bpdjfiWedb9ziW6FP277m8B3GG3LvMjmN0ZbFZCi9BUt56okObnnqyKO
 B89hByv3G7tibQzEOvKvHQ0Id/3L7reUjVr+J3uRKpx0hAiyHbVkcqQAztMTY+DkmWnc
 d/D1owtK78NVqp3Oe90j/2iHud8GcC3QViB9hTHq6EZaQXuljU3UiCIsAlhBqC7/RZS/
 gapQ==
X-Gm-Message-State: AOAM532fPQLBWJb0oPajmB1m6nkY0WqyLeELKTNH9WOZJG/13OTxZhYZ
 ZyLkRISSQjLIClVCExrbrIr9473UD4iu80jm
X-Google-Smtp-Source: ABdhPJw3cGeHYTnPPu7oZofX3pnRXbkfOHABpTIQX2p6xao7ofKO07N4SLslfYLmzyXeP7XeyVpm9A==
X-Received: by 2002:a17:903:41c9:b0:13e:e11e:cde7 with SMTP id
 u9-20020a17090341c900b0013ee11ecde7mr27609907ple.19.1634003645897; 
 Mon, 11 Oct 2021 18:54:05 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id 17sm9042509pfh.216.2021.10.11.18.54.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 18:54:05 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <Y.Bas@phytec.de>, Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 18:53:58 -0700
Message-Id: <20211012015359.933464-2-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_185406_997875_C0031403 
X-CRM114-Status: GOOD (  11.28  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] imx-bbu-nand-fcb: Save bootloader location into device
 parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When updating the FCB, save the location and size of the Barebox images
into parameters on the NAND device.  Since the location and padding is
calculated based on net NAND partition size, with an unknown number of
bad blocks, these values aren't known beforehard.  Saving them will
allow extracting or checksumming the Barebox image in NAND.

For example:
sha256sum /dev/nand0.barebox ${nand0.barebox.firmware1_addr}+${nand0.barebox.firmware1_size}
memcpy -s /dev/nand0.barebox -d /mnt/mmc0.0/imagedump ${nand0.barebox.firmware2_addr} 0 ${nand0.barebox.firmware2_size}

Find sum of Barebox image file with NUL padding to NAND page size (4kB
here) in Linux:
dd if=barebox-myboard.img ibs=4k conv=sync | sha256sum

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 common/imx-bbu-nand-fcb.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 7108a327a..76ac1d4f2 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -227,6 +227,15 @@ static uint32_t calc_chksum(void *buf, size_t size)
 	return ~chksum;
 }
 
+/* Set parameters on the device with the firmware location and size */
+static void set_dev_params(struct cdev *cdev, const struct fcb_block *fcb)
+{
+	dev_add_param_uint32_fixed(cdev->dev, "firmware1_addr", fcb->Firmware1_startingPage * fcb->PageDataSize, "0x%08x");
+	dev_add_param_uint32_fixed(cdev->dev, "firmware2_addr", fcb->Firmware2_startingPage * fcb->PageDataSize, "0x%08x");
+	dev_add_param_uint32_fixed(cdev->dev, "firmware1_size", fcb->PagesInFirmware1 * fcb->PageDataSize, "0x%08x");
+	dev_add_param_uint32_fixed(cdev->dev, "firmware2_size", fcb->PagesInFirmware2 * fcb->PageDataSize, "0x%08x");
+}
+
 static struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
 {
 	int i;
@@ -1363,6 +1372,8 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 			goto out;
 	}
 
+	set_dev_params(bcb_cdev, fcb);
+
 out:
 	free(fw);
 	free(fcb);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


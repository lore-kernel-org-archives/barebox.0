Delivery-date: Tue, 23 Jun 2026 16:28:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc26c-0091ol-0a
	for lore@lore.pengutronix.de;
	Tue, 23 Jun 2026 16:28:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wc26b-0002f8-Hy
	for lore@pengutronix.de; Tue, 23 Jun 2026 16:28:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l4dHbMZeemo/cyZ57MT3GPYg99MpEVL3rwgX/nmuH4o=; b=VmmRLr4pcYGwvpexAF3Aky1990
	OtzcA+anrd0oAl+VbVdoG1uK4JYKZzmZwaguIIguoyBHu/jzIGPwwBcyq6Yi4KVz7lvzxDL4KVOyj
	wZcPtkH2b8MJBhFvexsb16tlmS9JpZFQBcltgR53rNn91DOd8BOnGes9c3jJw1QOV/d//cDlLXuoL
	bjgf5MinyEjUuGRaTIl32wnfe7hVaA4f6cjZmSObWxwGkHBt6BGHAdr78nVWHpKZJJIP8cDU4tSbm
	x0FTHaibQUyVOXaaX8dKaZoh0GfIJO3pWdakdOu7EklbBLw10ezHDB6IdjxX7d9pz9Xnq/4MRYruw
	GlfKvDEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc25X-00000006RGT-3kdV;
	Tue, 23 Jun 2026 14:26:55 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc25V-00000006RFy-08Fs
	for barebox@lists.infradead.org;
	Tue, 23 Jun 2026 14:26:54 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-9157b949fc7so572234885a.3
        for <barebox@lists.infradead.org>; Tue, 23 Jun 2026 07:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782224812; x=1782829612; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l4dHbMZeemo/cyZ57MT3GPYg99MpEVL3rwgX/nmuH4o=;
        b=ZqBZ/Giv9dqGakHJFej762Oig++fuIBPuXWTpZOteQ7BGkAwm8/OtLnAiIukfj0wPg
         6gmuakwwiFum9RSF2oLEdSSPYd1Ft7FbDhQ3xIQKUxbn/EDugunP4lUaxvk+WHdf+SmM
         4oVkJui8BIAavpUY3dUFtBDLcPHCt0ps1HVdC9CJc40o2Na6OojImdjulzzK1W3Z9+YN
         0qZsGw2jRPA67PqnWWqBrOdPCylRO1X/ykqNJ+em4srRczjqU2nlfXoPfvHUlfbQmNsu
         jDz++GnoQMC7MIH71HkjApSHXzF/i4E+CT2F8Gf0tsW7o9gson95NpcS85cuosWiQDoD
         z0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782224812; x=1782829612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4dHbMZeemo/cyZ57MT3GPYg99MpEVL3rwgX/nmuH4o=;
        b=pCw/2RyvN9mkV/hye2bf/P2ynijKbGcq0rqlO/3lQcu0dGi2FwziV4YKiij/d7dQ18
         xQGJelxkhjBSAy76Jx8IQGru3g22b25whoCyHSu52FiX37dcBel0RPsYlRiBCVG8FlCm
         v0EjbwpIxyXiCvof1BEAiBs0beBQzf4M2dvpjuvHDAfMz1T7mzbNd9NcUL7r/diwsj7R
         Q7PNiksB551bxnuUEZPbEDFRt0N42EK+tHaAExL6z55V62Rboh37WVul/J8VXDLSnGaH
         TDDsPTGv1l0kvOLwBnCnGcxOcv+pAKkYbz3n1h1BPlng56Ct1hofehPWxJyYzhtmXKgd
         l6UA==
X-Gm-Message-State: AOJu0Yyz8KRITxH1GpT/UVQEYfvMjw0hQ6DhLOCrxGn+40pG20vXUODF
	ErY7CoRDFJVDc4HjOIIUztj8TeM76AEoiGiBN23ogVcNRZidUz5BceP7ZRDvNw==
X-Gm-Gg: AfdE7clR8CVEEpXJR5KItAEJ0GoRc1kGe38dqQg/b9kk+6vvh2g6B5DSp73jy2QhH96
	ZofVPe5xNJ/En99hTVVv8xbOabbxg46BE7O7VsiLWPMm/xv/JU7wKOJr322qJc95pL2VCwuOkgO
	5AT0yLPduBm1oC42DKIxBk2on9my4Yfj7LQhReefCirNpK0lqQEJoA/N5O2NTvWSgx2Z4S+z9xw
	lkYVAQDNXRo7if3/PD6l+Qjz5S5rJGzSRUYz/jKVXE6zHhAHhzsYUVtoWL0GMVDZozvnZGXYJcP
	eigQD5jtl2lWO8DSvSTfY6jL9ijPwCp4g1WSUeDAry2rDQEy4yYqK5r+M1h71VYw6RmrqJ2K8Kx
	SeQtxVlFj1ReII4hcRNxdDfPBIXpCaG5RNCakJRtw6Do5Sdo3a8QlKQc/pkx2QoYe4lwZqJwpaH
	m4vFc9THBUz/CA9bTjbGfOFFkNTrKRRYWMWzmKMCyOAWKzlfsIN/0NcKlEysAXFCg0SvSQdCcMt
	poUWh9P8JFLFeyKsMa9PdtnVQliniVAolqahLjVcntE+lMvS9Jgq5W1
X-Received: by 2002:a05:620a:1790:b0:915:d443:e6e1 with SMTP id af79cd13be357-921d29f75ebmr2334307085a.26.1782224811280;
        Tue, 23 Jun 2026 07:26:51 -0700 (PDT)
Received: from CNCMK0001D007E.ro-main.com ([142.169.217.114])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-926000c343bsm291813285a.28.2026.06.23.07.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:26:50 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Anis Chali <anis.chali@ro-main.com>
Date: Tue, 23 Jun 2026 10:26:46 -0400
Message-ID: <20260623142646.87173-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_072653_073696_8E91DD48 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: storage: make disk cdev name configurable via Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Anis Chali <anis.chali@ro-main.com>

Add USBDISK_NAME string option to allow customizing the USB storage
device name, defaulting to "disk" to preserve existing behaviour.

Signed-off-by: Anis Chali <anis.chali@ro-main.com>
---
 drivers/usb/storage/Kconfig | 5 +++++
 drivers/usb/storage/usb.c   | 6 +++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
index efca9874d5..90a62a9d24 100644
--- a/drivers/usb/storage/Kconfig
+++ b/drivers/usb/storage/Kconfig
@@ -2,3 +2,8 @@
 config USB_STORAGE
 	tristate "USB Mass Storage support"
 	select DISK
+
+config USBDISK_NAME
+	string "USB storage disk name"
+	depends on USB_STORAGE
+	default "disk"
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b3116dc6e6..b6944f531d 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -414,12 +414,12 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	if (result < 0)
 		goto BadDevice;
 
-	result = cdev_find_free_index("disk");
+	result = cdev_find_free_index(CONFIG_USBDISK_NAME);
 	if (result == -1)
 		pr_err("Cannot find a free number for the disk node\n");
-	dev_info(dev, "registering as disk%d\n", result);
+	dev_info(dev, "registering as %s%d\n", CONFIG_USBDISK_NAME, result);
 
-	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
+	pblk_dev->blk.cdev.name = basprintf("%s%d", CONFIG_USBDISK_NAME, result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	pblk_dev->blk.type = BLK_TYPE_USB;
 	pblk_dev->blk.removable = true;
-- 
2.54.0




Delivery-date: Fri, 21 Feb 2025 18:14:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWbt-005CBc-39
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 18:14:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlWbs-0006B1-HA
	for lore@pengutronix.de; Fri, 21 Feb 2025 18:14:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/Vcqxv7tVD57iVj17p+UQ14g3kGOCh6GzUVEcwKMxYk=; b=q+ribioQn0boN5racOHKjXdTBN
	cP5M6lFAY5lGMvVx2t9vigI5NjFyb4seZcFu4ApLJZOyIaFD2NREY0ViwDMdclWVm76+8SjFhiiT5
	CWCnK5pZsXxgZuqq+vx2y8dK+LNO05C87y28qQoVy1Y2tCIY9GuE6fBMW9v4RotfZ3wYy2dUIAwIQ
	gv2zNjmhAFgMcNe6BpplyQXUTMNeRo9J74pA9NmPGbDlO0x81NuySlDKWo2kApzsPlxoGulWp0zdL
	L3mqfMOT5jQhm3bNUunNdF3xQ2OXYcv9v1++Yk80o0+4H+vGdluyiN+opC0b12nCgRP5pkt4zmMB6
	B7E1UOVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWbP-00000006L8y-39go;
	Fri, 21 Feb 2025 17:14:15 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlWbN-00000006L7J-0qPw
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 17:14:14 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so16614185e9.3
        for <barebox@lists.infradead.org>; Fri, 21 Feb 2025 09:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740158051; x=1740762851; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Vcqxv7tVD57iVj17p+UQ14g3kGOCh6GzUVEcwKMxYk=;
        b=ja7cEtz2QH3YyrhNOZj933wwxej38qVK7vJMJc2L6GEXGMQVaZuHDfBstLKEeh9rM0
         ljdPBr3jZhvWiGPk2ma0d303bH4xjwnOxGXe9wa09SgxHFh4jOgEcpAEY+fD4MxHhY+W
         iWg5SIhuEd+239+J/VlrVlwLEtlWZhG+z0WnbmjakXwoUjeTydXZord6YmpYk3Ve/Y10
         pnT3834ZtPiI1geMyn1DJYhP11aMn1+Uaw7xxMTJPjahjIPeRGoT7BPh9JXkrHoYHMOA
         MjpJ7qwDdn88fvVyn8rKDYioQ5JuJVFxSLQkhZNos86wzlbmt/2JrRtsv4noOwZA9N3K
         6fdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740158051; x=1740762851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Vcqxv7tVD57iVj17p+UQ14g3kGOCh6GzUVEcwKMxYk=;
        b=RRnHP4Acw5rpHwjdAnxhz1e5jqYoFabGBlH/fg6kB64U3VWpDwB1nQYXf1zSL1BWgE
         uzo5i/gj+GmQVe9bjJEllXm/NL6U5ourMpQHtv4sxsqChcLEVCZlea0gOXdoMECIaDrY
         5lvECjKVmNhxlQ5i9padtrECCylrI2+00iCmIPDeTYuVYOOf+Fn3mH0UEXbFdULjsjuc
         aT+keIAC7KfIXn2i/u3XptE3b/vPp0JV5jjj9mvLR1MvWNqn7kaEUyb228x6sjNyc4o2
         XLa/MOgsQpalnGoT4z3dVUrXKr4s/hGqM5U4igGu7wOh2N/8weMvOY7vWu6Pl2TR8Fdf
         gEGg==
X-Gm-Message-State: AOJu0YzahLG99YV6C118/nyppg3dT6piPqA3VWLJwv8Q1a2kkTXAjYrW
	e8tpnMrmOSKHN/baJ/JoxiQBhFjzQUANenAHrmvib5+coyieS6fCJvYedg==
X-Gm-Gg: ASbGncs5NVwKoubqi+iFu6vCmXjkKi6UsJzeG90nu9kBLtn+F2b07QV+TDsvhSNP37W
	sWqfcoN7no8leTrCDrmagdjoB4FxoQ+ANuAuE45m2Buuqr4Q1aIfo6ncOphBks7YgcuidRWOk2k
	Ij3KTzKiNxfWQN0zwI1ZfsucZJwSxHDkQcSBk9Bo+0YwMbIDYGlHqHNX6w/g2s6mi+9URvT8onX
	RoAAch7CPkDzfGIMT9GaJH4cg18ygRroP2iiT0Qy2WBi7Tff6XIyfGz23wdpnDowi3o9c7YR0sH
	+zqNVn3vGsK234GOl8ApC2DacxEFfFTAAAb5sTUjYMGOK52GzZAVC5JKZt3q
X-Google-Smtp-Source: AGHT+IHqA3cHCIKCvQo31iKsA95l52ch7ehM0VX8Ao8cgGP4/SU1ihjBR1ct/xhUDtt04xZRhDjBzg==
X-Received: by 2002:adf:fa82:0:b0:38f:2f88:b034 with SMTP id ffacd0b85a97d-38f6f085dd5mr3057635f8f.42.1740158049705;
        Fri, 21 Feb 2025 09:14:09 -0800 (PST)
Received: from fedora.. (93-38-135-177.ip70.fastwebnet.it. [93.38.135.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f561bee3esm9240313f8f.21.2025.02.21.09.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 09:14:09 -0800 (PST)
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 21 Feb 2025 19:01:08 +0100
Message-ID: <20250221180109.14129-1-stefano.manni@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_091413_238570_7554EB84 
X-CRM114-Status: GOOD (  11.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device file was hardcoded to "nand0.barebox".
This patch harmonize the signature of

imx6_bbu_nand_register_handler()
imx7_bbu_nand_register_handler()
imx28_bbu_nand_register_handler()

with the other bbu register functions in order to take
the devicefile as parameter.

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 common/imx-bbu-nand-fcb.c | 23 ++++++++++++++++-------
 include/bbu.h             | 18 ++++++++++++------
 2 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index d0261140cf..0d17a7bf6a 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1219,6 +1219,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	int used = 0;
 	int fw_orig_len = 0;
 	int used_refresh = 0, unused_refresh = 0;
+	const char *devname = handler->devicefile;
 
 	if (data->image) {
 		filetype = file_detect_type(data->image, data->len);
@@ -1230,7 +1231,12 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 			return -EINVAL;
 	}
 
-	bcb_cdev = cdev_by_name(handler->devicefile);
+	/* Support both boot /dev/nand0.barebox and boot nand0.barebox */
+	devname += str_has_prefix(devname, "/dev/");
+
+	device_detect_by_name(devname);
+
+	bcb_cdev = cdev_by_name(devname);
 	if (!bcb_cdev) {
 		pr_err("%s: No FCB device!\n", __func__);
 		return -ENODEV;
@@ -1432,7 +1438,8 @@ static void imx6_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	fcb->MetadataBytes = 10;
 }
 
-int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
+int imx6_bbu_nand_register_handler(const char *name,
+		const char *devicefile, unsigned long flags)
 {
 	struct imx_nand_fcb_bbu_handler *imx_handler;
 	struct bbu_handler *handler;
@@ -1451,7 +1458,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	}
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = devicefile;
 	handler->name = name;
 	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
@@ -1526,7 +1533,8 @@ static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
 }
 
-int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
+int imx28_bbu_nand_register_handler(const char *name,
+		const char *devicefile, unsigned long flags)
 {
 	struct imx_nand_fcb_bbu_handler *imx_handler;
 	struct bbu_handler *handler;
@@ -1540,7 +1548,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_mxs_bootstream;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = devicefile;
 	handler->name = name;
 	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
@@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info *mtd, int block, struct fcb_block *fcb
 	return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
 }
 
-int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
+int imx7_bbu_nand_register_handler(const char *name
+	   const char *devicefile, unsigned long flags)
 {
 	struct imx_nand_fcb_bbu_handler *imx_handler;
 	struct bbu_handler *handler;
@@ -1612,7 +1621,7 @@ int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_arm_barebox;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = devicefile;
 	handler->name = name;
 	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
 	handler->handler = imx_bbu_nand_update;
diff --git a/include/bbu.h b/include/bbu.h
index 5105d2ac70..087d3ee827 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -98,19 +98,25 @@ static inline int bbu_mmcboot_register_handler(const char *name,
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
-int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
-int imx7_bbu_nand_register_handler(const char *name, unsigned long flags);
-int imx28_bbu_nand_register_handler(const char *name, unsigned long flags);
+int imx6_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
+int imx7_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
+int imx28_bbu_nand_register_handler(const char *name, const char *devicefile, unsigned long flags);
 #else
-static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
+static inline int imx6_bbu_nand_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
 {
 	return -ENOSYS;
 }
-static inline int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
+static inline int imx7_bbu_nand_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
 {
 	return -ENOSYS;
 }
-static inline int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
+static inline int imx28_bbu_nand_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
 {
 	return -ENOSYS;
 }
-- 
2.25.1




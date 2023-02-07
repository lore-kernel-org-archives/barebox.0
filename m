Delivery-date: Tue, 07 Feb 2023 02:07:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCST-00GWGb-Sz
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 02:07:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPCSR-0007GU-6Z
	for lore@pengutronix.de; Tue, 07 Feb 2023 02:07:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xox/8Ls3V7xJ+IgRLWVBh7fSZQcWBsPmqrjxreT94h0=; b=PrTQXNDmbqIIJXREmOb25RVPec
	z8nq6Crmd14VQG2avLNn88KehZnCho7u2G2MDtxvF88LqBHYad0noIoy+sQ2e5zd2ySULJnmthMQs
	p8h+sbwm4RNqKm0JTgHPqDqImUgB7L3AiZN2/2ZR2tpSeUnONhc2l2XT4Fen9CJE1jSvLBjGq/CJg
	h01J+zYgtw7QK41iJhLlX0nrJfPJGIsc3eSBNJROhrWL7C1lfUKST4IYa+DrRZI1AFIGlDRTspV1K
	vmRvz3wETUMIyNfejue+Qf9Zrg03adVULnAd2b6EL/zlM+9wdNn37UkZxrYZTMnkKi+Asq4TL0Alg
	kFNoQO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRI-00AKKV-NX; Tue, 07 Feb 2023 01:06:28 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPCRD-00AKIY-EL
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 01:06:24 +0000
Received: by mail-ej1-x636.google.com with SMTP id hr39so9711586ejc.7
        for <barebox@lists.infradead.org>; Mon, 06 Feb 2023 17:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xox/8Ls3V7xJ+IgRLWVBh7fSZQcWBsPmqrjxreT94h0=;
        b=dO+2UjeJ8XbSkTOW3OKSTvdRj1S8AB+bI/ePLumio/Dl/bUfPR1Pw4L+wLhb4hqroD
         Jc3mlm3s/yd03W8DCUp3pPXH1ismmFCebtJ6Ells6givpCm0HUAWWpm0eFngHJEmIPX2
         2edq4CcN+/hGehvMeKzll9tW4MWmeCNM24EbDzyoINpVGVq9JKNN2Wi3mYoXYjzdB07L
         SVRZR3OYDTs9yPCfK1r2HQAjmmzcB/cOyi2WozEt61V4i923WKhE0yccM9TH1PHCx+0W
         FP8kEqVSpJHgWX4qL68czlYCFO18P0YnA/GLbm34nsDTnDzAthXJf3Ol0afDjZ0JZeua
         D5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xox/8Ls3V7xJ+IgRLWVBh7fSZQcWBsPmqrjxreT94h0=;
        b=xqD5JJun+9FepIGyV2cQ/Lh9ekoW1NOSIVTeOSf9vRxD07vQ5ceZrvMKFJv9+Z+Vck
         4fDBFlLQe2wA+nW+UhS3ygcjPch1xOuCeiXcd+M9u1R4gIiSejKVl8GmAthG2l55Wutj
         j7QZXlCD8+2vd7iJ91jVzP8ZhJ4oLsS+j6O32oyrO8kESZrHbkyQQQQPxEwElN8BwkYy
         ILPiaPntGGKMvodLwx7WR+kxjHYKVvlzKT40d+K/0hT5b0uWwEhCAf9Cw7/slzwqEfBd
         BiHn36soi4HHs/79cirIK5RBxyumvZfux+jW2hfJNvl/pRf1UDyM1JeDivX0ymtQ6Ur9
         Fg3Q==
X-Gm-Message-State: AO0yUKVbeBvcqc1OKQqT8eMgbIgYwmYEqYdQxIEvV19M9zbP1W4RWIoN
	1B93ZhLfXoPn2EGB+m9nD5hqoUDf1sY=
X-Google-Smtp-Source: AK7set+CnIdFSQTFSS+pKTWNtcF78s+O5InElTnYDtRDgx4+nls/JFudInxfCLTeQdUdunbGNdg+Ow==
X-Received: by 2002:a17:907:208c:b0:878:8249:bef6 with SMTP id pv12-20020a170907208c00b008788249bef6mr1190646ejb.59.1675731981181;
        Mon, 06 Feb 2023 17:06:21 -0800 (PST)
Received: from localhost.localdomain (ip-78-45-34-87.bb.vodafone.cz. [78.45.34.87])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906391200b0088a9e083318sm6078754eje.168.2023.02.06.17.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:06:20 -0800 (PST)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Tue,  7 Feb 2023 02:05:22 +0100
Message-Id: <20230207010525.2693-3-danek.brat@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207010525.2693-1-danek.brat@gmail.com>
References: <20230207010525.2693-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_170623_504078_489C4E88 
X-CRM114-Status: GOOD (  15.41  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: rpi: add serial number readout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Remove querying for serial-number node from vc fdt, since it's not
guaranteed to always be there (older firmwares dont provide it).
Instead, retrieve board's serial number via the mbox api.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/boards/raspberry-pi/lowlevel.h     |  1 +
 arch/arm/boards/raspberry-pi/mbox-helpers.c | 27 +++++++++++++++++++++
 arch/arm/boards/raspberry-pi/rpi-common.c   | 21 +++++++++++-----
 arch/arm/mach-bcm283x/include/mach/mbox.h   | 13 ++++++++++
 4 files changed, 56 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
index 260f96c714..d2699b9b08 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.h
+++ b/arch/arm/boards/raspberry-pi/lowlevel.h
@@ -12,5 +12,6 @@
 ssize_t rpi_get_arm_mem(void);
 int rpi_get_ethaddr(u8 mac[6]);
 int rpi_get_board_rev(void);
+int rpi_get_board_serial(u64 *serial);
 
 #endif /* __ARCH_ARM_BOARDS_LOWLEVEL_H__ */
diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
index 50fc1c5b45..62c65d1267 100644
--- a/arch/arm/boards/raspberry-pi/mbox-helpers.c
+++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
@@ -16,6 +16,12 @@ struct msg_get_board_rev {
 	u32 end_tag;
 };
 
+struct msg_get_board_serial {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_board_serial get_board_serial;
+	u32 end_tag;
+};
+
 struct msg_get_mac_address {
 	struct bcm2835_mbox_hdr hdr;
 	struct bcm2835_mbox_tag_get_mac_address get_mac_address;
@@ -71,3 +77,24 @@ int rpi_get_board_rev(void)
 
 	return msg->get_board_rev.body.resp.rev;
 }
+
+int rpi_get_board_serial(u64 *serial)
+{
+	int ret;
+
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_serial, msg);
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_board_serial, GET_BOARD_SERIAL);
+
+	if (!serial)
+		return -EINVAL;
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret) {
+		pr_err("Could not query board serial\n");
+		return ret;
+	}
+
+	*serial = msg->get_board_serial.body.resp.serial;
+	return 0;
+}
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 8d1e74acab..a8f180ae92 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -60,6 +60,19 @@ struct rpi_priv {
 	const char *name;
 };
 
+static void rpi_set_serial_number(void)
+{
+	u64 serial;
+	char *serial_str;
+
+	if (rpi_get_board_serial(&serial))
+		return;
+
+	serial_str = basprintf("%016llx", serial);
+	barebox_set_serial_number(serial_str);
+	free(serial_str);
+}
+
 static void rpi_set_ethaddr(void)
 {
 	u8 mac[ETH_ALEN];
@@ -265,12 +278,6 @@ static void rpi_vc_fdt_parse(void *fdt)
 	if (IS_ERR(root))
 		return;
 
-	str = of_read_vc_string(root, "serial-number");
-	if (str) {
-		barebox_set_serial_number(str);
-		free(str);
-	}
-
 	str = of_read_vc_string(root, "model");
 	if (str) {
 		barebox_set_model(str);
@@ -446,6 +453,8 @@ static int rpi_devices_probe(struct device *dev)
 	if (IS_ERR(dcfg))
 		goto free_priv;
 
+	rpi_set_serial_number();
+
 	/* construct short recognizable host name */
 	name = of_device_get_match_compatible(priv->dev);
 	ptr = strchr(name, ',');
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 92cadba62c..008ea2e614 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -201,6 +201,19 @@ struct bcm2835_mbox_tag_get_mac_address {
 	} body;
 };
 
+#define BCM2835_MBOX_TAG_GET_BOARD_SERIAL	0x00010004
+
+struct bcm2835_mbox_tag_get_board_serial {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct __packed {
+			u64 serial;
+		} resp;
+	} body;
+};
+
 #define BCM2835_MBOX_TAG_GET_ARM_MEMORY		0x00010005
 
 struct bcm2835_mbox_tag_get_arm_mem {
-- 
2.34.1




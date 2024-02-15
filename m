Delivery-date: Thu, 15 Feb 2024 13:02:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaRb-007NpZ-0g
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:02:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaRY-0000Ov-Sf
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:02:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aF7y0radzuGNzrHNH6gSZT8OIYK8PXckRSEYtBHQK+M=; b=XgSCiVYhG7yWC60FyZuc2Wb3E7
	X6MSg4FV5HadGOpUeDnigtsGKLKPCvn5EpLT50E1iS56n2G8sc8GdW69kBenA9yslxwga9yzJGNQ6
	j6cueJj9g6wsJr2dv7r5LyS0RQIY9vz9ONUsEBzLi2/BlrNFS8+sm+8gi+8B+CvVKh+j4unxGSNVj
	pBzfiY0UViQcxpXw29hQampqwaDIeuSQ2Yr/MQcnNgraXCDGV7wE+/6rav9HE5IqpFNpv/OVeubUB
	UTj7bfHTrCQgT6CPxiki0TLndxfXkl0Ks18rwgkFOjoSqsBll/TpiiyoKJZeAUyufORx3JnY0I7Vl
	8DX3K92Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raaR1-0000000G9p5-27lF;
	Thu, 15 Feb 2024 12:01:47 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raaQy-0000000G9o5-1W8h
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:01:45 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51178bbb5d9so850880e87.2
        for <barebox@lists.infradead.org>; Thu, 15 Feb 2024 04:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1707998502; x=1708603302; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aF7y0radzuGNzrHNH6gSZT8OIYK8PXckRSEYtBHQK+M=;
        b=AgdE+0Ar6JPRzb83vxKYn14GQeq8vUT9rq6hipgxxoMfWHhsT9oLDjUWsBZBhDeYea
         lcbYT0ECy5y9fFmqiKLlzCEBLtKMkxJrdNu10elWvCZaWUH5X5Z9ygDOjHePrBl80utU
         JW/ZwKdkf8s4bXP34K06CHOTx7R83GqBay4Uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707998502; x=1708603302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aF7y0radzuGNzrHNH6gSZT8OIYK8PXckRSEYtBHQK+M=;
        b=Rzk1GPpq9gjJnn+nDyt3RAh+hJDpge0KmNHaa8KI7rbBqjycdg05O10KODNXN/X4oU
         c6SQsM/AViKgdvS66dSJH7X3dklbWQZJuzj9UQk7v+i66EYt48lv2HvxSJni0CwyzB3i
         QPmRmWvJ+H8oUXvYVpXGN9y7MkLxd4Ql+ZeCroLwMRHEPpmDP+WmckQt0CvDdz5uemi8
         cBgVagt3BQDhozCtawQlbJbwhjnril9a3thediHyxT4rryCSeKoc04e+iWB5r9p7SUmH
         tCCNjNwWWA+eNLOjtkUSXq60x0MyGJnS36fBp8vEBOQcz55YrjqcHs++YFop16PVA7Mh
         nU4A==
X-Gm-Message-State: AOJu0Yz1IBNhbC9PubQPodd/2Tu9wItiQ5/NjO8mSi0cbZabWPNu7Px9
	oGKQtgxCcrx2az17l6c5Vm2Ev3Lco8SNCbtQ3L9+eapK+Am6cTkT8QdRGOz0j0Mwcuq6hxHVimC
	LK8Y3Mg==
X-Google-Smtp-Source: AGHT+IE+EFQWCO0zfPp2kC/aiO8/Oa8zchEqHL/nuH/ktr32yAC3y/aWEYZf3k9yOxO3aGXqZplf5w==
X-Received: by 2002:a05:6512:535:b0:511:697a:3e71 with SMTP id o21-20020a056512053500b00511697a3e71mr1370230lfc.45.1707998502093;
        Thu, 15 Feb 2024 04:01:42 -0800 (PST)
Received: from chipmunk-104.. ([89.207.171.157])
        by smtp.gmail.com with ESMTPSA id j12-20020a05600c190c00b00410bca333b7sm4986895wmq.27.2024.02.15.04.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 04:01:41 -0800 (PST)
From: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
To: barebox@lists.infradead.org
Cc: sebastien.bourdelin@rtone.fr,
	a.fatoum@pengutronix.de,
	oss-contrib@rtone.fr,
	Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Date: Thu, 15 Feb 2024 13:01:39 +0100
Message-ID: <20240215120139.23881-1-pierre-olivier.huard@rtone.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_040144_436331_24C99B46 
X-CRM114-Status: UNSURE (   8.60  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] mci: bcm2835: support 8bit bus width
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using Raspberry Pi CM4s target generate a warning:

WARNING: bcm2835_mci fe340000.mmc@7e340000.of: Unsupported width received: 3
mmc0: mci_send_ext_csd failed with -5

Adding the support of 8 bits bus width resolve the issue.

Signed-off-by: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
---
 drivers/mci/mci-bcm2835.c | 7 +++++++
 drivers/mci/mci-bcm2835.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 2b541e4c05..35cf0c4241 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -225,6 +225,13 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 			SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL);
 
 	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
+		sdhci_write32(&host->sdhci,
+				SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+				(current_val & ~CONTROL0_4DATA) | CONTROL0_8DATA);
+		host->bus_width = 2;
+		dev_dbg(host->hw_dev, "Changing bus width to 8\n");
+		break;
 	case MMC_BUS_WIDTH_4:
 		sdhci_write32(&host->sdhci,
 				SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
diff --git a/drivers/mci/mci-bcm2835.h b/drivers/mci/mci-bcm2835.h
index 608764c23d..71448642ad 100644
--- a/drivers/mci/mci-bcm2835.h
+++ b/drivers/mci/mci-bcm2835.h
@@ -10,6 +10,7 @@
 
 #define CONTROL0_HISPEED	(1 << 2)
 #define CONTROL0_4DATA		(1 << 1)
+#define CONTROL0_8DATA		(1 << 5)
 
 #define CONTROL1_DATARST	(1 << 26)
 #define CONTROL1_CMDRST		(1 << 25)
-- 
2.43.0




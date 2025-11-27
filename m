Delivery-date: Thu, 27 Nov 2025 05:55:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOU22-005JNB-0l
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 05:55:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOU21-0008U0-M2
	for lore@pengutronix.de; Thu, 27 Nov 2025 05:55:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sO9wCNAzMhl/PxJLc4qsB1jSsCJsV1ImBE13gUxvkjY=; b=Kk3KSWazxsNSGnj++zQ20AVx9q
	203QJU+X7Uh7t6DfTi6yQhe1Vmin75idzs/+GzC3MmB8fvRiCWAwDsA8Vo9chlHsMKQvagRLFK2HI
	hHIAzZRZUYTzeE88lwbIjhbGr7V+a/eXd8wZT1ZURcGodh+xiw+T6Zpfhzmln7us1t65gGfwZilv0
	pLvBIeTVo1VItYfR2H59PLQNDf5+NUdF4yJKCBQ2bX2XTV4xX58rV5XJwlOD4LeGJIYM0X8swiAIc
	pq/yMX7/80dlZOYy3t0T7DEZReo1QG5lWvC4aHm8swRz6QMkmxz7HeV3ga7hx1DQaWmafW0vfDMYV
	L+lTVVcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOU1R-0000000Fyxw-1kEG;
	Thu, 27 Nov 2025 04:54:25 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOU1O-0000000FyxV-1j5R
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 04:54:23 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-8b22624bcdaso53035885a.3
        for <barebox@lists.infradead.org>; Wed, 26 Nov 2025 20:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764219261; x=1764824061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sO9wCNAzMhl/PxJLc4qsB1jSsCJsV1ImBE13gUxvkjY=;
        b=SK8rhadI5Cl41W43QORaUE7TBQUKFKtDZf0wKzYkzsoZAOwmoO82ZsBPyRpHqsefXz
         F9oxNYn0zcPt4Wb4K/Dv0nqbyz/hTjmorFISZ1cdy9Q8Xn69862LwoC52gOvzriiwthq
         nRmi7OmlGVQqA/9b7DL9gm0kbVBvaHiPHDQ2cA4Q5x6OFgp+nyYcurMMTQnJ4zwq/hsP
         BuksyxTMFhbcRhympUv1PVh3GnMNcbW3i+TulUS4h6004JDxCf+xbPHATQkmNnLVDySA
         6IvrTkgad+oPKzZcz8ORhpIiaqkRw6fco8v9sfoZgjrfRAJWLDneaEI0zyKq1yXyL7N3
         2eVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764219261; x=1764824061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sO9wCNAzMhl/PxJLc4qsB1jSsCJsV1ImBE13gUxvkjY=;
        b=NgmZBQ9PeeCLrXIE9FcSwm46dGkBIZQUptlKWLJUxBaNck6HT8unPi+mLLI81De2XC
         t1ZBhiRSr+nU3veIK7TxWWRCxns+bOmcCj3RyYvLH2dHnIWHrQ/leu4d1ToBm7DmjXhM
         +x/elYKNWb7iAGmxtcVVpHjRTTnVhVPtdVIQqiSGyEOh1fZXN8/OBbGTK57K9u0qrcGI
         CIt3TNVuP2BnpaOizmNc9tCRhYOABfss0TbHOx/1nXO3o0Y0y9gcPVDQKHXLOSWIrjOM
         MRRzecU8Ct5DjsKsENddUCQVCH96K6PUrbEK4EDeMShmhhQJqXBkLboigDpeuKT3JLVg
         M4EA==
X-Gm-Message-State: AOJu0YxccAu3yfszI7zlHw6K/U9ouINs1SurjJgXxlXf9GaJUTxPLN87
	sqJRGhmRoPpjb3daD/ucyhd3nDERJmVZqS5A5Bxm2BjKlceVX2KIpXRnlSpCfxLG
X-Gm-Gg: ASbGncsHkkpvgdWm+EC+QLfJoomn5zasEDvevfMUsaYyBtRe72IgjfF47PNytBjkaU4
	4CzQvo5h+x2D8Z7ZTi7TkPVGBqK7lGAC9ry+IYD65zNO2JUJ171yEVYzCnc8ip7M0kXCorJ5hyV
	XgyRMQJLYyHdfFOAH0FDYCXz2fko+JWyEjyN/A5yEmEp64A15MfpfW6PSUgze0lAD4oXGpIebwg
	Wb6Nn4QFoost+gLk8yR1U+nduh6gN1K8Et/D4SzGCCJ0KuJ0Zt2GnQ+zH6FrQIl2ouPamLE7cLe
	gYc3V+riq+aPNiqtso/ggC5yx3r6WPgqPjEPeKyHfMbjXVl5lNCVc1fmaK9HlyaiIFRSi/9QHX5
	XajjegoN0xEa9raXifV2KXP69Ad3p7lrPmlDS+L3dIEik2szZhOMEmGpfDMybcMnx5euv8BImrh
	41VSmNJ2znuA==
X-Google-Smtp-Source: AGHT+IGvMyrlFXXydfO4ZORjAhvD9eJh/AlQnPL9il9QWr4lkk2w28BBbeMYGCQKbEAM4sMLCkwC5Q==
X-Received: by 2002:a05:620a:1708:b0:8b1:1ba7:fd82 with SMTP id af79cd13be357-8b33d476ed8mr2995823085a.45.1764219261045;
        Wed, 26 Nov 2025 20:54:21 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::d61])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b5299a5f1dsm39634985a.13.2025.11.26.20.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 20:54:20 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 26 Nov 2025 23:54:17 -0500
Message-ID: <20251127045417.3490877-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_205422_472504_9DA64E65 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ehci-zynq: variscite: tee: fix many typos struct device.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

fix struct device_d to struct device.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/boards/variscite-som-mx7/board.c | 2 +-
 drivers/usb/host/ehci-zynq.c              | 2 +-
 include/linux/tee_drv.h                   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/variscite-som-mx7/board.c b/arch/arm/boards/variscite-som-mx7/board.c
index 005228d107af..8bce4ec8616d 100644
--- a/arch/arm/boards/variscite-som-mx7/board.c
+++ b/arch/arm/boards/variscite-som-mx7/board.c
@@ -5,7 +5,7 @@
 #include <deep-probe.h>
 #include <mach/imx/bbu.h>
 
-static int var_som_mx7_probe(struct device_d *dev)
+static int var_som_mx7_probe(struct device *dev)
 {
 	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);
 	return 0;
diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
index 13b551d09156..b4b0e0f89100 100644
--- a/drivers/usb/host/ehci-zynq.c
+++ b/drivers/usb/host/ehci-zynq.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <linux/usb/ulpi.h>
 
-static int zynq_ehci_probe(struct device_d *dev)
+static int zynq_ehci_probe(struct device *dev)
 {
 	struct resource *res;
 	void __iomem *base;
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index e2c1042debce..6a8e19459f47 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -201,7 +201,7 @@ struct tee_shm {
 	struct list_head link;
 
 	int fd;
-	struct device_d dev;
+	struct device dev;
 	struct cdev cdev;
 	struct resource res;
 };



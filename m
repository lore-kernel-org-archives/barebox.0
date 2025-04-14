Delivery-date: Mon, 14 Apr 2025 08:36:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQp-000X44-2V
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:36:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DQp-0002s6-3M
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:36:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UqcJt8t7TU8X6Id/lNFkYZgu6t5EaTQyLuZ2bLIN/xw=; b=cRGVYLSG+IQ0JQY5M1tmUY79LJ
	KHRIbrywMaOrNOcCIORwYRy+4L9E4PKcs2VVUh9jogr7lnXRcSSchdO1WfwofghUD4J1wPDIDK7q9
	xv4/l9Gjfrz9KuTiuTCkxWJN09CI3+beWa3LmUQTU/8zt3ijo04pLCBNN7IOME2ecMlpQV0YJACbm
	ZAfAcU62E2wEK+UoMyWgSSgjIgTbP1/Jap8Zt1yOr8+UpetkK3EeG8675y4h9AdNDkAcPu/OFMYbu
	7ZTcqm24aChVCse5dOxeOFbSKJsgtpelUHIJ9g8rItlShGJHt0wp+36r+HLFO3ZtAJEFGX+X+61ej
	WG3plOyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQQ-00000000oyH-27yM;
	Mon, 14 Apr 2025 06:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DQI-00000000osn-2weq
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:36:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-0002N4-Gk; Mon, 14 Apr 2025 08:36:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DQH-000Cn8-12;
	Mon, 14 Apr 2025 08:36:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-2s;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:47 +0200
Message-Id: <20250414063152.2736649-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233602_736306_789DF559 
X-CRM114-Status: GOOD (  12.25  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/18] misc: storage-by-uuid: rename to storage-by-alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the symbols in the file have been renamed, rename the file
itself too. This was split off as not to confuse git rename detection.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig                             | 16 +++++++++++-----
 drivers/misc/Makefile                            |  2 +-
 .../{storage-by-uuid.c => storage-by-alias.c}    |  0
 3 files changed, 12 insertions(+), 6 deletions(-)
 rename drivers/misc/{storage-by-uuid.c => storage-by-alias.c} (100%)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 40482f8b88a7..73814f36bf9c 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -51,13 +51,19 @@ config STARFIVE_PWRSEQ
 	  be accessed over /dev/mem or used from kernels which still depend
 	  on bootloader for initialization.
 
-config STORAGE_BY_UUID
-	bool "storage by UUID"
+config STORAGE_BY_ALIAS
+	bool "storage by alias"
 	depends on OFDEVICE
 	help
-	  This adds a driver which matches to a "barebox,storage-by-uuid"
-	  compatible node. The driver looks for a storage device matching the
-	  given UUID and when found registers a new cdev for the device.
+	  This adds a driver which matches device tree nodes corresponding
+	  to a barebox cdev aliases.
+
+	  Following compatibles are supported:
+
+	  - "barebox,storage-by-uuid"
+
+	  Look for a storage device matching the given DISKUUID and when found
+	  registers a new cdev for the device.
 
 	  This driver solved a very specific problem. On EFI the storage devices
 	  are not connected to any device tree node. barebox-state however expects
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 871af85d5920..c4b61de7b8b5 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -10,4 +10,4 @@ obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_DEV_PORT)		+= port.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
 obj-$(CONFIG_STARFIVE_PWRSEQ)	+= starfive-pwrseq.o
-obj-$(CONFIG_STORAGE_BY_UUID)	+= storage-by-uuid.o
+obj-$(CONFIG_STORAGE_BY_ALIAS)	+= storage-by-alias.o
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-alias.c
similarity index 100%
rename from drivers/misc/storage-by-uuid.c
rename to drivers/misc/storage-by-alias.c
-- 
2.39.5




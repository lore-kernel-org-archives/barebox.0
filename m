Delivery-date: Thu, 05 Aug 2021 10:28:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBYjV-0007xa-2l
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 10:28:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBYjS-0003Ug-Mj
	for lore@pengutronix.de; Thu, 05 Aug 2021 10:28:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FTlnH/9i7e1zfgvDdb3fow59DXJYMfNylfHMP6ePYzk=; b=je0/o0H08yTU6N
	YIY6em+zB9lHXNNty+jo96cKzKFrZDTaIfno0jcP2k8YjXm3TB2miNz1CPNIopWqiiULOf3jcOcKH
	yri0xHDActMbaYi+wROLxLt/xDRPFL6aDDPtOpE5yVuSa687X1eB1rADBN3Yx9P3923hAytOBkao1
	Zd+G2wFi3tawsmF8fbKCFlld5UGRPDClQpi9KTJm6AKPA2W/FuI31mVxJQzLpmNnKhKqVce69TwTg
	7zePdKmvEWMY1zomOImXrxnCIy0llwUknC96WLhjoQY4NcdTWU33aS8Xi9w02YZU4Ebcf6iNdFDaF
	mGd+GMAr1g0XsCIU7Aiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBYhy-008fF5-2I; Thu, 05 Aug 2021 08:26:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBYhs-008fEK-Q8
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 08:26:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1mBYho-0003HI-2H; Thu, 05 Aug 2021 10:26:20 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1mBYhn-0002Xl-IY; Thu, 05 Aug 2021 10:26:19 +0200
Received: from rcz by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1mBYhn-007N4n-HR; Thu, 05 Aug 2021 10:26:19 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  5 Aug 2021 10:26:07 +0200
Message-Id: <20210805082607.1698733-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_012624_892939_04C2FD77 
X-CRM114-Status: GOOD (  12.17  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: imx-esdhc-pbl: initialize fsl_esdhc_host
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")
the core checks whether there is an explicit write function for the
host. If the struct is not zero initialized, a bogus value is taken as
the function, resulting in an unbootable board. Zero initialize the
structs properly to let the PBL correctly load images. Fixes booting on
the i.MX8M* board, tested on i.MX8MP EVK.

Fixes: 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index c3a8b377e..2e04c78fd 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -233,7 +233,7 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
 int imx6_esdhc_start_image(int instance)
 {
 	struct esdhc_soc_data data;
-	struct fsl_esdhc_host host;
+	struct fsl_esdhc_host host = { 0 };
 
 	switch (instance) {
 	case 0:
@@ -272,7 +272,7 @@ int imx6_esdhc_start_image(int instance)
 int imx7_esdhc_start_image(int instance)
 {
 	struct esdhc_soc_data data;
-	struct fsl_esdhc_host host;
+	struct fsl_esdhc_host host = { 0 };
 
 	switch (instance) {
 	case 0:
@@ -309,7 +309,7 @@ int imx7_esdhc_start_image(int instance)
 int imx8m_esdhc_load_image(int instance, bool start)
 {
 	struct esdhc_soc_data data;
-	struct fsl_esdhc_host host;
+	struct fsl_esdhc_host host = { 0 };
 	int ret;
 
 	ret = imx8m_esdhc_init(&host, &data, instance);
@@ -337,7 +337,7 @@ int imx8m_esdhc_load_image(int instance, bool start)
 int imx8mp_esdhc_load_image(int instance, bool start)
 {
 	struct esdhc_soc_data data;
-	struct fsl_esdhc_host host;
+	struct fsl_esdhc_host host = { 0 };
 	int ret;
 
 	ret = imx8m_esdhc_init(&host, &data, instance);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 16 Apr 2024 11:54:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfVx-003BNL-0t
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfVu-0003jw-TG
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ork9bTgOH6/iMChLbvvHpdlnoA6nUeiGJSTG4l0XuMg=; b=gXQyGjcxg6fUPLbmiBEo0Rz8dL
	imtjJ3Ssc4j4xh0ZJqq0pwrNtHWYcP1a8kyIHTJcRdr5USPE2lABZjh8G5g4ZXWCDWdsLyGM3SYmH
	66JICWACoCZGCrW/hlL+hl83B4EMopiBj/sbw8bUkNS8fiCLiPUN7ervL+YrAzJVnpjtdlWjEvPEo
	S+RuZZWCFN0cwOoO6tWbu9kkXA9dnOm0gEY+uhd8kxkTnVwkEsxxLqg5zhZ84xTnZrmEgay2wmsB4
	8BJF/lTR1fCfl+ypi0t+xbWdPrhwegK+4KY1tqL03AWdT5TCE3j6GD4DPMYRSelFgsXNAEneyC02e
	wR1g9KTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVD-0000000Bff0-2hJt;
	Tue, 16 Apr 2024 09:53:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcK-0nCY
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002dv-L2; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-00CaKU-8V; Tue, 16 Apr 2024 11:53:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-008J49-0V;
	Tue, 16 Apr 2024 11:53:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:13 +0200
Message-Id: <20240416095313.1977242-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_256311_B28895D8 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] mtd: nand: mxc_nand: support software ECC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To support software ECC we still need the driver provided read_oob,
read_page_raw and write_page_raw ops, so set them unconditionally
no matter which engine_type we use. The OOB layout on the other hand
represents the layout the i.MX ECC hardware uses, so set this only
when NAND_ECC_ENGINE_TYPE_ON_HOST is in use.

With these changes the driver can be used with software BCH ECC which
is useful for NAND chips that require a stronger ECC than the i.MX
hardware supports.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index bd320bf3b8..d057d1b1bc 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1347,15 +1347,16 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	chip->ecc.bytes = host->devtype_data->eccbytes;
 	host->eccsize = host->devtype_data->eccsize;
 	chip->ecc.size = 512;
-	mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
+
+	chip->ecc.read_oob = mxc_nand_read_oob;
+	chip->ecc.read_page_raw = mxc_nand_read_page_raw;
+	chip->ecc.write_page_raw = mxc_nand_write_page_raw;
 
 	switch (chip->ecc.engine_type) {
 	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
 		chip->ecc.read_page = mxc_nand_read_page;
-		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
-		chip->ecc.read_oob = mxc_nand_read_oob;
 		chip->ecc.write_page = mxc_nand_write_page_ecc;
-		chip->ecc.write_page_raw = mxc_nand_write_page_raw;
 		chip->ecc.write_oob = mxc_nand_write_oob;
 		break;
 
-- 
2.39.2




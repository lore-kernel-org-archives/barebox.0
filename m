Delivery-date: Tue, 19 Dec 2023 14:02:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjZ-004YpP-0Y
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:02:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjY-0001bW-Jy
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:02:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aunK8itEB2d3ILhGgkSRgc9OYEngBhTYfqSHwXtLl1w=; b=fukB1T9Ma4uPBfOi013ufeaCzB
	5c2EJQOWqAaZ05tVupuwnBEeBHeeMZ5tNGYHnpcUaGX8EZcVZwP5DkeBH3WKrXDulYnuve77s/mjU
	DwjyBlqGNnXHR8ltU/H4uUee+8yKZFEo3Vw7ZRwy+4XwsBn21l+sRMdIW0N2yAru2980xaccFz6y/
	/aFKpLV8K2fXVvzGOCVDvyNZiSZinq/vJOpXVg7asHBiPa+3D5JKsx0c+Lz9Yrl1/wcgs6MWUpiXs
	WQhfp+sjtKpa2JBj0UQkerFiUW2Vhb2tVWRer0U2GK2iTXgtmCFuIyWSHqTAqspqKiWnaRejl3gly
	Bul6gpwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZid-00E7uX-2C;
	Tue, 19 Dec 2023 13:01:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiV-00E7sZ-0l
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiE-0000fd-2W; Tue, 19 Dec 2023 14:00:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiC-0001Kn-Gj; Tue, 19 Dec 2023 14:00:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiD-000150-1m;
	Tue, 19 Dec 2023 14:00:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:00:37 +0100
Message-Id: <20231219130040.4115-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219130040.4115-1-s.hauer@pengutronix.de>
References: <20231219130040.4115-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_050059_274017_AB5DDA2A 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] pblimage: drop PowerPC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PowerPC support has never been tested in the pblimage tool and will
hopefully be never needed. Drop its support from pblimage

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/pblimage.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index df5d7aef69..9489c52b18 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -60,12 +60,6 @@ static uint32_t pbl_cmd_initaddr;
 static uint32_t pbi_crc_cmd1;
 static uint32_t pbi_crc_cmd2;
 
-enum arch {
-	ARCH_ARM,
-	ARCH_POWERPC,
-};
-
-enum arch architecture = ARCH_ARM;
 static char *rcwfile;
 static char *pbifile;
 static char *outfile;
@@ -253,17 +247,11 @@ static int pblimage_check_params(void)
 		exit(EXIT_FAILURE);
 	}
 
-	if (architecture == ARCH_ARM) {
-		pbi_crc_cmd1 = 0x61;
-		pbi_crc_cmd2 = 0;
-		pbl_cmd_initaddr = loadaddr & PBL_ADDR_24BIT_MASK;
-		pbl_cmd_initaddr |= PBL_ACS_CONT_CMD;
-		pbl_cmd_initaddr += image_size;
-	} else {
-		pbi_crc_cmd1 = 0x13;
-		pbi_crc_cmd2 = 0x80;
-		pbl_cmd_initaddr = 0x82000000;
-	}
+	pbi_crc_cmd1 = 0x61;
+	pbi_crc_cmd2 = 0;
+	pbl_cmd_initaddr = loadaddr & PBL_ADDR_24BIT_MASK;
+	pbl_cmd_initaddr |= PBL_ACS_CONT_CMD;
+	pbl_cmd_initaddr += image_size;
 
 	next_pbl_cmd = pbl_cmd_initaddr;
 	return 0;
-- 
2.39.2




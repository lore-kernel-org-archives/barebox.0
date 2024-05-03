Delivery-date: Fri, 03 May 2024 12:15:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pxB-00H66s-2H
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:15:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2pxB-0006b5-4j
	for lore@pengutronix.de; Fri, 03 May 2024 12:15:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WrwALYR9cea5HiRGr1mZjS1XzmgvGsRtx4v69P5x2RY=; b=m03Z0zIU4H3PKBUowZ3ZFVRwJv
	Rlqch1xaCyXGNNlhitmeMYNZCsEqpmUfEYBh0oKKr4TOEkTs6logLx2v5V1kWwsZsOQMTpQuQllT2
	TozChdr8GwyMhvdToONz/0SE22R0fhrqkDBVgfptDypK8tOmeyGAxo4rx32VWgfF05WjE3b873mnz
	jr/rGk7VjImLqJWT9XWb6LQRBO6yoiyd8QahUThg0hY9jeOT3ucPxAvirmfL1zEyEF64jnNerv1tc
	tJUpMErY/0GPYAqPqgUBjl+QSUXmZVb87EZbu9llDD9sDcZ4uhnQC/bWYCiokW9lxrM+DJX85F2uW
	6v46OI5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pwi-0000000G0Vp-0E4j;
	Fri, 03 May 2024 10:15:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2pwf-0000000G0VB-0MpH
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:15:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2pwd-0006So-0B; Fri, 03 May 2024 12:15:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2pwc-00FgRz-Ji; Fri, 03 May 2024 12:15:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2pwc-00Edsq-1d;
	Fri, 03 May 2024 12:15:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 May 2024 12:15:09 +0200
Message-Id: <20240503101509.3489624-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_031513_150410_F6BF4D15 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: mxc_nand: clear NAND_BBT_CREATE flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX NAND the factory bad block markers are not at the place the NAND
core expects them to be, so the core also can't properly generate a bad
block table. Clear the NAND_BBT_CREATE flag to prevent the core from
doing so. This preserves the behaviour we had previously with the
barebox driver which was lost when we replaced it with the Kernel
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 2774b6bb4f..c6533b20fc 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1167,7 +1167,7 @@ static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
 static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
 
 static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
 	    | NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
@@ -1177,7 +1177,7 @@ static struct nand_bbt_descr bbt_main_descr = {
 };
 
 static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
 	    | NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
 	.offs = 0,
 	.len = 4,
-- 
2.39.2




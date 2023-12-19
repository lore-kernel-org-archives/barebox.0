Delivery-date: Tue, 19 Dec 2023 14:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjW-004Yon-2q
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjW-0001Ze-9Z
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QfGzCADOZLp6gRyhgYGFjNH7kRBx1TSYCAyV/4rzpKY=; b=hzVF0bjG3GpRfDv9Z8HzbBpx7G
	BRIl53mu2CY3LbV+RlzQ5yeyrlTqYFgEePuB38Z8uX61b5pprXemeVcq4tZkaNi8bWQgG7L/q4/0C
	OaSLOXz9UOJPlDNdbHLndG4XmOUVESL6E6nT4609Nc2rjHMwPj/bSVoo28UeRxhIqFvH3Lct4r/ob
	lzSPv1BHKlK3OMjeEM4XbnapjoKWffCzgqJOHUQMFmPKP5EzFMU7KWkxWh/oks8X6OCN34l2Ku7hh
	HhZRArV4qVdeowlVxJygdHn38VEZHZTXcV5I9XXboFsdBTYChtMWOKt50/uCelmShnrn+edOZd69C
	MrHaPoUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiQ-00E7qr-2R;
	Tue, 19 Dec 2023 13:00:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiN-00E7pd-0e
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:00:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiE-0000fw-3g; Tue, 19 Dec 2023 14:00:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiC-0001Ko-HX; Tue, 19 Dec 2023 14:00:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiD-000154-1r;
	Tue, 19 Dec 2023 14:00:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:00:38 +0100
Message-Id: <20231219130040.4115-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219130040.4115-1-s.hauer@pengutronix.de>
References: <20231219130040.4115-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_050051_248392_B34CA402 
X-CRM114-Status: GOOD (  16.43  )
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
Subject: [PATCH 2/4] pblimage: simplify a bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

next_pbl_cmd is a global static variable that is initialized multiple
times, but used in a single function only. Instead of obfuscating its
usage, just pass its value as a parameter to generate_pbl_cmd().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/pblimage.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 9489c52b18..d0a589f2fe 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -39,10 +39,6 @@
  */
 #define BAREBOX_START	(128 * 1024)
 
-/*
- * Initialize to an invalid value.
- */
-static uint32_t next_pbl_cmd = 0x82000000;
 /*
  * need to store all bytes in memory for calculating crc32, then write the
  * bytes to image file for PBL boot.
@@ -56,7 +52,6 @@ static int out_fd;
 static int in_fd;
 static int spiimage;
 
-static uint32_t pbl_cmd_initaddr;
 static uint32_t pbi_crc_cmd1;
 static uint32_t pbi_crc_cmd2;
 
@@ -77,10 +72,8 @@ static uint32_t pbl_crc32(uint32_t in_crc, const char *buf, uint32_t len)
  * "xxxxxx" is the offset. Calculate the start offset by subtracting the size of
  * the image from the top of the allowable 24-bit range.
  */
-static void generate_pbl_cmd(void)
+static void generate_pbl_cmd(uint32_t val)
 {
-	uint32_t val = next_pbl_cmd;
-	next_pbl_cmd += 0x40;
 	int i;
 
 	for (i = 3; i >= 0; i--) {
@@ -186,6 +179,7 @@ static void add_end_cmd(void)
 static void pbl_load_image(void)
 {
 	int size;
+	unsigned int n;
 	uint64_t *buf64 = (void *)mem_buf;
 
 	/* parse the rcw.cfg file. */
@@ -195,9 +189,12 @@ static void pbl_load_image(void)
 	if (pbifile)
 		pbl_parser(pbifile);
 
-	next_pbl_cmd = pbl_cmd_initaddr - image_size;
-	while (next_pbl_cmd < pbl_cmd_initaddr) {
-		generate_pbl_cmd();
+	for (n = 0; n < image_size; n += 0x40) {
+		uint32_t pbl_cmd;
+
+		pbl_cmd = (loadaddr & PBL_ADDR_24BIT_MASK) | PBL_ACS_CONT_CMD;
+		pbl_cmd += n;
+		generate_pbl_cmd(pbl_cmd);
 		pbl_fget(64, in_fd);
 	}
 
@@ -249,11 +246,7 @@ static int pblimage_check_params(void)
 
 	pbi_crc_cmd1 = 0x61;
 	pbi_crc_cmd2 = 0;
-	pbl_cmd_initaddr = loadaddr & PBL_ADDR_24BIT_MASK;
-	pbl_cmd_initaddr |= PBL_ACS_CONT_CMD;
-	pbl_cmd_initaddr += image_size;
 
-	next_pbl_cmd = pbl_cmd_initaddr;
 	return 0;
 };
 
-- 
2.39.2




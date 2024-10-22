Delivery-date: Tue, 22 Oct 2024 09:49:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dX-007NfZ-1y
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 09:49:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39dW-0006C7-OM
	for lore@pengutronix.de; Tue, 22 Oct 2024 09:49:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vVjNt9HdRiHxJ6NCRgRPbTz0NktOzySYWmiEfw+ZY8w=; b=isb30sWdRVrhItgG7Taz35yfUo
	E9REti2sSnVXMZvrX51vvBPbK1dlsEbySVuVtUtCXek4w3lYp1NxSxXdfXqHgiSSXy2zswkuhEPHR
	tXO79+VwocN9A1JQh1/bSlJyl76sMqsQllK/Rceg3Ys4XMRSXvItm3b3HArS5dnm+aHRwHtxWqtbY
	YXhOFriOdwmSy7z4kRB3xUoTMaCZUznPAxb0ORvI7fwNlvIP9b6sT0kXIN4fd9SEySSW4NbfPgUgX
	4mju/wPYlxZNCDHEyPY9xioyhmTVou6QNqyQ70sg6ASV0/mIVAB3zKit3gj+SSNyQDSQ8rRctqXpg
	59rfvAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39ct-0000000A2WK-1XNQ;
	Tue, 22 Oct 2024 07:48:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39b9-0000000A2Ke-37wV
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 07:46:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39b0-0005hu-CH; Tue, 22 Oct 2024 09:46:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-000pLN-3C;
	Tue, 22 Oct 2024 09:46:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2s;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-5-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=1743;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Z/CbdDNJcxYi42C9gyBH/r00m++gA+NBQsaPhDMBp1g=;
 b=rsFZ+q+jG9p1dAyqx1+MUXyYqS3l03RvMdjNxShaoFG1n5+/cW4WOUfkz28WLGA+IMjlgm8eS
 x3ZoG2l91TIBTBVdN/U/QyIIUnh6pc3K+FdqwB8pNZszAd60wqphdmF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_004635_794535_6475DDFA 
X-CRM114-Status: GOOD (  12.07  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/12] ARM: Layerscape: ls1046ardb: remove unused
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

memsize is set with the value returned from fsl_ddr_sdram(), then passed
through r0 to the full barebox binary where it is then finally unused.
Just remove the variable. The real memory amount is hardcoded in the
board code anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/lowlevel.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index c2d3a526bc..9c3f1a8375 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -184,16 +184,13 @@ static struct fsl_ddr_info ls1046a_info = {
 	.c = ddrc,
 };
 
-static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
+static noinline __noreturn void ls1046ardb_r_entry(void)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
 	struct pbl_i2c *i2c;
 	int ret;
 
 	if (get_pc() >= membase) {
-		if (memsize + membase >= 0x100000000)
-			memsize = 0x100000000 - membase;
-
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
 				  __dtb_z_fsl_ls1046a_rdb_start);
 	}
@@ -209,11 +206,11 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 		goto err;
 	}
 
-	memsize = fsl_ddr_sdram(&ls1046a_info, false);
+	fsl_ddr_sdram(&ls1046a_info, false);
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image(memsize, 0, 0);
+	ls1046a_esdhc_start_image(0, 0, 0);
 
 err:
 	pr_err("Booting failed\n");
@@ -228,5 +225,5 @@ __noreturn void ls1046ardb_entry(unsigned long r0, unsigned long r1, unsigned lo
 	relocate_to_current_adr();
 	setup_c();
 
-	ls1046ardb_r_entry(r0);
+	ls1046ardb_r_entry();
 }

-- 
2.39.5




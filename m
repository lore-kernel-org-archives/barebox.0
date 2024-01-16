Delivery-date: Tue, 16 Jan 2024 18:09:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw5-002FSr-0J
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw5-0007dy-Mr
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZL3s0TUlt/U6haECvmVeG0jeCByax3KpUCEMgb7GQV4=; b=yIYe8VtXnlzBdpm1jLst7LcwGK
	l/aMsVT7Zy5YeeJU6rzAExmNEe0paF/em4fkQtbftTgM5BiQ/bnKqUj1vrl+1nr7srR4Fbjn9M5zJ
	eAo3tcOzEjy6wWdKCJFJ4CP+Le4DdDGvkH/E03vYiQsWinkYnhHNlMWOuFrJI83sDJia7gh15VLen
	aP8Zf3MhkX3xsoedtN6qfkJITOpytiFA1YmnRXxW7WQVQeQaNWBls4Bx7YFjg6V9G0AOqUilWvuGR
	rFJXOr80wrc2lJ3xaMisv+V8VPNwO5Yf05mJnDHe5gjatMOuhatYL4toRPKsmbP4wRZF1G3x4Xd95
	I1aHtjJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv6-00CiDY-2o;
	Tue, 16 Jan 2024 17:08:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuv-00Ci2x-0q
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=ZL3s0TUlt/U6haECvmVeG0jeCByax3KpUCEMgb7GQV4=; b=JrPyZw2C34Ryoo8yskof0DIT2u
	XebKCEIGKNxSBua/UrUKO0CZY9NBAjyj3BSLk63qfXG45qAZLzQ5f1nQaVTWHrUanN1GW9+Vtrq4g
	q0e4YTA06/+RpBffzE4bGCdy40h4q6s3kSnjGATs5pKn1INKAwpDHrfrAqlJMCuIlOMwdlvZ+cr3/
	nZ0hjsXOyoaxklLjNvli1zsSpRtOhyf6a5q2rpFreE4c4km2oPNesGBxHrqF6OklcZeiJ/n67BWoG
	r/j316F8q2YjHDKvgXQ8nzmrkODmnvFqBE2vUs4fBl1PwGTMVEXeRx1TK4jmbkYTbOWWOy13dfqfa
	69lbeTHw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmup-00DdxB-7P
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:08:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Fj
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:37 +0100
Message-Id: <20240116170738.209954-18-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_332536_CAEBB2A0 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 17/18] ARM: i.MX8M: cleanup MX8M*_ATF_BL33_BASE_ADDR defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of having three defines for the same just use the base
definition which is MX8M_ATF_BL33_BASE_ADDR and drop the others.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg | 10 +++++-----
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c        |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c           |  2 +-
 include/mach/imx/atf.h                              |  2 --
 4 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg b/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
index cc0bec6b74b9..fa25348757af 100644
--- a/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
@@ -71,15 +71,15 @@ proc ddr_init { } {
 
 proc start_barebox {} {
 	#
-	# We have to place our image at MX8MQ_ATF_BL33_BASE_ADDR in order
+	# We have to place our image at MX8M_ATF_BL33_BASE_ADDR in order
 	# to be able to initialize ATF firmware since that's where it
 	# expects entry point to BL33 would be
 	#
-	set MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
+	set MX8M_ATF_BL33_BASE_ADDR	0x40200000
 	echo "Bootstrap: Loading Barebox"
-	load_image images/start_zii_imx8mq_dev.pblb $MX8MQ_ATF_BL33_BASE_ADDR bin
-	echo [format "Bootstrap: Jumping to 0x%08x" $MX8MQ_ATF_BL33_BASE_ADDR]
-	resume $MX8MQ_ATF_BL33_BASE_ADDR
+	load_image images/start_zii_imx8mq_dev.pblb $MX8M_ATF_BL33_BASE_ADDR bin
+	echo [format "Bootstrap: Jumping to 0x%08x" $MX8M_ATF_BL33_BASE_ADDR]
+	resume $MX8M_ATF_BL33_BASE_ADDR
 }
 
 proc board_init { } {
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 5708c8d75484..362b3ed823c1 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -88,7 +88,7 @@ static __noreturn noinline void phytec_phycore_imx8mq_start(void)
  *
  * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
  *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
+ * 5. BL31 exits EL3 into EL2 at address MX8M_ATF_BL33_BASE_ADDR,
  *    executing start_phytec_phycore_imx8mq() the third time
  *
  * 6. Standard barebox boot flow continues
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 42cd05d3f17c..4184748cd858 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -174,7 +174,7 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
  *
  * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
  *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
+ * 5. BL31 exits EL3 into EL2 at address MX8M_ATF_BL33_BASE_ADDR,
  *    executing start_nxp_imx8mq_evk() the third time
  *
  * 6. Standard barebox boot flow continues
diff --git a/include/mach/imx/atf.h b/include/mach/imx/atf.h
index fb367d6a7052..15bd13eb27cc 100644
--- a/include/mach/imx/atf.h
+++ b/include/mach/imx/atf.h
@@ -15,8 +15,6 @@
 #define MX8MP_ATF_BL31_BASE_ADDR	0x00970000
 #define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
 #define MX8M_ATF_BL33_BASE_ADDR		0x40200000
-#define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
-#define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 #define MX93_ATF_BL31_BASE_ADDR		0x204e0000
 #define MX93_ATF_BL33_BASE_ADDR		0x80200000
 
-- 
2.39.2




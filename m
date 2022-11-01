Delivery-date: Tue, 01 Nov 2022 07:33:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkqE-00APno-IG
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:33:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkqD-0002ir-Dj
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:33:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BH6Dp+SjdgXN3YOhrb5raJ3R+4+GBZUnnuSdEx5BUU8=; b=ljwtyNsUVvx2RTUU5D3WltAEmk
	7N4byZFFG+VfEbBIAv4s01KXFUGXRfgbT/xCA2LY6gP8amNlGropgKffsiEzZlZZN9R093MToR5mO
	6wP2vO38Q4G4HWr9kpZE9nuhrsbTHig5AC/S6LoAZqDMHXqk1hYnufnhJrXEIlTmcBHxyTn5uZDof
	K5nAcIKd9f7DqTDPQbt/A6lTJIXRhtFOIjN62zvYh7JteKrWwzGyryRjArmlycfUky30Y0cUGzm24
	HhKD4UneAryhEL42Ieczw1wtaFTpNx3PsVCnViTxA0hvaskmEk+V39xJPDffq9jrE8pBuX9X8sAen
	xIDwzMeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkp0-002QqP-2p; Tue, 01 Nov 2022 06:32:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkov-002Qq6-6g
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkot-0002g0-6L; Tue, 01 Nov 2022 07:32:19 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkot-001cjh-El; Tue, 01 Nov 2022 07:32:18 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkor-00DUr3-Sf; Tue, 01 Nov 2022 07:32:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:32:16 +0100
Message-Id: <20221101063216.3216821-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_233221_260083_953C6A39 
X-CRM114-Status: GOOD (  10.15  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] test: self: only include ramfs selftest when CONFIG_SELFTEST_FS_RAMFS=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we ignored the symbol and built the test always when
CONFIG_SELFTEST=y and CONFIG_FS_RAMFS=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - moved out of other series. No other changes.
 test/self/Kconfig  | 2 +-
 test/self/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index f3cb6601e3b8..5c6981959921 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -33,7 +33,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
-	select SELFTEST_FS_RAMFS
+	imply SELFTEST_FS_RAMFS
 	imply SELFTEST_TFTP
 	help
 	  Selects all self-tests compatible with current configuration
diff --git a/test/self/Makefile b/test/self/Makefile
index 6f2c0d394034..c7c729cba0e0 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -6,4 +6,4 @@ obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
-obj-$(CONFIG_FS_RAMFS) += ramfs.o
+obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
-- 
2.30.2




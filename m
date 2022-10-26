Delivery-date: Wed, 26 Oct 2022 08:43:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8q-002gwb-KE
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8p-0000Q1-1C
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WGmsG5GXzXkLXil/ezThim8z1BFeYZAtxHvv+pFoHys=; b=jEGvf5ZluD6yX9kmMNcKzU0DNr
	4BTr2woxFGMUQZSlgxAxf77X9/K+2IzoRQ75eQLEzJ5UQhohtXrlgTvkBPdODn5XmRIMm2dRLDBLT
	80IZ20zCeB51wU6lBxlAYKLM7mPfxva5BkLav5ZZP5kZE4nwYG6FlbwkWHs3CYGXfyfk7ehu9VrQe
	qJBBZctR3MqGuGylyP8qsMIWMPQan1vJqpVzuIPCLj+xDwHeaLrpKSr/9MozsusbLvtlauH9vLSLH
	vXnnTNhREjPWaiHYAbWlt76OGEEQkIqe4dqZD9aRHQiLVeS4u/ctUAQ/sAnRYUwrT08G0uqn4JMtk
	w8KIg7gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7W-008IQU-VZ; Wed, 26 Oct 2022 06:42:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7E-008IJU-LT
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008WB-Eg; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHi-OT; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyi-P2; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:05 +0200
Message-Id: <20221026064205.2360041-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234216_739022_6A175C13 
X-CRM114-Status: UNSURE (   9.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] test: self: only include ramfs selftest when CONFIG_SELFTEST_FS_RAMFS=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we ignored the symbol and built the test always when
CONFIG_SELFTEST=y and CONFIG_FS_RAMFS=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  | 2 +-
 test/self/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 3a5e7795fea8..9c0043e29e6a 100644
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
index 5d9d772d13b0..5ec36e0660ef 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -7,4 +7,4 @@ obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
-obj-$(CONFIG_FS_RAMFS) += ramfs.o
+obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
-- 
2.30.2




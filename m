Delivery-date: Wed, 03 Jan 2024 11:14:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyGz-001mQf-2y
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:14:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyGy-0002BF-Tz
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:14:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DBjgcw5IbPZbEug523nkisoCITFziVcUPZj9yuLYnxs=; b=GGuf0Qn6zhA0V0QAS6ZgE7pM9x
	GjQRZffXiwLX03v1TEgD0CmmsZKb6SI51pV18M1Zg39n2TPi5ogafrAhFuv1i9wJ4s6xDXtvgFZll
	a6sFD3Uu9m4X5K6G3MZoRH2ArXfAXehRb2U2bsVxBGWZ4PYqD29oGjLGUtQ4fGC74eB0CtKSjyZac
	yhBG6QR9Yn9kLTdEctiL6dhqTyAZtpgPSgcMlIdWETinnHPRdR25L5GRm5A1d6ABV/0drTY3EbQe8
	40792+G/EV4L88xwT0Iyp+XY4rRPMKr6MH2YQnfqegoVfog9eavv+Pw+6okjxPl6IGGjTh5bLYZ5A
	xQKJ6Xeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyG1-00ALls-0w;
	Wed, 03 Jan 2024 10:13:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyFv-00ALis-0t
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:13:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFu-0001ja-54; Wed, 03 Jan 2024 11:13:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFt-0005vj-Og; Wed, 03 Jan 2024 11:13:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFt-00B1v2-2A;
	Wed, 03 Jan 2024 11:13:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:13:43 +0100
Message-Id: <20240103101344.2628970-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
References: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021347_322001_BEC9FDF7 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/3] test: self: regulator: depend on REGULATOR_FIXED for test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The regulator self test requires fixed regulator support, which itself
already requires REGULATOR && OFDEVICE, which we already depend on.

Therefore, just add REGULATOR_FIXED as dependency.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index ace01accda7e..6b9a4bf4a6e4 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -41,7 +41,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_MMU if MMU
 	select SELFTEST_STRING
 	select SELFTEST_SETJMP if ARCH_HAS_SJLJ
-	select SELFTEST_REGULATOR if REGULATOR && OFDEVICE
+	select SELFTEST_REGULATOR if REGULATOR_FIXED
 	select SELFTEST_TEST_COMMAND if CMD_TEST
 	select SELFTEST_IDR
 	help
@@ -101,7 +101,7 @@ config SELFTEST_SETJMP
 
 config SELFTEST_REGULATOR
 	bool "Regulator selftest"
-	depends on REGULATOR && OFDEVICE
+	depends on REGULATOR_FIXED
 	select OF_OVERLAY
 
 config SELFTEST_TEST_COMMAND
-- 
2.39.2




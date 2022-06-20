Delivery-date: Mon, 20 Jun 2022 09:25:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3BmW-007qOx-Cw
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 09:25:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3BmW-0002VU-IE
	for lore@pengutronix.de; Mon, 20 Jun 2022 09:25:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+FGB+QtKUDOCRv5A/yQs/Caa9fKP7OiwaqZaUYdSVfw=; b=2HNOIO72KmLm+IgBptVhz67VD2
	4GvA2rLNk/JDF4doIWHsTZgiL6x1UPIMEqV2Fr/g0JTvkg6f4HJBBbD0ucAs35qJhKHvlA8I1GAWH
	Yxgn1+bvVaogWzXUWc88HwpzYqR1dj+/qToOR9SDnG83a/rd9/jMl/5u7XYYOQJWoxrAcVKIipnMT
	vrHopUZpqeywyF0R+IXY+fBpSZbFMDzCiT06fXTdIiV5MHqtLeUYWaYhlG7thokP7U7zpT2+HeXxu
	hjd0tv8PBCiU0U/GfUZ3YVkbfJCK0VIvOAEykkPCraMea3bcZYmWsxCiw7jnIDtCjvxAL5KRhnGpL
	aabCEqbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BlJ-00Gf1X-JD; Mon, 20 Jun 2022 07:23:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BlC-00GezE-5g
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 07:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o3BlA-00028P-Uq; Mon, 20 Jun 2022 09:23:44 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3Bl8-001bCq-SI; Mon, 20 Jun 2022 09:23:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3Bl9-0068FO-IY; Mon, 20 Jun 2022 09:23:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Jun 2022 09:23:40 +0200
Message-Id: <20220620072340.1461618-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220620072340.1461618-1-a.fatoum@pengutronix.de>
References: <20220620072340.1461618-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_002346_251487_7C9A31A3 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] test: self: include new tests in CONFIG_SELFTEST_ENABLE_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have gained some tests, since last touching this symbol, so update
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index a5eac85646b7..680196a4fe29 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -28,7 +28,9 @@ config SELFTEST_AUTORUN
 config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
 	select SELFTEST_PRINTF
+	select SELFTEST_MALLOC
 	select SELFTEST_PROGRESS_NOTIFIER
+	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
 	help
 	  Selects all self-tests compatible with current configuration
-- 
2.30.2




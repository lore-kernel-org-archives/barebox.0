Delivery-date: Mon, 10 Oct 2022 08:16:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm52-0033mi-UI
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:16:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm51-00026k-1a
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:15:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/56xGRBfrLwilvaK+9UH235jD9mgRbKA4UmxY0juvlw=; b=TcxRtVV+r8d5Jhzn5OVCPfrg67
	duHjhvg94s4kJGXmZImA+wZPkFbLyb6TMSNTv6v332+xKL2dwrg04cNuX2J4Nnp3FOOQP4cS1PQnU
	kw07GfV2+2niZ7wyj6k9/NT3yLyw7RR4GcLuun5EpI3LKk0b7diq9AAuwx54sg4aBgi8uCffjwx2Z
	oJtH2OMiAjuXbM+xRq1ooUB9N01xWBOdK5uBMgyGPDYXOHnlzIHNXZbzAeYdHUQC1ggxN4NnlQ58T
	H3tlsG8zI/WJ7lwuXw1d1frlr2Fd7q68oGqfXVbAR4quB+5kTBfkIkxyvlpfocBsYsh89n+oJd4+7
	OyJpeFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3r-00HCa1-M0; Mon, 10 Oct 2022 06:14:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3l-00HCXH-4V
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:14:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-0001hx-RD; Mon, 10 Oct 2022 08:14:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-000dZS-4g; Mon, 10 Oct 2022 08:14:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3i-008kWd-8b; Mon, 10 Oct 2022 08:14:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:14:35 +0200
Message-Id: <20221010061437.2085412-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
References: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231441_205613_F2A2DDE4 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] test: self: always build envvar test when SELFTEST_ENABLE_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The test can cope with CONFIG_ENVIRONMENT_VARIABLES being disabled and
just skips the tests that can't run without. This still has value,
because it tests barebox behavior without environment variables enabled.

Therefore, enable the test always for CONFIG_SELFTEST_ENABLE_ALL=y

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 5d984e30b226..4bf4b874d5e4 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -32,7 +32,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_MALLOC
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
-	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
+	select SELFTEST_ENVIRONMENT_VARIABLES
 	help
 	  Selects all self-tests compatible with current configuration
 
-- 
2.30.2




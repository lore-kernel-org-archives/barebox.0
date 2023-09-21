Delivery-date: Thu, 21 Sep 2023 11:27:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFxr-005ii0-Mb
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:27:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFxp-00053c-OI
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:27:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8cZPFO2TwmUJfAcX9xrDoM8qxNkjH+01EgBga/kRvKc=; b=Ykohx4WmU9XNfvFvWTjhyML6YL
	7woaQKJ9fnnSdq3fibMMwgyCbarEb3PebD3fFseeTUu4XufXW4S+4izrY7abS6s1zCuFFCrChnhJt
	XpY+ECUwCnVUpgPfCppLcp66vu9nhvADuyuv7la9rL3UHDDqPJYudl6wQjI7cLCn4o9NuUyfMXy7i
	G9n9dk6g9oqnLGTE1a/pJTCBZBAq46BjkZQRPprsWt2B4Y00BpDWVKwYAMsJTcZFdrz4mHL20+aBu
	tQXUHT3lQCPZcY6UtWhcuTWHwGHR8Nj58qqpHbmx6CI2yB7RVHATT51OxVMHKTODWP6ugulyYvFlv
	k/+FMJaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFwZ-005aYy-39;
	Thu, 21 Sep 2023 09:25:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFwW-005aYX-2x
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:25:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-0004iF-Hw; Thu, 21 Sep 2023 11:25:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-007tPh-4w; Thu, 21 Sep 2023 11:25:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjFwV-00HO95-0K;
	Thu, 21 Sep 2023 11:25:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:25:38 +0200
Message-Id: <20230921092539.4142293-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_022552_959511_1AC3E5A1 
X-CRM114-Status: GOOD (  12.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] startup: don't skip countdown if consoles were runtime enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Systems with verified boot will disable at least console input by
default, but when presented with an unlock token, they may elect to
enable the console. Currently, the user needs to be really quick with
ctrl+c to abort the boot on the active console, so let's make the system
have a normal count down if a console has been activated by board code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index f96cff41429d..bbba72f89255 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -174,7 +174,7 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
-	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
+	if (!console_get_first_active()) {
 		printf("\nNon-interactive console, booting system\n");
 		return autoboot_state = AUTOBOOT_BOOT;
 	}
-- 
2.39.2




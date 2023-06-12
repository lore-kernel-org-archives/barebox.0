Delivery-date: Mon, 12 Jun 2023 15:03:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD0-003qcS-Un
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCx-0000ia-IL
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NXDJivCNGtv1ODbi0yhHCv9TmjBMz3TPFzpqcw/uxLY=; b=W51GPEIapEi2cgx/lZWOmuWUzr
	buaUYZKtmzPuMsU2uv5fN+z3KETk/cEc6EjZYT6u1v69ez5ulWj668+dTHEgpx9HTFOkJtSHt5yQM
	ZKhUJ/SWyo8MOqbeZ2pwd6yivSyS0jIvJgf2Hv9btbB7YNEBKp0Zlrtq1dAcPq6cNxwV7ztzD0VcQ
	sHuyd9xoyGH7AfctrKRDKCu6gV7r8f8A+h8cEFcTnZ4cUl4VSIDSrR5i00yAzzWJdIz51GvCZ7LXT
	IGcm8sBP8ufMsjDKXcCuJ74nD8bFyM5aETZndlxyryQBcrIvUZkkh7OAeP1BsHGItQY+V01/ch78M
	WXhODCSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCI-0047NL-2O;
	Mon, 12 Jun 2023 13:03:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC7-0047D1-2B
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-0008Kz-Fa; Mon, 12 Jun 2023 15:02:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-006tVd-Oe; Mon, 12 Jun 2023 15:02:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aK9-8M; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:38 +0200
Message-Id: <20230612130239.1087599-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060251_710723_745F2B9F 
X-CRM114-Status: GOOD (  11.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/19] watchdog: imx28: use correct constant for computing timeout_max
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

timeout_max is a 32-bit variable, so storing ULONG_MAX / WDOG_TICK_RATE
into it causes a wrap around on 64-bit systems. As the SoC is a 32-bit
one, it's likely the original intention was for it to be U32_MAX
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/im28wd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 7df2e2d99506..b52e5851750b 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -187,7 +187,7 @@ static int imx28_wd_probe(struct device *dev)
 		return PTR_ERR(iores);
 	priv->regs = IOMEM(iores->start);
 	priv->wd.set_timeout = imx28_watchdog_set_timeout;
-	priv->wd.timeout_max = ULONG_MAX / WDOG_TICK_RATE;
+	priv->wd.timeout_max = U32_MAX / WDOG_TICK_RATE;
 	priv->wd.hwdev = dev;
 
 	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
-- 
2.39.2




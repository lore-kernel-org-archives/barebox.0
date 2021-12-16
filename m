Delivery-date: Thu, 16 Dec 2021 14:03:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqPn-008SIm-Im
	for lore@lore.pengutronix.de; Thu, 16 Dec 2021 14:03:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqPl-0003Y9-MJ
	for lore@pengutronix.de; Thu, 16 Dec 2021 14:03:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chlwITWogUfozE4CH1vvhRok7pOdDviuhC+RlqK1+Uk=; b=4PukwSSUK+IgNW
	wmRNGworDwmxCsdajlj8pyLJtf1u/SkqTdrx1J4crf99z2iJPO3PFgwPXC3wZ4KplJZg5rTjTL+vZ
	UEijASBamPo66FzGXegJ/gGPEQytSpX6NXTJfznvMb+Kr3TTNxusotEE29o1cxeHoB2my/DnC79fv
	2tb1WoxG22Cpkqh1F14y58Mg47koF+FBwYT7Rob7WjCnYb2Ukqm7a1UZvvKYNEsKYaYba9wll2Jhr
	4UnqBkb0981CVoNYB6kr/d9gMwxADtV56h4Q60vHk3zsfldbGli8kmYvQ1VrkkoIuOKchdG7zZl/d
	M/TtxTwd07erycn3y71w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxqOB-005bLx-6C; Thu, 16 Dec 2021 13:01:40 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxprO-005QZY-5S
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 12:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Oa7j8uyjiy4klcN4k4jCO/+AVMfLKqnvXv2p8b1Sug=; b=pSdVVBhBD11WTBBpnplrHnqLEE
 7k7Q3e5/QumSYC0G73pjU2lBQ+u7v3+PELmJYkLvjZPjWamxq0y7x8agxb1vWhaF89MAw64/565hu
 MIXtSbWEEkxD8UFRiipkTAfUb+uveD1VHboMNcRqI61abrej2aiXzx+/VgJEJsSNa7BEo9NjHCta6
 YEq9SKjYBOC1BctA0Nw9EbeX3LVO7ewTdzU0AYI28Nox8qv3Q8aKUXtJEZamOLYWP0HtH5MnRjiXM
 rhU8pGQgukKi78gfaGvhh4cJsev7R97qB1kndpget99fGDyCKnX+7JutzEdyBavMYLpwnB2qkCMU2
 Mh65WqyQ==;
Received: from [89.212.21.243] (port=49948 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mxprF-00HJMj-2C
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 13:27:37 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Thu, 16 Dec 2021 13:26:53 +0100
Message-Id: <20211216122653.2335949-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_042746_573662_DE5AE58D 
X-CRM114-Status: UNSURE (   8.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: imxwd: suspend watchdog timer in low power mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Watchdog timer should be disabled in low power mode. The problem that
was observed was that when the watchdog is started from barebox, kernel
driver doesn't do its own setup again and in turn this bit is left
unset. Moreover, this bit is write-once and has to be set before
enabling the watchdog, leaving responsibility for proper setup to a
party first using the watchdog timer (e.g. bootloader). Issue manifests
itself later on, when device enters low power mode (e.g. suspend) for
more amount of time than what is maximum watchdog timeout (128s). After
that period of time, device will not recover ever as there is no service
patting the watchdog (CPU is suspended). This means that the device can
hang in suspend mode or it performs an unexpected reset.

Thus to avoid suspend/resume problems when watchdog is started already
in the bootloader, align bootloader driver settings with kernel settings.
Kernel driver has been already setting this bit since 2014.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 drivers/watchdog/imxwd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index b2cfd1cd3..653c2d9c4 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -54,6 +54,7 @@ struct imx_wd {
 #define IMX21_WDOG_WSR	0x02 /* Watchdog Service Register */
 #define IMX21_WDOG_WSTR	0x04 /* Watchdog Status Register  */
 #define IMX21_WDOG_WMCR	0x08 /* Misc Register */
+#define IMX21_WDOG_WCR_WDZST	(1 << 0)
 #define IMX21_WDOG_WCR_WDE	(1 << 2)
 #define IMX21_WDOG_WCR_WDT	(1 << 3)
 #define IMX21_WDOG_WCR_SRS	(1 << 4)
@@ -132,6 +133,9 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 	if (priv->ext_reset)
 		val |= IMX21_WDOG_WCR_WDT;
 
+	/* Suspend timer in low power mode */
+	val |= IMX21_WDOG_WCR_WDZST;
+
 	/*
 	 * set time and some write once bits first prior enabling the
 	 * watchdog according to the datasheet
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


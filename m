Delivery-date: Mon, 05 Jun 2023 08:29:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63iZ-00BRq4-K0
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:29:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63iX-00021J-9t
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:29:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s1hVkcOvBDk4KaxzZMWzrR3lI+k2QzgMx5AroGwOIq0=; b=Vl2CtB+NoIjiujglgX9/fUuJz7
	kEFLNWVGYv6Q4/8Zq+s1+3+vh2EcgIhtNihc6pA/mxhrVn0HGaL6dCxKLtllgjvy1rNsqh1w4mnw4
	Eg9VdyUvDBK20JsF+FmNvW9/AicZkUtJQJLitkoX1Q+8+FbWLLQRYQeLmWsJRr/HWyYptAaCo6skk
	QYeQtJtjo8ngnCFa+pJIv/pdna8bsm/lAuUBrDZ9xJ+qHH7ipknpDkQmNICPSCLz1evzFRYTBr1Dn
	MoaZZ4UbwkClVIqXSBXY5Y9TqrAcVZIArQK+WaJWPdoMwpOVCo6tGmZz6K9ryJv3zcb9Djhr8xicX
	f4MaGm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63hK-00ELHm-1Q;
	Mon, 05 Jun 2023 06:28:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63hH-00ELH0-0y
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:28:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63hG-0001tk-36; Mon, 05 Jun 2023 08:28:06 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63hF-005Cp0-EF; Mon, 05 Jun 2023 08:28:05 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63hE-00Gl3k-Ck; Mon, 05 Jun 2023 08:28:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:28:03 +0200
Message-Id: <20230605062803.3994132-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232807_335892_2DBC7E3B 
X-CRM114-Status: UNSURE (   9.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] common: limit CONFIG_TEXT_BASE to 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The linker scripts fail in an odd way if CONFIG_TEXT_BASE doesn't
fit in 32-bit, e.g. reporting that the PBL is greater than
0xffffffff, because CONFIG_TEXT_BASE is bigger than that.

As new platform should just select CONFIG_PBL_RELOCATABLE and
CONFIG_RELOCATABLE anyway, let's enforce the 32-bit maximum in
Kconfig to make errors easier to grok.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 5346ba5a623c..11aabbb509df 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -198,9 +198,13 @@ config TEXT_BASE
 	depends on HAVE_CONFIGURABLE_TEXT_BASE
 	prompt "TEXT_BASE"
 	hex
+	range 0 0xffffffff
 	default ARCH_TEXT_BASE
 	help
-	  The Address barebox gets linked at.
+	  The 32-bit address barebox gets linked at. This is forced
+	  to zero for relocatable barebox and fixed up at runtime,
+	  so barebox is executable on arbitrary addresses (given
+	  sufficient alignment).
 
 config BAREBOX_MAX_IMAGE_SIZE
 	prompt "Maximum size of barebox"
-- 
2.39.2




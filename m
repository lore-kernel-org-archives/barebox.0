Delivery-date: Fri, 09 Dec 2022 08:11:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXf-00FmAQ-Fy
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:11:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXe-00061c-PD
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:11:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jlFjP/gOuvR+0Ce/VZafIAi7a9PGlcwnxTRJ/m5eE5Y=; b=WZ4LGM2kGb3t/Vbxp1EDVpR0sg
	JPI3Q35w+1ExNFIEi10I7KKwQQx9n0JlFLGo8RMoj8nkUYgWwMAIIJTsyMxW7pL44qz31Geho9s6D
	FrmRH3b+em3uii/ChIMwJ2yJQ+Y+/TEn/eU9VNtcfgf2QErBRhrc0h5BlwYK62zpgzDq8lSAQ3oF2
	lu6md/utmiU5FUI7RKU8ERXNkIofeCT1c8j/2LcP4yEVOuE9FoO/6dPnez+GXx6fd6HzpaJAi4VMR
	H+oD2q3JsOHMdfjQveKMDdOayZt6ijIGieQoGrnIgLK5+PIc4tR/jMpT+bB5p1cwgBBqy08rtZK3c
	bdI1DTgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWU-004suH-0W; Fri, 09 Dec 2022 07:10:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWK-004sqj-Nc
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWH-0005X2-MB; Fri, 09 Dec 2022 08:10:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWG-003JMT-B4; Fri, 09 Dec 2022 08:10:05 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWF-00FnVE-UW; Fri, 09 Dec 2022 08:10:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Dec 2022 08:10:01 +0100
Message-Id: <20221209071002.3765134-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
References: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231008_861991_678B6C00 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] clk: add prepare/unprepare helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox doesn't use interrupts, so it need not differentiate between a
possibly sleeping prepare/unprepare and an atomic enable/disable.

Provide a wrapper that just expands to the already existing functions to
simplify porting of Linux kernel drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 42c64d650d1f..afa62cdccc02 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -71,6 +71,7 @@ struct clk *clk_get(struct device_d *dev, const char *id);
  * Returns success (0) or negative errno.
  */
 int clk_enable(struct clk *clk);
+#define clk_prepare_enable(clk) clk_enable(clk)
 
 /**
  * clk_disable - inform the system when the clock source is no longer required.
@@ -85,6 +86,7 @@ int clk_enable(struct clk *clk);
  * disabled.
  */
 void clk_disable(struct clk *clk);
+#define clk_disable_unprepare(clk) clk_disable(clk)
 
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
-- 
2.30.2




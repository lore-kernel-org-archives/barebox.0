Delivery-date: Mon, 25 Apr 2022 12:10:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivg5-00EdLt-0Y
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 12:10:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivg2-0002lV-92
	for lore@pengutronix.de; Mon, 25 Apr 2022 12:10:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5WCansyNSKlle1gfmSh73el4H1AnljBrk/IbXc4mSEw=; b=J0cD4+2YqodS4A
	r1TYCnEztRdA+YELWfnlRrN/WCbRTXpadZjM2H4dHUKlbpXKNDRHdRBzdK+DJUKUYXbfxBfUvISFq
	ioPddHcvsb3gpnhorW7MVFhjSt8ViyAlU9wnbFzSnRBtz3Wg2L/3/ITXJNcquS8tK4aQ3+bGk+N/q
	PhGyUBqFtvL+TfwdcrWPUxTAyjswf1ioeiIpeonKhnSLtAAb106YkIF4WjkUjw1opbiEYnxhRAXTD
	3KKcoqLys5QK+fLdoInidT66QxWwo/udGqFWwx38YKFssRI/3tSi84QdCkoDDoJPPbZirGKAQg3P1
	erHKXnuJS6hJTwIIlatg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivel-0095Po-JP; Mon, 25 Apr 2022 10:09:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niveg-0095Ov-Ky
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 10:09:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nivef-0002Zq-DW; Mon, 25 Apr 2022 12:09:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1niveg-0057xE-5F; Mon, 25 Apr 2022 12:09:16 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nived-001AFo-Sh; Mon, 25 Apr 2022 12:09:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 25 Apr 2022 12:09:15 +0200
Message-Id: <20220425100915.277701-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_030918_738902_AD94DD6A 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: i.MX8MP-EVK: Fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix misspelled SoC name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index fec366e0de..366c1de500 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -11,7 +11,7 @@ Not including booting via serial, the device can boot from either SD or eMMC.
 Downloading DDR PHY firmware
 ----------------------------
 
-As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
+As a part of DDR intialization routine NXP i.MX8MP EVK requires and
 uses several binary firmware blobs that are distributed under a
 separate EULA and cannot be included in Barebox. In order to obtain
 them do the following::
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


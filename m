Delivery-date: Mon, 19 Apr 2021 14:39:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYTBa-0006Qd-ED
	for lore@lore.pengutronix.de; Mon, 19 Apr 2021 14:39:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYTBZ-0001Nv-79
	for lore@pengutronix.de; Mon, 19 Apr 2021 14:39:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4TtNZXut1CreDiCw+ZsekEHRjNDsk239J7U1HzYYwc=; b=Lh+SJwy7xyyAIM
	Q/AOobURaTa+CuqlqPgrObEl0VIIbi1aok07F++KEDNfxVgQg5iQbOdS2P5aSh0AxCN2VlFrXhdyx
	MgEBY9Gg4+P6yOrloHLDnfmmTGZjWC1EREdlxMh22MxFPLfYRtAqsjnaGUJJOf0PF47afRPS/lp4e
	8lRMScn7Dle01616DffmLagmTrJk3ut0fjwn8BRFI2ubVZk8NnXKWp0qnqmi5Wv0jr5kGviO44whT
	DyzKM3f8DIWZ6e72JNgSkfeqd+pQ8qjwVkmRu5FknM37dFUYi7Q+z5FWEzKKUl6YxiR0gyp9Gjjrj
	FASDhSBEmVg/PEmDAu2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYTAa-009rwE-GB; Mon, 19 Apr 2021 12:38:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYTAX-009rvu-8L
 for barebox@desiato.infradead.org; Mon, 19 Apr 2021 12:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XmZ2vLltDrY9F1n7qX1o7hij0BzMIzEkYHHWyeIhcAA=; b=V9LfM8zTaTQ3VLWsEqtIH5/zbV
 uGjpw3eHHe5CCSZY+wmSjov7RPC6KkNdrHYpYfQtFBaqTniGPqGedVSS7K7sze9nWCiteRfMdBJbq
 mfAgzeHGQL557dCltpUt/bAWlIVbR9n7vvH18L9RtmufA8OD6sgv+n+SDmYz42/oVCPGR3WsnMMZP
 CzrlKnqJhA45brqoh5CIgiVtFjbXN/m4MUBZb+509YXl144uRWccMgEGuTRAOQCRGX6VvpzsOA3Jj
 SDsftVSweu+MVI8Agz2S/Opx/ykth/x2nnhLdaR5fwShkbUwN+FS3Z56FE6OmkO14e0m13ahsCnxU
 ngRPdmWg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYTAR-00BMHF-US
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 12:38:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lYTAI-0001K0-6O
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 14:38:10 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1lYTAH-0000l1-T6
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 14:38:09 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Apr 2021 14:37:47 +0200
Message-Id: <20210419123747.2373-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_053819_996365_BF3613B8 
X-CRM114-Status: GOOD (  11.12  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: imxwd: get and enable clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This it (at least) necessary for i.MX7s or otherwise barebox will hang
when trying to access the registers of WDOG2/3/4.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index b2cfd1cd3a31..26c62b7bcb31 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -21,6 +21,7 @@
 #include <restart.h>
 #include <watchdog.h>
 #include <reset_source.h>
+#include <linux/clk.h>
 
 struct imx_wd;
 
@@ -224,6 +225,7 @@ static int imx_wd_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct imx_wd *priv;
+	struct clk *clk;
 	void *ops;
 	int ret;
 
@@ -237,6 +239,15 @@ static int imx_wd_probe(struct device_d *dev)
 		dev_err(dev, "could not get memory region\n");
 		return PTR_ERR(iores);
 	}
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = clk_enable(clk);
+	if (ret)
+		return ret;
+
 	priv->base = IOMEM(iores->start);
 	priv->ops = ops;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


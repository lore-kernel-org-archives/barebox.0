Delivery-date: Mon, 19 Feb 2024 18:29:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sn-00ExsI-06
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:29:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sm-0000pA-Cs
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:29:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GRtRCE/oAyJDywnuRo2kNHk4IQtrmcBf0k9ZN0mgf/w=; b=XnEyV+p3XkRRl+bMYK9vUPT7b0
	+UgihU6zgR8SKw7wh6GCXNrJGJLEyU2X5YlnxYeZyrgTdqrX6pmxFy1evbr0P05FCusUoMmh/nLA7
	OLY9/sZu+QhCVAc5+Woly/Iq7EFfC7tTNTQmOXUqXz50pirlUT3vEd7JoUOpfyr6y5t/3TPa09bkO
	xF2aQY8T24yK7HhxiGZSiBN+N9qzifkQWC86648/mHJ4gSmNnujdaC7qPHl+jGqrQtK/MYEfR4I/r
	BPFWP3ODUzVgR4G2IaZw0bt+M0siDiXLHxk0Hx/+XfoKe10vBZQsTPlwnIOiOvWETozPz0z6h3La5
	n/gfw+bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SN-0000000BWKn-1RXQ;
	Mon, 19 Feb 2024 17:29:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SK-0000000BWIu-0WzE
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:29:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-0000Iv-UI; Mon, 19 Feb 2024 18:29:26 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-001h0o-Hx; Mon, 19 Feb 2024 18:29:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-00Fw3A-1V;
	Mon, 19 Feb 2024 18:29:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:29:22 +0100
Message-Id: <20240219172925.3798024-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
References: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092928_239120_303D0C1A 
X-CRM114-Status: GOOD (  15.68  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/5] deep-probe: treat any probe deferral as permanent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As the comment notes, "-EPROBE_DEFER should never appear on a deep-probe
machine so inform the user immediately.". Yet, we still add the device
to the deferred probe list to try it again later, which should only make
a difference if there's a bug with the deep probe mechanism itself.

Therefore, never use the deferred probe list on deep probe system and
directly report any probe deferral as permanent.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/base/driver.c | 33 +++++++++++++++++++--------------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4884e8fda8ef..bb9699ee3795 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -106,6 +106,15 @@ int get_free_deviceid(const char *name_template)
 	};
 }
 
+static void dev_report_permanent_probe_deferral(struct device *dev)
+{
+	if (dev->deferred_probe_reason)
+		dev_err(dev, "probe permanently deferred (%s)\n",
+			dev->deferred_probe_reason);
+	else
+		dev_err(dev, "probe permanently deferred\n");
+}
+
 int device_probe(struct device *dev)
 {
 	static int depth = 0;
@@ -136,17 +145,18 @@ int device_probe(struct device *dev)
 	case 0:
 		return 0;
 	case -EPROBE_DEFER:
-		list_move(&dev->active, &deferred);
-
 		/*
 		 * -EPROBE_DEFER should never appear on a deep-probe machine so
 		 * inform the user immediately.
 		 */
-		if (deep_probe_is_supported())
-			dev_err(dev, "probe deferred\n");
-		else
-			dev_dbg(dev, "probe deferred\n");
+		if (deep_probe_is_supported()) {
+			dev_report_permanent_probe_deferral(dev);
+			break;
+		}
 
+		list_move(&dev->active, &deferred);
+
+		dev_dbg(dev, "probe deferred\n");
 		return -EPROBE_DEFER;
 	case -ENODEV:
 	case -ENXIO:
@@ -155,7 +165,6 @@ int device_probe(struct device *dev)
 	default:
 		dev_err(dev, "probe failed: %pe\n", ERR_PTR(ret));
 		break;
-
 	}
 
 	list_del_init(&dev->active);
@@ -382,13 +391,9 @@ static int device_probe_deferred(void)
 		}
 	} while (success);
 
-	list_for_each_entry(dev, &deferred, active) {
-		if (dev->deferred_probe_reason)
-			dev_err(dev, "probe permanently deferred (%s)\n",
-				dev->deferred_probe_reason);
-		else
-			dev_err(dev, "probe permanently deferred\n");
-	}
+	list_for_each_entry(dev, &deferred, active)
+		dev_report_permanent_probe_deferral(dev);
+
 	return 0;
 }
 late_initcall(device_probe_deferred);
-- 
2.39.2




Delivery-date: Tue, 01 Oct 2024 12:49:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRl-004w7X-1r
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:49:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRm-0007Rj-2Q
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:49:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIb16VkoepVx3qHUwYyPyd77yZ4FH6mnfkgRP7zqTSo=; b=0ojz8kOyUDUklH
	5KZQUq/DlWBOTQG9sE4Rf2qTQAj0xiqMs5yoNI7y48kuTfR2FnJK8wej2zyoCVBbEmOzdO0PFYzuD
	GjWSwYWS8VoQbHoJa1Bxps+pVR9n8Mv0JQD678ctTWebssXx5zwVL+jlQ/13A4nWdCHkI1X6ICuTC
	JxaxHC2V3Ex/XESWOozuyYMMIZXy+4px2R8rew/LuFZUR2ikbmJoHdjUP0KR3YosuXybS1BZyeyC2
	wRHt2YfJB6WS+WTkin0fPGamJA5LZOEIR4kTRh1K5EyKUcq82F1HohCitFMswm/pTGlYkTar6aUe9
	sHw2fhIl34TmOWREWXZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaRK-00000002P8T-1mHW;
	Tue, 01 Oct 2024 10:49:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaQ1-00000002Ozy-2rM5
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:47:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ0-0006TV-Ie; Tue, 01 Oct 2024 12:47:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ0-002r5U-5N; Tue, 01 Oct 2024 12:47:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ0-004U9y-0D;
	Tue, 01 Oct 2024 12:47:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 12:47:37 +0200
Message-Id: <20241001104738.1069237-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241001104738.1069237-1-s.hauer@pengutronix.de>
References: <20241001104738.1069237-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_034749_748935_5CCC1E5C 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: Wolfvision PF5: of_probe only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When overlays have been applied we have to call of_clk_init() and
of_probe() once to have the changes from the overlays take effect.  We
only have to do it once though after all overlays have been applied, not
after each overlay.

Doing it after each overlay has the undesired side effect that the VOP2
will be probed right after the io-expander board has been detected. At
that time the display overlay is not yet included, so the VOP2 probes
without the display and it won't be available later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boards/wolfvision/common.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
index 9a56b39b01..fe3417e81f 100644
--- a/common/boards/wolfvision/common.c
+++ b/common/boards/wolfvision/common.c
@@ -48,8 +48,7 @@ int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
 			return ret;
 		}
 
-		of_clk_init();
-		of_probe();
+		return 1;
 	}
 
 	return 0;
@@ -106,6 +105,7 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
 				int num_extensions, char **overlays)
 {
 	int i, hwid, ret;
+	bool do_of_probe = false;
 
 	ret = of_device_ensure_probed_by_alias("saradc");
 	if (ret)
@@ -130,12 +130,19 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
 		if (overlay->name) {
 			pr_info("Detected %s %s\n", overlay->name,
 				extension->name);
-			wolfvision_apply_overlay(overlay, overlays);
+			ret = wolfvision_apply_overlay(overlay, overlays);
+			if (ret > 0)
+				do_of_probe = true;
 		} else {
 			pr_warning("Detected unknown %s HWID %d\n",
 				   extension->name, hwid);
 		}
 	}
 
+	if (do_of_probe) {
+		of_clk_init();
+		of_probe();
+	}
+
 	return 0;
 }
-- 
2.39.5




Delivery-date: Wed, 29 Mar 2023 12:58:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phTVc-001CLI-IA
	for lore@lore.pengutronix.de; Wed, 29 Mar 2023 12:58:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phTVc-0002IC-Fm
	for lore@pengutronix.de; Wed, 29 Mar 2023 12:58:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mXhVJkSyBpEiMIrpM46Dh7t8ht83aCxtqy3ltg0+kSo=; b=IhOxpipp/H1NYjDp5Q2L3RSEee
	f6qWeQ7BvlouniQjCVzIAZ3vL6Yi+DMcKBE7L9hw5bREyVnVXSR3JeRhrt7P78tFeVIXxWLG18qhM
	Zbs6a+95l9xmtTPcelAhc32PBf7R+57uYEOAhf+MIVa2MNvgfjhZwN/cFjgz453BuIJhnFO3f5Q9C
	YspnCkmkSpOw3r6FC322lHDKB7m1o4E/OaSUj+USKHt/xkSSx6o3n0D7hxxnkWdAYi6MR6XKI+HPk
	Zl66Bq4x1vwqwGmjW0bzrACGeFAFiJ3ozcV4PW2lIMNateCHRV6lq2eR+AA5bOl9ZlE5HUIlQkJ5E
	L7L1Ag/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phTUG-00HX3G-1Q;
	Wed, 29 Mar 2023 10:57:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phTUC-00HWzp-2m
	for barebox@lists.infradead.org;
	Wed, 29 Mar 2023 10:57:02 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phTU4-0001sl-M9; Wed, 29 Mar 2023 12:56:52 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 29 Mar 2023 12:56:36 +0200
Message-Id: <20230329105638.1258096-2-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329105638.1258096-1-p.zabel@pengutronix.de>
References: <20230329105638.1258096-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_035700_896393_AE118774 
X-CRM114-Status: GOOD (  12.37  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] video: Add of_get_display_timing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a port of the kernel of_get_display_timing() that writes a
struct fb_videomode instead of struct display_timing, which we
don't have.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/of_display_timing.c | 22 ++++++++++++++++++++++
 include/fb.h                      |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 6fe1e1b08b6a..6082d454932d 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -98,6 +98,28 @@ static int of_parse_display_timing(const struct device_node *np,
 	return 0;
 }
 
+/**
+ * of_get_display_timing - parse a display_timing entry
+ * @np: device_node with the timing subnode
+ * @name: name of the timing node
+ * @mode: fb_videomode struct to fill
+ **/
+int of_get_display_timing(const struct device_node *np, const char *name,
+			  struct fb_videomode *mode)
+{
+	struct device_node *timing_np;
+
+	if (!np)
+		return -EINVAL;
+
+	timing_np = of_get_child_by_name(np, name);
+	if (!timing_np)
+		return -ENOENT;
+
+	return of_parse_display_timing(timing_np, mode);
+}
+EXPORT_SYMBOL_GPL(of_get_display_timing);
+
 /**
  * of_get_display_timings - parse all display_timing entries from a device_node
  * @np: device_node with the subnodes
diff --git a/include/fb.h b/include/fb.h
index bf5f688342fd..15bb74b99576 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -147,6 +147,8 @@ struct fb_info {
 	int shadowfb;
 };
 
+int of_get_display_timing(const struct device_node *np, const char *name,
+			  struct fb_videomode *mode);
 struct display_timings *of_get_display_timings(struct device_node *np);
 void display_timings_release(struct display_timings *);
 
-- 
2.39.2




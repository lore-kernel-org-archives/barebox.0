Delivery-date: Mon, 11 Aug 2025 14:30:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfX-009Kko-0O
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfD-0006Hj-7E
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xcGaguHfbk204+Zx5JgevZb0sV9VcvA3ygeSX1zRUUA=; b=cMXaZ3jVZWSLi4ecotPEmGPqBt
	lb5vIeHB5wlb8K58LHAi0bN0ppRKDyTmqJc+rqudDYAiIJd5W75BPK44yj6ndGUFI5IQgJNr5KTaX
	uGfrv10VM+D3Kb2kiN8EO233XZ+ni+pbaTX+ih1Vl7vf6Q8UXjQ3nh808LXWew2tUAq9qiVoRfQd9
	XDj4riwXAxbnCrsoUb8oYKjvklsWlTmGJzG2Y5CSYzfIuZCrJXbEJ6mMBrFJ1szRSWvpeqXK3raA6
	gT1bVhivunIV2H/JGPZykNYK1/5VsHoss5XMVHMMCqO3GTZEJOh+R+PI9lQCscrllEltTizdcvg8H
	n68br6gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe5-00000007eAv-18M5;
	Mon, 11 Aug 2025 12:28:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-00000007dbR-2Byl
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdh-0004WP-7F; Mon, 11 Aug 2025 14:28:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:08 +0200
Message-Id: <20250811122824.1667791-29-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052834_620180_EFF0FA04 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 28/44] video: add devices to new fb class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We maintain no global list of framebuffers, but it's a useful thing to
have if only for informational purposes. Add a struct class for this use
case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/fb.c | 4 ++++
 include/fb.h       | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 2ff5bbcfe290..939368a0de68 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -9,6 +9,8 @@
 #include <fs.h>
 #include <init.h>
 
+DEFINE_DEV_CLASS(fb_class, "fb");
+
 static int fb_ioctl(struct cdev* cdev, unsigned int req, void *data)
 {
 	struct fb_info *info = cdev->priv;
@@ -346,6 +348,8 @@ int register_framebuffer(struct fb_info *info)
 	if (ret)
 		goto err_free;
 
+	class_add_device(&fb_class, &info->dev);
+
 	dev_add_param_bool(dev, "enable", fb_enable_set, fb_enable_get,
 			&info->p_enable, info);
 
diff --git a/include/fb.h b/include/fb.h
index 01c5ce0bf377..1e3b330ab725 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -225,4 +225,6 @@ void fb_of_reserve_add_fixup(struct fb_info *info);
 int register_fbconsole(struct fb_info *fb);
 void *fb_get_screen_base(struct fb_info *info);
 
+extern struct class fb_class;
+
 #endif /* __FB_H */
-- 
2.39.5




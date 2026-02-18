Delivery-date: Wed, 18 Feb 2026 13:21:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgYH-0032qL-2D
	for lore@lore.pengutronix.de;
	Wed, 18 Feb 2026 13:21:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsgYI-00034Q-1d
	for lore@pengutronix.de; Wed, 18 Feb 2026 13:21:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Z60JmRyUUjsmfnTE3AEoRQHD6vZaBaliLBecxiQXYY=; b=PGYJPwnu07MUUoBBqUvxaLKSRr
	oXIN85oLxpwHFRJYgy4Ee82sQax111S/YGpfrTHYZi771SkOMzVB33Q/qMX0C1rTR9iI3SbF+wOfW
	J6rf6hPk5P3Dd4V9gpeZZf2wqmolK8hzeli25GcR34w2GtXbk0Gz4W176tIkdr8/EqQkxUglx44v2
	c2z3KerbXooVM/+6PBb2sMwVJRO+q27D5k2nlGApRMqRwbqi/oStbh6NLbnzKUkkGs9BCpY3qBsqt
	um3PETfHxK/1Wk7FO9ouUMDNKrCL3U1axZBA/M6WAHZGXD4hD4cYWMcxZ3/qkirrUwIg6NIFaUznx
	qBav4/4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgXv-00000009mZO-2PqS;
	Wed, 18 Feb 2026 12:20:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsgXt-00000009mYG-2A1H
	for barebox@lists.infradead.org;
	Wed, 18 Feb 2026 12:20:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vsgXq-00030u-Cn; Wed, 18 Feb 2026 13:20:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vsgXo-001P8j-2k;
	Wed, 18 Feb 2026 13:20:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vsgXq-00000003Ypr-0PIv;
	Wed, 18 Feb 2026 13:20:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 18 Feb 2026 13:20:40 +0100
Message-ID: <20260218122041.848881-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_042045_552093_FA9D5B05 
X-CRM114-Status: UNSURE (   8.49  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] of: overlay: propagate error unflattening DTBO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_unflatten_dtb() may return an error pointer when parsing of the
device tree blob failed. Error pointers were not checked in
of_overlay_apply_dtbo() leading to a panic when they were later
dereferenced in of_copy_node().

Add an early exit to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 34543403e9ba..4345489b3b40 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -351,6 +351,9 @@ int of_overlay_apply_dtbo(struct device_node *root, const void *dtbo)
 	int ret;
 
 	overlay = of_unflatten_dtb(dtbo, INT_MAX);
+	if (IS_ERR(overlay))
+		return PTR_ERR(overlay);
+
 	ret = of_overlay_apply_tree(root, overlay);
 	of_delete_node(overlay);
 
-- 
2.47.3




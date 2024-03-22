Delivery-date: Fri, 22 Mar 2024 17:50:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6G-0007NJ-31
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6G-0002QM-4a
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+KKxfBsxuoUdSaVEBfikxdpBJt3VEnlyl65kDBVh7rM=; b=0kXjDa8/zd+J6LMirACkMD7rxs
	HFhtZYhrwS0QCDrxrUCkpxd5i3S+56jsHutzjaTeq6AfgjJ/4DiLvjHmZ78KK2Y2LJ3lBGLaruVFD
	9NEjqmujYUCb2PvFaTntY1aJdTYw8+6jg+tKiGLJRjooc+HAtYl0Htk9aXyHfLABm8XdSX/k1TcI3
	JSOEPQ8DMCrfb3QKYHqc0PGrpbHc4UNGt8ho9rs0A4T7hJ/I5a6dv7FJfGdjda+Sz8/OQGQSLFSiz
	9QDufnOYeHi6E80gnm/SwY+bfib+FfE2X/gIX6C3xwgfR79VBN5iiAyu8DNzXjtJw1pwWul+HxVl1
	Y9PZuecw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5q-000000081GP-46lX;
	Fri, 22 Mar 2024 16:50:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5d-00000008171-068O
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:50:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Sd
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:52 +0100
Message-Id: <20240322164953.1772129-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_193963_17B8C3B0 
X-CRM114-Status: UNSURE (   7.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] of: overlay: drop unnecessary empty check in of_overlay_global_fixup_dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is now done during of_overlay_global_fixup() so we can drop it
here.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index c8e70ab00091..150b07daccaa 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -463,9 +463,6 @@ static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl
 	if (*ovl_dir == '/')
 		return of_overlay_apply_dir(root, ovl_dir, true);
 
-	if (*ovl_dir == '\0')
-		return 0;
-
 	dir = concat_path_file(of_overlay_basedir, ovl_dir);
 
 	ret = of_overlay_apply_dir(root, dir, true);
-- 
2.39.2




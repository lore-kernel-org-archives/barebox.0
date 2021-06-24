Delivery-date: Thu, 24 Jun 2021 10:55:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL97-0007JV-9j
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL96-0002Em-9o
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:55:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6/+paj6rq3B9wyKyJ8o/ZjnQGrpWfqpodpgbL+KXAw=; b=Lgun7dQv8yAOPS
	ca75Eyq1hLUsJxoYyIeT14Qe4nuuhNedjpC++uNqbWaHQE5QwUvlscSTXCGNT3j55QV/3wOGKqgsa
	vx0HCORcFr5sw4QbFNUqi3Zfv3PRH+h0SZyciQxnt5cpHUIZA+7RGu9M+6sBQaTeVbFr0NzLygEr2
	3CuZO1vzu+iyu6d4vNZPV70sW90ij4FCMlceko3oWGjki6FOu1GhnZ4mi/fYyLHymCnRaIZBTcUcK
	jBeq9MPw1d9sfCysMznXFEiw8cJhUlYe8jAhezDYadCevOeZHt9T8wPKFv/CxvOEir+q5/Kwl+X1g
	725O+ipq5NcQsmsZZcQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL7d-00DYI4-6M; Thu, 24 Jun 2021 08:54:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL6A-00DXLr-Vs
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sT-DB; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000cF-D2; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:20 +0200
Message-Id: <20210624085223.14616-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015235_108317_43679DC2 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/18] blspec: Apply overlays from rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This sets the overlay search path to $BOOT/overlays during starting
an bootloader spec entry with the effect that overlays from there
can be applied.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index ca96a45487..6cb1fea9e8 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -51,7 +51,7 @@ static int blspec_overlay_fixup(struct device_node *root, void *ctx)
 
 		path = basprintf("%s/%s", entry->rootpath, overlay);
 
-		of_overlay_apply_file(root, path);
+		of_overlay_apply_file(root, path, false);
 
 		free(path);
 	}
@@ -139,6 +139,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 			(entry->cdev && entry->cdev->dev) ?
 			dev_name(entry->cdev->dev) : "none");
 
+	of_overlay_set_basedir(abspath);
+
 	old_fws = firmware_get_searchpath();
 	if (old_fws && *old_fws)
 		fws = basprintf("%s/lib/firmware:%s", abspath, old_fws);
@@ -154,6 +156,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	if (overlays)
 		of_unregister_fixup(blspec_overlay_fixup, entry);
 
+	of_overlay_set_basedir("/");
 	firmware_set_searchpath(old_fws);
 
 err_out:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


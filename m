Delivery-date: Sat, 30 Oct 2021 16:18:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpC2-0002WB-1x
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:18:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpC1-0007wS-67
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:18:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pO6n3BoFh3GDW+E8M4H2s5WUuaG9jYGulN8R08rAAqU=; b=vujuQhj+Iuh4/7
	E61rmTNgonR+TYv0947s90JmtcM4S597m5rVRPbCdgEvcpBCQAlevTjfK7pi3RLiSqzDj+uDYYmtr
	YOVuFlEJUpalA5LVktqQGE1/RwQixuheZtvCaIO4zJo9vOkn8JGsvoKPX0jhJ6jSIcsvIA5XBJ8QD
	aujmXHtT4o11l9romST2I4zBRDk+AH9hSrzkD1vZUjDGL9Ptz5BvfDe1bYXi9FoU65mkhJ6z/euVO
	iXAeL++ULcCvoVOPhP4rELaxxnITpc49hZQaP87ABckChPBebG6ngCZyJejZU6RdYM3JfycH2lgzf
	ufR87Nge747QE/ZSBFKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpAa-00D8eJ-Fv; Sat, 30 Oct 2021 14:17:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpAV-00D8dj-M2
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAS-0007jI-Dp; Sat, 30 Oct 2021 16:17:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAR-009GC5-Ux; Sat, 30 Oct 2021 16:17:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:07 +0200
Message-Id: <20211030141707.2207152-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071711_739284_DC1F59F4 
X-CRM114-Status: UNSURE (   8.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: ramfs: drop free of unused dev->priv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This probably was a benign free(NULL) so far, but it serves no point, so
drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ramfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 14ba87766098..bdaa91dd9e1b 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -447,7 +447,6 @@ static int ramfs_probe(struct device_d *dev)
 
 static void ramfs_remove(struct device_d *dev)
 {
-	free(dev->priv);
 }
 
 static struct fs_driver_d ramfs_driver = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


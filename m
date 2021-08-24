Delivery-date: Tue, 24 Aug 2021 11:53:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIT7d-0002nN-Tk
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 11:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIT7b-0006gD-7N
	for lore@pengutronix.de; Tue, 24 Aug 2021 11:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odmew6/d3WjIwe4/ryGVGFJUB7ENtY9a3EmjCB2edEU=; b=DtX4PGdbhTW0Bv
	B2/K0hOgCV08GpZ5dXs5+4nEoATvs3Bz2QgVawV1EFgmtBevOD/NxIT/XOwCZVIcRhX2aTrTObDCR
	YuQGhb/6xkRvpgrRzDGq4n+fDonyRFXpsyqF3OnIpd4nlUh5NB44ZmeAbdObtpa4MKeQWqOS9aEtZ
	t7alZsQ7rUYEaVIAbPXhfTZ7fTbkkx/AcqbP5npAEyEpaiTCm/9Z02X0vUEdxSBZZ1Sdg06PNIV55
	8/Z2eSZtKK6m8NWKtijm/QHizyRk4oUIbSei6/++FMi5kI3evOiKal8D0VNSBxpXeLneGLVyDhnW6
	LOWxcwUVAZu5GEuAKsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIT5i-002MrG-79; Tue, 24 Aug 2021 09:51:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIT5d-002MqY-AJ
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 09:51:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIT5U-0006PT-4S; Tue, 24 Aug 2021 11:51:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIT5T-00049T-SE; Tue, 24 Aug 2021 11:51:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Aug 2021 11:51:19 +0200
Message-Id: <20210824095119.15907-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210824095119.15907-1-a.fatoum@pengutronix.de>
References: <20210824095119.15907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_025129_403782_DEB932E4 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] video: simplefb-client: make probe less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Printing the framebuffer base is unnecessary because it's already
contained in the dev_printf prefix. Make the message shorter
and only print it on success.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simplefb-client.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index e1f241d4d874..2367713ba4ae 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -122,9 +122,6 @@ static int simplefb_probe(struct device_d *dev)
 
 	info->fbops = &simplefb_ops;
 
-	dev_info(dev, "framebuffer at 0x%p, 0x%lx bytes\n",
-		 info->screen_base, info->screen_size);
-
 	info->dev.parent = dev;
 	ret = register_framebuffer(info);
 	if (ret < 0) {
@@ -132,7 +129,7 @@ static int simplefb_probe(struct device_d *dev)
 		return ret;
 	}
 
-	dev_info(dev, "simplefb registered!\n");
+	dev_info(dev, "size %s registered\n", size_human_readable(info->screen_size));
 
 	return 0;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


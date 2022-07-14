Delivery-date: Thu, 14 Jul 2022 09:29:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHX-007JX8-5S
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHV-0002GD-8D
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cg59Ld4TytddXDKdp6ItqQ73durMBmI+TYKxFvT3BF0=; b=qcekXsN31UoCQjZCdjvjZ/KqjS
	gEDj/Y2kNbXUNRejVRAM7KCgw2a6VCOgt4Wde6Lmjd4hb83Xd83yQYnN13R9ylc1L4caf012yR7ED
	4Pz3ZckBicQ9fSFnj2/iKFbiRFOMyZ7iAllZ8LZ1eKiWe1Nej26XJlc4on+QjiqwE0cIuPFndzHPp
	jEOLGSLnB7HDgvaVtIGgjD+wjjhBv2aM3JA+89GmQBwfasPU4aaKpi+z0BFXPHOzeB2QwS/7v+Lyb
	2n81oHag6/LsacTzWBc2IooZ1Xm4f9L6sn3ggZP16CcZ0uSrVYZ5aJBAxE9wfRwF3K87QAghlxpMT
	ezh17Mag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtG7-00BodY-MB; Thu, 14 Jul 2022 07:27:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFx-00BoVm-VM
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001hZ-Is; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqh-RY; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1W1-Dg; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:19 +0200
Message-Id: <20220714072722.2863571-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_066580_947251B1 
X-CRM114-Status: GOOD (  16.78  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/12] imx-usb-loader: Fix first stage length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On most SoCs the IVT header is not at the beginning of the image but at
offset 0x400. As we skip the leading 0x400 bytes while uploading we can
substract that offset from the image size we upload. This shouldn't make
a difference now, but in future we might change the two-staged upload
process: Now we upload the PBL once and afterwards the full image
incuding the same PBL again. It would be more elegant to upload the PBL
only once and only the rest of the image afterwards. If we do so, it it
important to exactly upload the first stage so that barebox on the other
end receives exactly the second stage at the offset it expects it to be.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index b2c835225c..f4f13d5cc7 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1271,7 +1271,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 
 		bd = (void *)_bd;
 
-		*firststage_len = bd->size;
+		*firststage_len = bd->size - (hdr->self - bd->start);
 		*plugin = bd->plugin;
 		bd->plugin = 0;
 
-- 
2.30.2




Delivery-date: Fri, 27 Sep 2024 12:43:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RV-003N3i-2l
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RJ-0005m2-4C
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+qzAlu+qeYlVdaDyVvc6/tZYc3motM8BwCRSIihglE4=; b=HhGE98DQVyPut6SK5k8Y6j41w0
	HsInY/cgPp/+aWiaIsH+nWAphaoagNQXQ63twuPvy+V5oqhK6S/NvowQzl+DZFh0TpMDrwZFXefZm
	PcluyCvbpQ511ybvwHZqu9GTIPx3XIo5/Bq+L+uh/Uo3xoOLOb8k64El3h8j1ADGnEtIxmp9mCd18
	CdAb4k7/8tbHzV86KhSZXnRSm1bJdh6qIiS8kuJO2bbFMCvjtUCSRGY3PAWLnmD8GOT7nGLMdy1a4
	y6U5yXHRk9UDIBdzgVZxGx3aATDFpYUmeKuG3a7UEZgdNhwAvn/XWqI+DeGBSpASHA+gxHTI2p47p
	6zLKHodA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QO-0000000Aqrd-1dMW;
	Fri, 27 Sep 2024 10:42:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ov-0000000AqVe-0hDI
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+qzAlu+qeYlVdaDyVvc6/tZYc3motM8BwCRSIihglE4=; b=mJy9nwHo+1QdkCR++OKcvDdDGg
	WZfwbm8fLUJM/mcrQhj6j2DLZ+YyHCnfiWody3Nnf4V9t15JgX9mxw2tV9KN+Bli2Ws16aCX3kgId
	UnT6Z8FfOImRvCv3wJ9bIpd2gjqFdyaGLZrpxDl8JMoG8KCGLBZMnn2ehNxuHoRk/9Us1m/s2wY+2
	RfmGpTThJeDo0vQTMh6ptguq0a5gw577WrnAdsicc45gfNBHtUbNycYYxrzWcGGTvlEoFzhf84t+Z
	MyU67PpUplvepZj03PDImCnjx9XQ+TE5JECqAXXg0khAnWpA3kM9Mjuj4rQHXTgUxtI8baRuiFwsN
	R8gwqkSw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Or-00000002Kci-48AU
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043O-L6; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u48-8j; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1U;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-11-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=1005;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BDmtmL4vtN169VIIx65WUZxoe+dx3QCrBLx6C8kI7Ac=;
 b=ngnW25IG/LsvpIZIPOpri1gE3rvR5Vl+naIsBuZlVx7wbBSPG+xhaN4OGD3b+WyhRhuJHPusw
 SKJy0jo5t7oCErX/alnxzkaBBEBiP/UBNqx+ubRjlB85Tg1GSzYemzC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114038_202820_32BC0658 
X-CRM114-Status: UNSURE (   9.36  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/15] fb: print more information on devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Print some more information about the framebuffer in the devinfo output:
- x/y resolution
- line_length
- type of framebuffer (overlay, base plane)
- if it's an overlay, print the base plane

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ccc755322e..65afaa57d9 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -264,6 +264,15 @@ static void fb_info(struct device *dev)
 	printf("Available modes:\n");
 	fb_print_modes(&info->modes);
 	fb_print_modes(&info->edid_modes);
+	if (info->base_plane) {
+		printf("Type: overlay\n");
+		printf("base plane: %s\n", dev_name(&info->base_plane->dev));
+	} else {
+		printf("Type: primary\n");
+	}
+	printf("xres: %u\n", info->xres);
+	printf("yres: %u\n", info->yres);
+	printf("line_length: %u\n", info->line_length);
 }
 
 void *fb_get_screen_base(struct fb_info *info)

-- 
2.39.5




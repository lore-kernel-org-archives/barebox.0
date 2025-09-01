Delivery-date: Mon, 01 Sep 2025 10:02:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUe-006q35-1E
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:02:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUc-0000cO-NK
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:02:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XyM50TNc03uY1KW8Hek7LbhTm903FprFriZa6/1Md1M=; b=V9d8fM3U7ovqQx05TfVpcLpI9p
	c67ZqUdjyxK1hpGpru9dAV3woJw1I6WobwPyB+r0klWMh4TO4/c0WQAAwR1ZOpFdABpqRTvK8KueY
	PjBgbxAJSwHUvMhxUUt3PawwTF0MxP20/ksmQf1RdvrORfdnlQ5/i/rDv3LGNjXZk5LA7R4QutsV1
	LcmdyfxSqo21Ai0AZSjzh0P++EnR4h5/j2ej6+0+azOewyX4e4KNcwVVKwSHEYLg3C0NiewKRZh3P
	BWF4GAWQo3aLWIy5n9IpXKBoQl+XWXQmDoowl49XSDlzbV8Vwzz4F40OZq7p3W5vnbXqBlQ6YS4hM
	9Bs0AESQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszTy-0000000BVuZ-43Zo;
	Mon, 01 Sep 2025 08:01:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usz4o-0000000BSE8-4AmX
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 07:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-0008Ve-Fz; Mon, 01 Sep 2025 09:35:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-003BNo-0h;
	Mon, 01 Sep 2025 09:35:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-00000000kLH-0fCw;
	Mon, 01 Sep 2025 09:35:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Sep 2025 09:35:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-imx6-usb-uuu-v1-1-1194bb6135ae@pengutronix.de>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
In-Reply-To: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756712139; l=967;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cfI3MWOAxbA6WY1Czurf6H2AgJG1Bz2wUsRJEqQJn/o=;
 b=HL2ogLPvCQqTH+WrUauIDnwSURkNcqMo/XRI6oy6O5Nxf6Xhwcu01tJs9onG1ZNT1QJcjgnHu
 yhKMJISrtz9DKlzYwLvQuGadmZDTuuBdmIa2mo37fD9gQMIvhg4Qp3m
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_003543_038123_687C91BD 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] scripts: imx: fix string in further auth block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>

If an additional block to be authenticated is added via
'hab_do_block off+size@addr' the CST tool will fail.
It seems that an own line is expected for each authentication
block. Add a '\' and linefeed after the comma to avoid a fail of CST.

Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
---
 scripts/imx/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 26027f0f3548ce5ce60c84bf1c94d3a699a331cc..6dabaf59c159b582dfe84eff81cec039c4863b77 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -488,7 +488,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 			return -EINVAL;
 		}
 
-		ret = asprintf(&str, ", 0x%08x 0x%08x 0x%08x \"%s\"", addr, off, size, data->outfile);
+		ret = asprintf(&str, ", \\\n 0x%08x 0x%08x 0x%08x \"%s\"", addr, off, size, data->outfile);
 		if (ret < 0)
 			return -ENOMEM;
 

-- 
2.47.2




Delivery-date: Thu, 31 Jul 2025 12:54:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvc-005ZuC-0S
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 12:54:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhQvb-0000yS-H7
	for lore@pengutronix.de; Thu, 31 Jul 2025 12:54:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7k9369PhvXZjdisdiPRsygtctXxBvjU6/38jpZqyFc=; b=CR6pqIUl8ulIjChWpHPqh3gRPV
	WRBmqyV7p5NKPvJ3zULkq12SQfw8EexnW7jlLsw8nawRPi+LSEf6n873VpyeNOQdv5HP/2+d0LMOS
	Bzko+zc40KX8On0/7PPeZ77lGaYzJGQ0nMJg/nf4OV2aKI9Wrjrhr5ud2U/mfXQXKQ/BmkAqgSXT4
	TOdH52VMZH8HMxZIJpoa4QfcQF+lbcBff+mBaowwNxG8j0Im/QzPlVKMRx6+/Rtbw7cYwgSJj+JKY
	HLxXTc/wp3qQ+GQQK6TJjwA7l0WKmrO9oTIw58dMa3RBSyFjLn9GKSt8qg+K7rQbFlu1nuD2jJyS3
	qb656VqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv6-00000003Prx-2HYd;
	Thu, 31 Jul 2025 10:53:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQqH-00000003PIs-1Fwq
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 10:49:00 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uhQqE-0008Vg-Pe; Thu, 31 Jul 2025 12:48:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 31 Jul 2025 12:48:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-rkimage-cleanup-v1-5-967037e5d67a@pengutronix.de>
References: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
In-Reply-To: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034857_385561_77B5B003 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] scripts: rockchip: support RKSS images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RKSS is the magic for signed images. Add this magic to the rk-usb-loader
to be able to load signed images via USB.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/rk-usb-loader.c | 7 ++++---
 scripts/rockchip.h      | 1 +
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index 87b5e3e3060579bc0473a15a9ef1f86c0ee2b720..c9769d79d3d4d487af5008e45e35c29ea3eba99e 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -222,9 +222,10 @@ static int upload_image(const char *filename)
 
 	hdr = buf;
 
-	if (hdr->magic != NEWIDB_MAGIC_RKNS) {
-		log_error("%s has invalid magic 0x%08x ( != 0x%08x )\n", filename,
-			  hdr->magic, NEWIDB_MAGIC_RKNS);
+	if (hdr->magic != NEWIDB_MAGIC_RKNS &&
+	    hdr->magic != NEWIDB_MAGIC_RKSS) {
+		log_error("%s has invalid magic 0x%08x\n",
+			  filename, hdr->magic);
 		exit(1);
 	}
 
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
index c4cedfa5669e59506b7c2c32d53bbdafec0e0dac..ed915bdf593ca23aab2046b0997743babbbc371a 100644
--- a/scripts/rockchip.h
+++ b/scripts/rockchip.h
@@ -2,6 +2,7 @@
 #define __ROCKCHIP_H
 
 #define NEWIDB_MAGIC_RKNS 0x534e4b52
+#define NEWIDB_MAGIC_RKSS 0x53534b52
 
 #define NEWIDB_FLAGS_SHA256	(1U << 0)
 #define NEWIDB_FLAGS_SHA512	(1U << 1)

-- 
2.39.5




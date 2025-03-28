Delivery-date: Fri, 28 Mar 2025 09:36:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ci-005DWg-1K
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 09:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Ch-0000jo-PR
	for lore@pengutronix.de; Fri, 28 Mar 2025 09:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kjVOuSB+PKgWxfmgcUi5g8wK81vn6qjAk7l5jLXc0pc=; b=lNstENCc1qyNT6aeg0hYEVjT4+
	UjPrVbeof7YutZLavy2Dr/SCnmw2hy8GVehEwbkddy4kFTxSMTc8wYiTegrJ2irpyKEtPsqfO3TMV
	d+OwVsAfg3h6RcZvgNEbI1jp1AHok4xGLCIyv2tnt5K7i18H9o1ncRzCxtBpezKK1WUJWIYclNWJ6
	3IpqvJGTqNUcwy5yN5YpbJv4TyhulXbbP3rjagSp4U2p5sNobN5CmuHRNVLA98daco2lYr4FbPCij
	XWsDBTb5ddEIKULSP9HkkhL/5PV4cZHTqy4g1d/hpMwdf/TmNShPcnVo28JwEvZEn91lGgUUdTehs
	O274Ab5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5CC-0000000CwA1-3TQK;
	Fri, 28 Mar 2025 08:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5Ab-0000000Cvuv-2tUK
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 08:34:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5AX-0000Id-NW; Fri, 28 Mar 2025 09:34:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5AX-0024L9-1f;
	Fri, 28 Mar 2025 09:34:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5AX-0029JA-1N;
	Fri, 28 Mar 2025 09:34:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Mar 2025 09:34:24 +0100
Message-Id: <20250328083424.512384-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_013429_734297_9C0FA934 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH] blspec: drop explicit devicetree "none" handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootloader spec mentions only that the devicetree key is optional
and doesn't list none as special value. THe barebox behavior on none
is completely bonkers as it attempts to delete barebox' own device
tree, which nowadays fails with an error message.

Drop that special handling altogether.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 1cbadf8963af..77ae3dc21951 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -98,16 +98,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 
 	data.os_file = basprintf("%s/%s", abspath, linuximage);
 
-	if (devicetree) {
-		if (!strcmp(devicetree, "none")) {
-			struct device_node *node = of_get_root_node();
-			if (node)
-				of_delete_node(node);
-		} else {
-			data.oftree_file = basprintf("%s/%s", abspath,
-						       devicetree);
-		}
-	}
+	if (devicetree)
+		data.oftree_file = basprintf("%s/%s", abspath, devicetree);
 
 	if (overlays)
 		of_register_fixup(blspec_overlay_fixup, entry);
-- 
2.39.5




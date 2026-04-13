Delivery-date: Mon, 13 Apr 2026 12:03:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCE8T-00BgAm-3D
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCE8T-0007tz-D0
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:03:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uFMIpUW58TXl2QJjESIUYznXVLGgtrb4AcvA79VKBk0=; b=g3CaHQu+lD4AROaE7v/D0iZ/xo
	dF5Dx6nEtgJi3gXesHFr1MfTKXV7nB7RJX5EkzIKc41Z8rknV9fbQfICcI5MvpUaXKFtYktnZqm+d
	yZqCVFLmTVe+2NqHW3zdjERkrEznsOXbprpVEDk9M4n0fqN1QDBVC2k7J1ATbR2VJaFphFsAs8w7a
	IU+q3Ztz7XGcTiYIFSLeF/LVx3jZB3Sqg9B9ka/x154o86Ixe0VEZGH2QYt44A4TXz/mu2+/oee5g
	fXScnS4sTDoLxhxQgpJOMk4ngAkL2mgpu2Wh2YVTZh7Fhn/X2y9iX0LnjGrJkEWixUtrREf4bUb8M
	DJlLhYCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCE81-0000000FP9x-3hul;
	Mon, 13 Apr 2026 10:02:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCE7z-0000000FP8s-0q1h
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:02:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCE7x-0007fe-5t; Mon, 13 Apr 2026 12:02:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:02:43 +0200
Message-ID: <20260413100243.1456951-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_030247_264215_A17189C2 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] state: suppress state overwrite warning for barebox DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Nowadays, the root != of_get_root_node() check always evaluates to true,
because fixups are never applied onto the barebox live tree directly,
but at a copy. This was necessary to allow repeated fixups, e.g. by
of_diff - + or with multiple boot targets.

The check was useful to have though to differentiate between the case
that the barebox DT is passed to Linux (where it's benign that the state
node is overwritten) or the Linux DT having a state node (which can
mislead as the kernel will be overwritten).

barebox already handles $properties specially in that it refuses to
create them when unflattening and silently drops them when flattening.

This allows associating data with a node for the duration it's
unflattened in barebox memory.

Make use of this by marking the barebox live tree's root node as such,
so even it's duplicates don't trigger the warning while external DTs
would.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/state/state.c | 2 +-
 drivers/of/base.c    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/state/state.c b/common/state/state.c
index 9bec8ceea762..b421b43da539 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -453,7 +453,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		 * will be overwritten. Warn about this so people do not wonder why
 		 * changes in the kernels state node do not have any effect.
 		 */
-		if (root != of_get_root_node())
+		if (!of_property_read_bool(root, "$barebox,root-node"))
 			dev_warn(&state->dev, "Warning: Kernel devicetree contains state node, replacing it\n");
 	} else {
 		char *of_path, *c;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 460b5e2f4bbf..5297894f60b0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2084,6 +2084,7 @@ int of_set_root_node(struct device_node *node)
 
 	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
+	of_property_write_bool(root_node, "$barebox,root-node", true);
 
 	if (of_model)
 		barebox_set_model(of_model);
-- 
2.47.3




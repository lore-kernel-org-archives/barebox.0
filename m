Delivery-date: Wed, 09 Aug 2023 12:07:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTg6J-00Dbuc-5o
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 12:07:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTg6H-00014m-EU
	for lore@pengutronix.de; Wed, 09 Aug 2023 12:07:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n9PwcpHmGSlmwdo4KTtjzg9zN0MHDS8TpabRSZhiaH4=; b=Z3hZAi+Erzy1DOdLgHzeetf8mz
	OVcMm/o9QRIZZ8rRPtkic/WZo+97QU1ILNzqkrl76ewXbqzULS0pIEcf8Roc9HaOufXrPAlh1lkLt
	lYndAtOoUCdq6wgCJF0ywmEa1ZK+y6Np6vNSpnGTu+UunnK7YsRlPXh1Ewr8Sik9876rCZV74Emhp
	KryoZCXTy2cxLEKZz6daEXJKF/B3ErqQupWgC/lUUdDbnbV8iSO2XoaNlGPEbsdO1ec2qoLj5tqhZ
	ka/lYymbO2tkdJHu0ON6yO9KOvNtUPhDqGGctAj4V1RJ0bH7FjII2pWX/pChyg3C9oV9YU9V8OXCg
	kQdVUA3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTg4x-004VOB-1j;
	Wed, 09 Aug 2023 10:06:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTg4r-004VLI-2v
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 10:06:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qTg4l-0000tQ-G9; Wed, 09 Aug 2023 12:05:59 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de
Date: Wed,  9 Aug 2023 12:05:59 +0200
Message-Id: <20230809100559.2505416-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_030605_939611_AD137E75 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] of_firmware: fix lookup of fpga manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The of_parse_phandle() looks for the phandle in the root device tree,
but as np is resolved for the target device tree, the phandle refers to
the target device tree and may return a wrong node in the root tree.

Therefore, we must ensure that we look for the manager-node in the
target device tree, which is the root node of np, and look for the
manager with that name.

firmwaremgr_find_by_node already uses the name for the lookup.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v1 -> v2:

- Use of_parse_phandle_from instead of open coding the phandle lookup
---
 drivers/of/of_firmware.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 80feb3b90dba..c1b69aac045c 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -11,7 +11,8 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	struct device_node *mgr_node;
 
 	do {
-		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
+		mgr_node = of_parse_phandle_from(np, of_find_root_node(np),
+						 "fpga-mgr", 0);
 		if (mgr_node)
 			return firmwaremgr_find_by_node(mgr_node);
 	} while ((np = of_get_parent(np)) != NULL);
-- 
2.39.2




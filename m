Delivery-date: Wed, 18 May 2022 20:01:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrNz3-000oSI-Iu
	for lore@lore.pengutronix.de; Wed, 18 May 2022 20:01:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrNz2-0007tm-9G
	for lore@pengutronix.de; Wed, 18 May 2022 20:01:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TQc5iKPb4H4u6X2OBJ+Xu+t+Z4TDab+YdSxHWN2wLUM=; b=jjaUBX5Arv2AWw
	FxYn1nyLigVCkNGqo/kxJYLeIIBIJDaHVqc899IvSy1oCzjtVrlIR6r2DFA19628/A1Tv/k4msmg+
	dDPuDXXD3GAzf9dnp6qJQQaAwxvPFCVWSAEhBRjstuBaMYfX3xCFSrXd1g+NpVGfE6ao7m+zWTkK/
	wrYRgBkxh4hs1i+3UB5X8wFbJBkyW7KXBaLjc0WrGcFAbElNxVsDo6yBvUOxDoFRGdh23sR5vtN3N
	vrtdKp2h5epCmpMS0h9atcnm0y9TFFP1G/CrdwuDXbgvB8unXwfgPq6VG5SmAxTgP4HZfFpndoI6M
	6mffOvaNLRtTeLlvyDWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrNwL-003Lpo-Pv; Wed, 18 May 2022 17:58:29 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrNwG-003Lp1-2H
 for barebox@lists.infradead.org; Wed, 18 May 2022 17:58:26 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id 2C7D2E7400A; Wed, 18 May 2022 19:57:49 +0200 (CEST)
Received: from astat.fritz.box (a89-183-82-195.net-htp.de [89.183.82.195])
 by lynxeye.de (Postfix) with ESMTPA id 3FAF9E74001
 for <barebox@lists.infradead.org>; Wed, 18 May 2022 19:57:48 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 May 2022 19:57:45 +0200
Message-Id: <20220518175745.56467-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_105824_294232_3A99FF51 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: address: treat absent dma-ranges as 1:1 translation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some DTs use dma-ranges in child busses without this property being present
in the parent bus. To avoid failing the address translation, do the same as
the Linux kernel and treat absence of this property as a 1:1 translation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/address.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 67e8062f5d17..4eafce376d36 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -301,10 +301,13 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 	 *
 	 * As far as we know, this damage only exists on Apple machines, so
 	 * This code is only enabled on powerpc. --gcl
+	 *
+	 * This quirk also applies for 'dma-ranges' which frequently exist in
+	 * child nodes without 'dma-ranges' in the parent nodes. --RobH
 	 */
 	ranges = of_get_property(parent, rprop, &rlen);
 #if !defined(CONFIG_PPC)
-	if (ranges == NULL) {
+	if (ranges == NULL && strcmp(rprop, "dma-ranges")) {
 		pr_vdebug("OF: no ranges; cannot translate\n");
 		return 1;
 	}
-- 
2.35.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


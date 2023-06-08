Delivery-date: Thu, 08 Jun 2023 16:39:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Gni-00FrTt-Jm
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 16:39:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Gng-0002j6-1d
	for lore@pengutronix.de; Thu, 08 Jun 2023 16:39:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HHovP21oTTr3fMmj8DM9pMKdbP6kqC1qH2p7eRhxMsk=; b=nUnonNc6YcQI8/OfX0qgpp1/Ia
	XL09NZ/Q7hbHftu6HiigonUkrU45aT9uBAdF92DNNRPIOM5RnfO/UtE178V6zkgAyMcGxriOds4XJ
	Weq5eF94KxE7MLASkkUbC7Cz8ZsC9xpD+vx3DNgRp5Frn5sppxp65e0jp1QyYd2WU1+fFU3NZr73W
	FIlXd+V5VRMapuUWsWXWF8QSY9lk4JTq9zgP4lOaGQy3h8EBIQacR5wsf1CN8pvJSzcqutMgd1GYy
	Fve06XnJUXh5O5oI1D2wCBOgjnIxJVS2OuRBf7gKUxwxtFjuM0AJaxkSKWxYPlEjKuIWNWvdZ9p1+
	5tznzmyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7GmR-009dyU-2l;
	Thu, 08 Jun 2023 14:38:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7GmN-009dxl-1n
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 14:38:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7GmK-0002cU-Rf; Thu, 08 Jun 2023 16:38:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7GmK-005zpZ-6i; Thu, 08 Jun 2023 16:38:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7GmJ-00DCoI-J4; Thu, 08 Jun 2023 16:38:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 16:38:18 +0200
Message-Id: <20230608143818.3147443-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_073823_591432_EBA444E9 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] of: override existing reg property in of_fixup_reserved_memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_new_property doesn't care for existing properties and would happily
add a property that already exists leading Linux to trip over it when
creating the VFS view into the device tree.

Fix this by using of_set_property, which would delete an existing
reg property first, before adding it anew.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/oftree.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 620de6ed5649..3e85070d113c 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -308,8 +308,8 @@ int of_fixup_reserved_memory(struct device_node *root, void *_res)
 	of_write_number(reg, res->start, addr_n_cells);
 	of_write_number(reg + addr_n_cells, resource_size(res), size_n_cells);
 
-	of_new_property(child, "reg", reg,
-			(addr_n_cells + size_n_cells) * sizeof(*reg));
+	of_set_property(child, "reg", reg,
+			(addr_n_cells + size_n_cells) * sizeof(*reg), true);
 
 	return 0;
 }
-- 
2.39.2




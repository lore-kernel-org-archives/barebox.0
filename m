Delivery-date: Mon, 21 Feb 2022 11:54:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LG-005vUb-CG
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 11:54:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LD-0007Mg-HY
	for lore@pengutronix.de; Mon, 21 Feb 2022 11:54:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeTJobor9+n6KrWRyOjaHbL5Hp7jL8MpW5xqTj8zUvQ=; b=y23EZSwjzi/3KL
	FzqPfUQGzbCmbmjqbOTPS+Vv3VGjQbEPmOb3DP1B3I8IKv83kK2/PHCyvy1Dr/zY4KLZNcyBz+QDI
	Gv8trIQzxj0de3iP1Es/SKJyL5H76RktkM+WZOPIcu/Uq1EYkoEr4nggU2ccbw540QroBZXnKxlGg
	dGVVaraCVnkFIHauIu6q4LeByIYHVMmJ14rGmTeZ+hcc2CvOc4n9tzRfKVgnN+hHsiASIF8nxVTDF
	B9nFLCn+zwyREpaSVyjb9k5KUoq+iRVZYrg0tUHksDvjBAlKcwGG/i05M3zV5riwvFAlckKxsFDKy
	OO36Z6XSB+pRa7PRf34A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM6Jc-0058M9-Ck; Mon, 21 Feb 2022 10:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM62u-004zvi-VU
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 10:36:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nM62s-0004qb-JJ; Mon, 21 Feb 2022 11:35:54 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nM62s-00Fdnc-41; Mon, 21 Feb 2022 11:35:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Feb 2022 11:35:53 +0100
Message-Id: <20220221103553.3727859-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-22-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-22-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_023557_109443_16152033 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! clk: stm32mp1: sync with Linux v5.17-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows discarding code at compile-time for drivers that can be
compiled without DT support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 1ee255c9ad0c..85cb30f8b0b1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -600,7 +600,7 @@ struct device_d *device_find_child(struct device_d *parent, void *data,
 
 static inline struct device_node *dev_of_node(struct device_d *dev)
 {
-	return dev->device_node;
+	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->device_node : NULL;
 }
 
 #endif /* DRIVER_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


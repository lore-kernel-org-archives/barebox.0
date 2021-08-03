Delivery-date: Tue, 03 Aug 2021 11:46:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr04-0005nf-9h
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr03-0000d5-7B
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kot3xcEp9z0XRLV6Md0kPT6jxqV9YJUcuFhugxLK7tQ=; b=irY/zYlm60o7he
	e57B//G0vG5I4dC5GUWIvKv3iwvufIpSdWNcW142HU5A86lt2DSPSrqv1+yLMhh1MCX4AsOdjc9NB
	vmyh6cop3zjnEEDXlv4tRllpyhC5olBTo3ZV9e+qA0B2z7jM43xcJimWDdtFdfiWk8pOnoBKRl5YM
	Y9ImGnYv6BZOyy3BewbbzzKHuL6rJTube747icw2rNPfi8qSm3mr0kruEq3fAPbRdlOYvpv9pCudX
	WibPgRyoTAf1rcSlkQHMxdPeIh97lFlzts/D4DV7elrj3oXVO613BUDT7tKKSCzBDybPbqDPj5zqK
	CRQMDR/nPCBtWWQvE7KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyT-001r2o-E2; Tue, 03 Aug 2021 09:44:37 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyL-001qzQ-1N
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:30 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 20A198A157; Tue,  3 Aug 2021 11:44:25 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 6340C8A101;
 Tue,  3 Aug 2021 11:44:22 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:12 +0200
Message-Id: <20210803094418.475609-3-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024429_270707_FC38B466 
X-CRM114-Status: UNSURE (   9.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/8] of: add of_get_reserve_map stub for !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows us to unconditionally include of.h in files which did not
require CONFIG_OFTREE, required for the MMU code in later patches.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/of.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 4844e800b4..36936ecd6e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -62,7 +62,6 @@ struct of_reserve_map {
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 		 int flags);
-struct of_reserve_map *of_get_reserve_map(void);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
@@ -120,6 +119,7 @@ struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+struct of_reserve_map *of_get_reserve_map(void);
 extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
@@ -821,6 +821,10 @@ static inline int of_autoenable_i2c_by_component(char *path)
 	return -ENODEV;
 }
 
+static inline struct of_reserve_map *of_get_reserve_map(void)
+{
+	return NULL;
+}
 
 #endif
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


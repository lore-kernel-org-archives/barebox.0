Delivery-date: Tue, 22 Apr 2025 10:39:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799g-003yYN-0y
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799V-0001tj-U4
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/fOMnchagw4vcRl9RkCU/Dg0DoFyklo6UQmaUi593FE=; b=wkKBZcyZIZC2TFet2rlvvHPRwA
	PWzw4dObBhvhGREE5/TmV2aOY4koGRH425CTZoaJVpfKOeRTLwKw1eYaqnf2vxe5VTALLw6pCcwZc
	t69hPK6PypRlP7QTAAvg9HrgnRpYPqTJ1g0m4+J+RL5CMOEyvX6Z6aXnxSExCVGXWjAGteNVoRqlR
	XDijyE2xsXw0wpbEuzoj0z8vhltYaat39K0c3wEJei+YWS1cb/zlYmihpZq6LuTpEBxThumzGxcFr
	D23WqTNGUPBch4SmYxeIi1kQ7380BWBpi5kKN1dJZDYlkPDRfJ33wMAxqlT9i9R1k6umnUT2SdO1k
	v8Ffl91g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798r-00000006MLe-2AQl;
	Tue, 22 Apr 2025 08:38:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78UQ-00000006CMm-1uGX
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UP-0000g2-Cm
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UP-001Vw0-0e
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UP-000vKR-0N
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:20 +0200
Message-Id: <20250422075620.220337-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005622_492577_A09D0F34 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: address: implement dummy iounmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

of_iomap doesn't do any actual mapping, just base address computation,
so it makes sense for iounmap to be a no-op to make porting kernel code
easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/of_address.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/of_address.h b/include/of_address.h
index 4e5faf6f7783..9bf5710c5ee3 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -56,6 +56,7 @@ extern struct device_node *of_find_matching_node_by_address(
 	struct device_node *from, const struct of_device_id *matches,
 	u64 base_address);
 extern void __iomem *of_iomap(struct device_node *np, int index);
+static inline void iounmap(void __iomem *addr) { }
 
 extern int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr,
 			    u64 *size);
-- 
2.39.5




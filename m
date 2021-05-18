Delivery-date: Tue, 18 May 2021 13:51:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFu-0004Cb-W6
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFs-00021I-TI
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oubndDRcDzb0hh8s0iJbVGgJrpfhfbVQtYTu8DVZR9c=; b=KICzvdLoS30eukg2CClujaZDF
	9AlBsyTLdnCnYysfmafOP4TKzKDFOQRtdbECuBNGd9GMvsHB6Z+ks5vv053/+1eOHvjtksm2Tdphu
	UhJs4ObTOXaIs3SR7DRy34phkMUXlrE2PrE6N7wvNKoc/845yzlrah9h2JpU4fa+iMgzjhaq8XL5H
	edFHJfxLYmQHb/DE8+CiScbhVcONjEegLui6uSefxctrW/ecg6NhskemR/sfQkfmvOZk1gGo8AEfk
	ib35h6qPM6VHFNKPfRmmqNrZBBJdDcOj36VmwSQW3bGRDxgRNrpSEo15dplYEaU3w9lOuWkxK+kZe
	37owYh54w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyEy-000dsX-7o; Tue, 18 May 2021 11:50:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEC-000dcb-Fe
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XzWZ+qDtMN1vyGBc37TQHvhCmpafrvjYuwfvgqhP1no=; b=pHiQ/yotUxGY+suBsGrXyw9KC5
 xvVX2ymw9WyoztpKW3eIoHsQmSq6VScs8CfNbcOvLyr2Oin0h/CVLkooWr0kb39dpqemGX4nm+Sbi
 8ltsEDEnjdpzA8/Edctad11Gx0CcTzGZP5UEgPrWlPlpMb3QdeFKEiEjL8vDFE24P6zCAgKLnxUVF
 +nIIM3tUyudGHVptOu8vd0Z6pB88Uua6Qpn9vpDDgIIk0EhwDZEsDsCvth3+ku8RLJa+vk5GTijPG
 NjfVzePMhTxyv7pboO97zw1CXnYuoyCXR33PRLvXkCkEvOe6YLCSc0VyWK09MRR9bcyzHirik76AD
 1R6OUDhw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHe-Gw
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gq-8w; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-000157-Bc; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:21 +0200
Message-Id: <20210518114929.12964-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_615765_C38BE88B 
X-CRM114-Status: GOOD (  11.83  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/14] clk: mux: Add ro ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux version of the clk muxr exports a clk_mux_ro_ops. Do
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 4 ++++
 include/linux/clk.h   | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 59bea98578..43d2f70180 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -49,6 +49,10 @@ struct clk_ops clk_mux_ops = {
 	.set_parent = clk_mux_set_parent,
 };
 
+struct clk_ops clk_mux_ro_ops = {
+	.get_parent = clk_mux_get_parent,
+};
+
 struct clk *clk_mux_alloc(const char *name, unsigned clk_flags, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents,
 		unsigned mux_flags)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index d0bcdd7ac3..e68aadb923 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -504,6 +504,7 @@ struct clk_mux {
 #define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
 
 extern struct clk_ops clk_mux_ops;
+extern struct clk_ops clk_mux_ro_ops;
 
 struct clk *clk_mux_alloc(const char *name, unsigned clk_flags,
 			  void __iomem *reg, u8 shift, u8 width,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


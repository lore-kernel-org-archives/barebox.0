Delivery-date: Wed, 02 Jun 2021 12:04:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNjL-0000ki-EA
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:04:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNjF-0002GM-P3
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:04:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/p1Sr6hhCoCl7eqtwpxvYtHAdRrdaHQMskRPBNTEjis=; b=jXXsVWSrLPX5mH
	MR20dPBRn5+tyt8w6Qk456Ec93kBqgbIcn6FYye5xL1xIrcSOy0VKrcRMGp4rDAL5fRcyYBxPFZiT
	AePhO9VCoxdV+dZSM2DlgZ0GEAcWV4VOEFrm86mAUTtLm9/7VW/GTk2NZNi6ZwO4mJQYbDge71a9g
	Ca8ACfwg9r5ashTnB5w8thU3Pv7UbYseBIygIkdLm5Kerwj3d07+06FwLjS8zTMjMfce+BpOvKZLU
	MNlrooWCiR6a/9WtxLF4Z40l0s6yj2ZIaIXUpQpblXN22UbTLKBtJFmoK9BijQlqB6h56ZNPydKjO
	U5DHVtT+y7FScr8QiguQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNhS-0038e2-Ql; Wed, 02 Jun 2021 10:02:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KR-2W
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MK-Ev; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-0003A4-Ux; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:00 +0200
Message-Id: <20210602095507.24609-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_284972_647215CE 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/24] clk: Add Linux functions to register a mux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_register_mux(). Add the same function with the same
prototype for barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 10 ++++++++++
 include/linux/clk.h   |  5 +++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 464593b619..e7e4369ce0 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -98,3 +98,13 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 
 	return m;
 }
+
+struct clk *clk_register_mux(struct device_d *dev, const char *name,
+		const char * const *parent_names, u8 num_parents,
+		unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_mux_flags, spinlock_t *lock)
+{
+	return clk_mux(name, flags, reg, shift, width, parent_names,
+		       num_parents, clk_mux_flags);
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 950fecd7e0..0d2fb488bc 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -589,6 +589,11 @@ void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 		    u8 shift, u8 width, const char * const *parents,
 		    u8 num_parents, unsigned mux_flags);
+struct clk *clk_register_mux(struct device_d *dev, const char *name,
+		const char * const *parent_names, u8 num_parents,
+		unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_mux_flags, spinlock_t *lock);
 
 struct clk_gate {
 	struct clk_hw hw;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


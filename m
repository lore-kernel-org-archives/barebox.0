Delivery-date: Mon, 31 Jan 2022 09:00:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbe-001TTd-Cu
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:00:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbc-00062i-OA
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:00:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qECpkd7WDLAZ0OaYoDVzUPZ4r8bTtOOzGELeHlpc6QQ=; b=zI3ofscm7QFmyM
	wPUCBuQybwzqExlgjLi3ymfQ+9U/xpsG50DzCFw3OfPypX1OgkicbHt1FuJTAZniD+9porfdKR+Zy
	eY8OjxcWkmA4FbrbOqC4C8T1Nb7SRYHWcQVQXZ2gQgB6qX+GcvkIHl4ibHFaIsVJ6MJEoWnELBkPd
	qnYb3U9hvUFtPWeXPD3LJOuuQM4QEXvOGCeAym9OyQU0k2xg4wcqtefMHY96uxnb4Mzr/mqXvCgBm
	m9y4/sNy3dZGS2Pp4fsG9Vf19nF73XfJ6qI8E/3cmcPdacatOovTHyz8GOvOIK20q1/mNyGyWtJou
	+3uI8bPO0xMl5f7WlXbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERaD-008MPl-Ur; Mon, 31 Jan 2022 07:58:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008LyI-Tq
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Dz-Jm; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHf-PO; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:23 +0100
Message-Id: <20220131075725.1873026-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235735_116091_1FA0975D 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/12] clk: gate: add clk_hw registration functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save users the hassle of opencoding by providing wrappers with the same
Linux semantics: names are duplicated, same arguments and struct clk_hw
is returned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 94ac7f288ad7..397520a4815c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -13,6 +13,7 @@
 #include <linux/err.h>
 #include <linux/spinlock.h>
 #include <linux/stringify.h>
+#include <xfuncs.h>
 
 struct device_d;
 
@@ -701,6 +702,16 @@ struct clk *clk_register_gate(struct device_d *dev, const char *name,
 		void __iomem *reg, u8 bit_idx,
 		u8 clk_gate_flags, spinlock_t *lock);
 
+static inline struct clk_hw *clk_hw_register_gate(struct device_d *dev,
+		const char *name, const char *parent_name,
+		unsigned long flags, void __iomem *reg, u8 bit_idx,
+		u8 clk_gate_flags, spinlock_t *lock)
+{
+	return clk_to_clk_hw(clk_register_gate(dev, xstrdup(name), xstrdup(parent_name),
+					       flags, reg, bit_idx,
+					       clk_gate_flags, lock));
+}
+
 int clk_is_enabled(struct clk *clk);
 int clk_hw_is_enabled(struct clk_hw *hw);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


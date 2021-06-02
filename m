Delivery-date: Wed, 02 Jun 2021 12:05:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNkd-0000mx-Uw
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:05:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNkY-0002cb-PP
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:05:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+9tMt1Jp+5EPOavf5tpg13P4+e8kZq10Y1G62fJfaE=; b=tTg9+6bohX8AZC
	1TSOdWlexxFrsdA09wt1JJvgvVIp5k7GGo6nfkstK1Nxeozf6Zyn4qZcuFRFKfZQcIRvrIeFODiIl
	bkE4LdM9jUk0uCvMzs6JFB2dGIXAHKK6aQcYl5JI8ww/HX31E19BMkbqD+5LSELgfROyqcZccai/3
	5+MhxizaDrdYNeU+N04HynBOfVdJLKeQDZ7DiDr/MQnXqDRkEa/L3XzQGj08ELq5xi1ngmu/MMnvy
	KrwKP/RX297lb/ODQpLVzm6Nb+hQFJSOQNTjRv197lw34qK4jfwne9lIVCv5sKbzbC67cS0gpcMVI
	ciSkS70nVRob0Irv9SqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNio-0039IE-V2; Wed, 02 Jun 2021 10:03:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KZ-8I
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MJ-M1; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-0003A1-UY; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:59 +0200
Message-Id: <20210602095507.24609-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_421963_03C63346 
X-CRM114-Status: GOOD (  10.92  )
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
Subject: [PATCH 16/24] clk: Add Linux functions to register a gate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_register_gate(). Add the same function with the same
prototype for barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gate.c | 8 ++++++++
 include/linux/clk.h    | 4 ++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 6e1bf0b316..87b7e73aa6 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -116,3 +116,11 @@ struct clk *clk_gate_inverted(const char *name, const char *parent,
 {
 	return clk_gate(name, parent, reg, shift, flags, CLK_GATE_INVERTED);
 }
+
+struct clk *clk_register_gate(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 bit_idx,
+		u8 clk_gate_flags, spinlock_t *lock)
+{
+	return clk_gate(name, parent_name, reg, bit_idx, flags, clk_gate_flags);
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 3bb7efdc61..950fecd7e0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -615,6 +615,10 @@ struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem
 		u8 shift, unsigned flags);
 struct clk *clk_gate_shared(const char *name, const char *parent, const char *shared,
 			    unsigned flags);
+struct clk *clk_register_gate(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 bit_idx,
+		u8 clk_gate_flags, spinlock_t *lock);
 
 int clk_is_enabled(struct clk *clk);
 int clk_hw_is_enabled(struct clk_hw *hw);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


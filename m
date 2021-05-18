Delivery-date: Tue, 18 May 2021 13:51:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFz-0004D0-Rm
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFx-00024T-Od
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZjE8oY490S/nxm2K6R1FRKCIRi1LFhPY8BpOFet7PSM=; b=TerDO+r1clI+nG9zCI4WwWzee
	14W/KyrMHlOfPqaLtO19/tb7twwkQ77AJTObycZCB3tEunM+8jnGyOrQhz3359HotKlBCKoBrciBX
	i6FVsY1XNkbNSV+43HBOgucq9BV+FQJ0RcnZJjIeMT/G0+3b/+m6ZbllBndcF/arZMMwfH+z9WkPC
	DJiXnQT9ElAxrJxVccSqcavdnwU3JZ2xyzylKMIaGhcm6z0iyUyAIQ/7Q9IXeF/xDk/2SFAiY6eIu
	B2OGZPsYrXiID6PXS+2oGM3dg46tL/TBcvHxsdHRXlU36drmzZ8zt1QU9Jm6nyN0f3dNYaE3i3Wse
	qD8M06VIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyF7-000dxJ-HT; Tue, 18 May 2021 11:50:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEC-000dcd-LQ
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=DmCyLP5MS/99/rxQeFhnihjqGoipOKjqDyJ/uSBWTgc=; b=mbdpCA3RnrYFCoyoyqpQCVX1EG
 bWOiUhjAebNzEhJFDGx6++KnNXZJR11ifuvZOYU4Ec7qsRTXxCvKirnE74lM9mRbbbTJuj9iuulmB
 FH5+CTwfZzl92wkjxslJtbRdLzr5+/GzLbYtMKqNl1j+6KTHiwkbAX/7BRIBDXxbtCXrIfA3iO1RX
 fzyS7zzZG6ds/V6bNZbzXnr2qdBSTCoL1cdd0UL8bwlrsw2wgWbo8OAW3RGWPkrk5rRXyuXsTWL32
 dyi+2FSNJ8s+jbV3M40S0RvxgH5R1rv3BV4p/Kt8qZ2D8PDKPJBdB0G+5B3lJCFDNdG2n3GC3qy+A
 32RfSrdQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHg-Jr
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gx-Cm; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015S-Ei; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:28 +0200
Message-Id: <20210518114929.12964-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_730154_78013B73 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 13/14] clk: Add Linux functions to register a gate
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
index 01bda4d94f..0dddfbff9e 100644
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


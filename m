Delivery-date: Tue, 22 Apr 2025 10:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799s-003yZy-2c
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799k-00029i-8P
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cK1ZI1OldH+mOAVEhTBHNuurFpt3aOknKYoub6dP4eQ=; b=hiK+wr/r5DfjcbPjcsTB00IVRj
	gBTbwRgRkRf0rXoqK958x/yfyTsavcDGZXPj3WRzWkpfI9jX0zAVIBJenDahODO18wA+GqurXBYxq
	4lOn+mjbtQuxGd6A/mxQnwVM5ObdGUq0berKoZaC9q1n+uyUb2o7vxYv+u+0mTx/mOlknVU3gEOWd
	KfVv59BMMQ3qm78HFFaBiUG+hpipSrn9xMgMPXHU3JuEQJ7AKtWyn/pWD/+809NpVij3GZs/bGmh+
	p/jo1XXnZWT/AcRqZppZoVA1e7G8mFN7F7OKaq3J1vqJrk83T6qYXuT796SUn2t9yhtObtfaNC9qK
	a1c2zeuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798y-00000006MWs-3MCi;
	Tue, 22 Apr 2025 08:38:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRK-1q9R
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000i4-Bp
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001VwE-0S
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-000vQy-0B
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:35 +0200
Message-Id: <20250422075637.220688-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_502975_B8F8B721 
X-CRM114-Status: GOOD (  12.48  )
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
Subject: [PATCH 5/7] clk: gate: add bit_idx member as in Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux calls our shift bit_idx, but they are otherwise identical. Alias
them inside a union to make code a little bit easier to port.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/clk.h | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9f4e97d37a3a..7ae4c48ca27f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -685,10 +685,35 @@ unsigned int clk_mux_index_to_val(u32 *table, unsigned int flags, u8 index);
 long clk_mux_round_rate(struct clk_hw *hw, unsigned long rate,
 			unsigned long *prate);
 
+/**
+ * struct clk_gate - gating clock
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @reg:	register controlling gate
+ * @bit_idx:	single bit controlling gate
+ * @shift:	Alias for @shift
+ * @flags:	hardware-specific flags
+ * @lock:	register lock
+ * @_parent:	for barebox-internal use
+ *
+ * Clock which can gate its output.  Implements .enable & .disable
+ *
+ * Flags:
+ * CLK_GATE_SET_TO_DISABLE - by default this clock sets the bit at bit_idx to
+ *	enable the clock.  Setting this flag does the opposite: setting the bit
+ *	disable the clock and clearing it enables the clock
+ * CLK_GATE_HIWORD_MASK - The gate settings are only in lower 16-bit
+ *	of this register, and mask of gate bits are in higher 16-bit of this
+ *	register.  While setting the gate bits, higher 16-bit should also be
+ *	updated to indicate changing gate bits.
+ */
 struct clk_gate {
 	struct clk_hw hw;
 	void __iomem *reg;
-	int shift;
+	union {
+		u8 bit_idx;
+		u8 shift;
+	};
 	unsigned flags;
 	spinlock_t *lock;
 	const char *_parent;
-- 
2.39.5




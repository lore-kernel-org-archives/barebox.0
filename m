Delivery-date: Tue, 22 Apr 2025 10:39:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799h-003yYk-1Q
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799Y-0001vZ-1l
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vEXc0HxzGFQVxe8bm000UnHV+IZOpfOfl2Ck+Tt75pg=; b=wRzEC4z5S5KFI/nHLXRsGNk8zN
	0Nnld6ubfj9va/dtk6NYpne+ZvX5+B7WtbtcDiyw55wqmdt/iP/CtbA66X2EUZwD5REWeMvum99l4
	ZmsZnvBF1tulpBrRMb7Vvc8KRxwz1tyEWKfobMQpHTtNi2WvbwZ+0ICh2GxRVPVBco4Pa7ccYOr4X
	9eSnc9hZpKzk/mbquRlsaeJ2zwHVzR6PuRaxid4gVIQLcySqHVLLiva2gSXKZvmUY2TtNIuLlyPsM
	w+Jm4FbyAU45QVXF+GXO8OCqhpS6ygYiA/T3zvuRl3O04hd17+vZP4tIAiDA0T5ly2GYcFIVXQ7rZ
	Udrw8Ejg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798t-00000006MPe-0D6O;
	Tue, 22 Apr 2025 08:38:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRG-14hD
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000i0-5C
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Uf-001Vw4-36
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Uf-000vQy-2n
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:31 +0200
Message-Id: <20250422075637.220688-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_298602_13B7653B 
X-CRM114-Status: GOOD (  13.10  )
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
Subject: [PATCH 1/7] clk: add compatibility for prepare/unprepare/is_prepared
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Instead of having to mechanically rename prepare/unprepare operations to
enable/disable, let's just alias them in a union.

This risks code porters missing to merge both operations when they
exist, but this can be fixed via enforcing -Woverride-init as default
warning, which will be added separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/clk.h | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index b10af93af429..6bedc5204cca 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -269,12 +269,18 @@ static inline void clk_put(struct clk *clk)
  * @enable:	Prepare and enable the clock atomically. This must not return
  *		until the clock is generating a valid clock signal, usable by
  *		consumer devices.
+ * @prepare:	Alias for @enable. If the Linux driver defines both, they
+ *		must be merged when ported to barebox.
  *
  * @disable:	Unprepare and disable the clock atomically.
+ * @unprepare:	Alias for @disable. If the Linux driver defines both, they
+ *		must be merged when ported to barebox.
  *
  * @is_enabled:	Queries the hardware to determine if the clock is enabled.
  *		Optional, if this op is not set then the enable count will be
  *		used.
+ * @is_prepared Alias for @is_enabled. If the Linux driver defines both, they
+ *		must be merged when ported to barebox.
  *
  * @recalc_rate	Recalculate the rate of this clock, by querying hardware. The
  *		parent rate is an input parameter. If the driver cannot figure
@@ -319,9 +325,18 @@ static inline void clk_put(struct clk *clk)
  */
 struct clk_ops {
 	int 		(*init)(struct clk_hw *hw);
-	int		(*enable)(struct clk_hw *hw);
-	void		(*disable)(struct clk_hw *hw);
-	int		(*is_enabled)(struct clk_hw *hw);
+	union {
+		int		(*enable)(struct clk_hw *hw);
+		int		(*prepare)(struct clk_hw *hw);
+	};
+	union {
+		void		(*disable)(struct clk_hw *hw);
+		void		(*unprepare)(struct clk_hw *hw);
+	};
+	union {
+		int		(*is_enabled)(struct clk_hw *hw);
+		int		(*is_prepared)(struct clk_hw *hw);
+	};
 	unsigned long	(*recalc_rate)(struct clk_hw *hw,
 					unsigned long parent_rate);
 	long		(*round_rate)(struct clk_hw *hw, unsigned long,
-- 
2.39.5




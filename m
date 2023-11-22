Delivery-date: Wed, 22 Nov 2023 19:17:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rmV-004gV0-2d
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:17:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rmV-0002cZ-Nz
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:17:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XJB444eXT9A4zK28ZEBoTgSr0hKyNRHJs4zMiee1raU=; b=n8DGpfFU3nfhtusqkcE5eQwGhb
	eEkmhJE5jWjpXU72YT3aL5DzLDPSYs+DPG6U44bINeZpoivgP4GNT5ka3/ipPI0ln4rU2M1ATVQVz
	D50zuNVh8zcZ4+uaR20h9MJFjNHKPISUgohrxEIbDR8ZcS0gBQlfiKfb3qQ/jwSWSYDH/TFYU3Jc4
	lrUY8jIINw6+fhfggmjFPEiaz495wx5h1LYgZWkukNI2+CG1dclGTwMVmCA/E1HTfQ4uj0Xc7wS9A
	Ocimi0sxRq0eWXoelrgq3RAsCispYfgCZy3oy8aEUZRL0GDGTGAUPNpsXCz9/JqOdJzoRSHzMC1y5
	23fd8Qpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rlF-002n9J-0A;
	Wed, 22 Nov 2023 18:15:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rlB-002n7s-2z
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:15:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rlA-0002CN-OW; Wed, 22 Nov 2023 19:15:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rlA-00As1i-CI; Wed, 22 Nov 2023 19:15:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rlA-003Zqu-0u;
	Wed, 22 Nov 2023 19:15:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:15:35 +0100
Message-Id: <20231122181535.846936-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101537_965099_A235CD64 
X-CRM114-Status: GOOD (  19.26  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: document struct clk_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already import the API from Linux, so let's import the documentation
for reference as well and add a note about clk_unprepare/clk_prepare.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 65 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index edcc43d9f1df..7657ab6fc245 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -240,6 +240,71 @@ static inline void clk_put(struct clk *clk)
 #define CLK_GATE_SET_TO_DISABLE	(1 << 0)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
+/**
+ * struct clk_ops -  Callback operations for hardware clocks; these are to
+ * be provided by the clock implementation, and will be called by drivers
+ * through the clk_* api.
+ *
+ * @init:	Perform platform-specific initialization magic.
+ *		This is not used by any of the basic clock types.
+ *		This callback exist for HW which needs to perform some
+ *		initialisation magic for CCF to get an accurate view of the
+ *		clock. It may also be used dynamic resource allocation is
+ *		required. It shall not used to deal with clock parameters,
+ *		such as rate or parents.
+ *		Returns 0 on success, -EERROR otherwise.
+ *
+ * @enable:	Prepare and enable the clock atomically. This must not return
+ *		until the clock is generating a valid clock signal, usable by
+ *		consumer devices.
+ *
+ * @disable:	Unprepare and disable the clock atomically.
+ *
+ * @is_enabled:	Queries the hardware to determine if the clock is enabled.
+ *		Optional, if this op is not set then the enable count will be
+ *		used.
+ *
+ * @recalc_rate	Recalculate the rate of this clock, by querying hardware. The
+ *		parent rate is an input parameter. If the driver cannot figure
+ *		out a rate for this clock, it must return 0. Returns the
+ *		calculated rate. Optional, but recommended - if this op is not
+ *		set then clock rate will be initialized to 0.
+ *
+ * @round_rate:	Given a target rate as input, returns the closest rate actually
+ *		supported by the clock. The parent rate is an input/output
+ *		parameter.
+ *
+ * @set_parent:	Change the input source of this clock; for clocks with multiple
+ *		possible parents specify a new parent by passing in the index
+ *		as a u8 corresponding to the parent in either the .parent_names
+ *		or .parents arrays.  This function in affect translates an
+ *		array index into the value programmed into the hardware.
+ *		Returns 0 on success, -EERROR otherwise.
+ *
+ * @get_parent:	Queries the hardware to determine the parent of a clock.  The
+ *		return value is a u8 which specifies the index corresponding to
+ *		the parent clock.  This index can be applied to either the
+ *		.parent_names or .parents arrays.  In short, this function
+ *		translates the parent value read from hardware into an array
+ *		index.
+ *
+ * @set_rate:	Change the rate of this clock. The requested rate is specified
+ *		by the second argument, which should typically be the return
+ *		of .round_rate call.  The third argument gives the parent rate
+ *		which is likely helpful for most .set_rate implementation.
+ *		Returns 0 on success, -EERROR otherwise.
+ *
+ * @set_phase:	Shift the phase this clock signal in degrees specified
+ *		by the second argument. Valid values for degrees are
+ *		0-359. Return 0 on success, otherwise -EERROR.
+ *
+ * @get_phase:	Queries the hardware to get the current phase of a clock.
+ *		Returned values are 0-359 degrees on success, negative
+ *		error codes on failure.
+ *
+ * Unlike Linux, there is no differentiation between clk_prepare/clk_enable
+ * and clk_unprepare/clk_disable in barebox as all work is atomic.
+ */
 struct clk_ops {
 	int 		(*init)(struct clk_hw *hw);
 	int		(*enable)(struct clk_hw *hw);
-- 
2.39.2




Delivery-date: Wed, 02 Jun 2021 12:02:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNhL-0000hm-0y
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:02:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNhG-0001pb-58
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:02:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmWqjrSKkb1hCD78oFPdUa3GmQR5BVNJUdeUngTlkrg=; b=GMsPN4cUoroShc
	iqqqo9M0zGNV23vts2ck5FmuuyBXhUUhDqb+LALSIk4gYHEUrhHcblHe0kzhwMdOE+1MozotAyiYZ
	FO8Ivlm5x4DJTI1enKISdPWwVqTSql6/bkrcA/fxjmDPKZZLR6jUdF2x1i72cYoKYJoqsZSxtgMHR
	NR2dsUVo5zRZrmeCOyEePtNlsQq78jq6NO2Q4dIkpk+Prk4bnDBVQziz7cfrxGsEKHqctsIDRPmm6
	/pvIF9IbLG61CBaJC+xhvgBpQTFYmHdw0rekmtOt8HVxc8koS+e7zgvz9/ivjmPDVsDdrc0TPcUjp
	Wdt054wqfyGWi47eWxEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNfZ-0037qc-Gk; Wed, 02 Jun 2021 10:00:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036FV-Bh
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MO-Fa; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNah-0003AG-0G; Wed, 02 Jun 2021 11:55:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:04 +0200
Message-Id: <20210602095507.24609-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_662317_1A844789 
X-CRM114-Status: GOOD (  15.12  )
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
Subject: [PATCH 21/24] clk: implement set/get phase
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_set_phase() and clk_get_phase() along with the
corresponding callbacks in struct clk_ops. Implement the same for
barebox as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 55 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h |  5 +++++
 2 files changed, 60 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index fe2424dc8a..8b90f30486 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -320,6 +320,61 @@ struct clk_hw *clk_hw_get_parent(struct clk_hw *hw)
 	return clk_to_clk_hw(clk);
 }
 
+/**
+ * clk_set_phase - adjust the phase shift of a clock signal
+ * @clk: clock signal source
+ * @degrees: number of degrees the signal is shifted
+ *
+ * Shifts the phase of a clock signal by the specified
+ * degrees. Returns 0 on success, -EERROR otherwise.
+ *
+ * This function makes no distinction about the input or reference
+ * signal that we adjust the clock signal phase against. For example
+ * phase locked-loop clock signal generators we may shift phase with
+ * respect to feedback clock signal input, but for other cases the
+ * clock phase may be shifted with respect to some other, unspecified
+ * signal.
+ *
+ * Additionally the concept of phase shift does not propagate through
+ * the clock tree hierarchy, which sets it apart from clock rates and
+ * clock accuracy. A parent clock phase attribute does not have an
+ * impact on the phase attribute of a child clock.
+ */
+int clk_set_phase(struct clk *clk, int degrees)
+{
+	if (!clk)
+		return 0;
+
+	/* sanity check degrees */
+	degrees %= 360;
+	if (degrees < 0)
+		degrees += 360;
+
+	if (!clk->ops->set_phase)
+		return -EINVAL;
+
+	return clk->ops->set_phase(clk_to_clk_hw(clk), degrees);
+}
+
+/**
+ * clk_get_phase - return the phase shift of a clock signal
+ * @clk: clock signal source
+ *
+ * Returns the phase shift of a clock node in degrees, otherwise returns
+ * -EERROR.
+ */
+int clk_get_phase(struct clk *clk)
+{
+	int ret;
+
+	if (!clk->ops->get_phase)
+		return 0;
+
+	ret = clk->ops->get_phase(clk_to_clk_hw(clk));
+
+	return ret;
+}
+
 int bclk_register(struct clk *clk)
 {
 	struct clk_hw *hw = clk_to_clk_hw(clk);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 72971c8e27..6b4c368231 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -237,6 +237,9 @@ int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
 struct clk *clk_get_parent(struct clk *clk);
 struct clk_hw *clk_hw_get_parent(struct clk_hw *hw);
 
+int clk_set_phase(struct clk *clk, int degrees);
+int clk_get_phase(struct clk *clk);
+
 /**
  * clk_get_sys - get a clock based upon the device name
  * @dev_id: device name
@@ -356,6 +359,8 @@ struct clk_ops {
 	int		(*get_parent)(struct clk_hw *hw);
 	int		(*set_rate)(struct clk_hw *hw, unsigned long,
 				    unsigned long);
+	int		(*set_phase)(struct clk_hw *hw, int degrees);
+	int		(*get_phase)(struct clk_hw *hw);
 };
 
 /**
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


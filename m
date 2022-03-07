Delivery-date: Mon, 07 Mar 2022 18:03:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGl8-003flD-No
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 18:03:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGl7-0004V0-Ed
	for lore@pengutronix.de; Mon, 07 Mar 2022 18:02:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fEBAmUNOswSWx2JKEs3FTXsJa7UYUesWpbUpbrA53bM=; b=jFRR+FCxd31If7
	mUT4wE/T8t55CkPWDdsyWU8Su9FUtAVmEVPgSNnhXTthA5Ps+sBCJw5JLqwUqJhXoOkEBB803WRa5
	Fg1QM9A1li1XG4bOuye1MqqtJ6lLxjvyhKGQcdf8+9TO0m4yGPv6k0EO16N3Udne6fNL4xyWnMG2A
	2ldgDb3e7Rgl1u6PAMMS4bJg+xUmoGujY3LHD4JkUzjYp1tIGDm0/9PJQNt8pF6dlnEDkXZK+n0tc
	uMfN8IShMr/T97Mws4zj/syBo4emtjlXjS/GgtoCyy64nKMPovXFiAd8ltptCAGAglvMzb+Dtj8OC
	2opdQ7r2h5e2utbQa3rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRGjU-000x6y-7X; Mon, 07 Mar 2022 17:01:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRGjP-000x6D-6F
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 17:01:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGjL-0004GG-7s; Mon, 07 Mar 2022 18:01:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGjK-00GWGT-PV; Mon, 07 Mar 2022 18:01:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Mar 2022 18:01:05 +0100
Message-Id: <20220307170106.3937198-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_090111_254564_321CDB03 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] clk: harden NULL handling in
 clk_hw_to_clk/clk_to_clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As clk_hw::clk is the first member and there may no be leading padding,
clk_hw_to_clk(NULL) == clk_to_clk_hw(NULL) == NULL. This would break if
we moved struct clk around, so make this more robust by using
IS_ERR_OR_NULL. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index c0e998e54ae6..7fd835c35e51 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -433,12 +433,14 @@ struct clk_hw {
 
 static inline struct clk *clk_hw_to_clk(const struct clk_hw *hw)
 {
-	return IS_ERR(hw) ? ERR_CAST(hw) : (struct clk *)&hw->clk;
+	return IS_ERR_OR_NULL(hw) ? ERR_CAST(hw)
+				  : (struct clk *)&hw->clk;
 }
 
 static inline struct clk_hw *clk_to_clk_hw(const struct clk *clk)
 {
-	return IS_ERR(clk) ? ERR_CAST(clk) : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
+	return IS_ERR_OR_NULL(clk) ? ERR_CAST(clk)
+				   : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
 }
 
 struct clk_div_table {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


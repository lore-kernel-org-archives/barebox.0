Delivery-date: Mon, 21 Jun 2021 11:31:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGr-0000kJ-Is
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:31:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGp-0008Rz-Qx
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:31:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgJdZUJ/bxDLfmvNi9Z63ZsaEyoJiUo4UBxrlYMTu4Q=; b=BDkxOGZj17NyGX
	UvxWXeP3RhwJYeZbBWnAho4GnJq+dXcPJhmqYE8BrfsK7F0ZPgk5R6JovARzixe3aUZGbT1VmGdPD
	UXtA/eHsUYpyIRHyHmDPgtFthwr6jjLmS0XmY2Gccysajm/hy6d70zBbacneXlKLms92t/CWlVa5e
	Q25pyTrM8JdJ3YGF728qwhB+Ra0m2mh14I0HOuzlXDRjkAjMEd6xUhb4aUulopwbu5piIHUdIBUA2
	/EOFWeuWoqhvQZyrcNdEsDAvr5fFDJGy9fSh6YFXLO6Xkba8awbb1sEJ2XMUHc5DqwrABqA7ZPru2
	slBBms2oopvCmYQpoWMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGFO-002u5I-8m; Mon, 21 Jun 2021 09:29:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGE1-002tLf-Kz
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zf-5T; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003dR-JE; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:27:51 +0200
Message-Id: <20210621092802.27275-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210621092802.27275-1-s.hauer@pengutronix.de>
References: <20210621092802.27275-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022813_740502_E8A1C791 
X-CRM114-Status: GOOD (  13.67  )
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
Subject: [PATCH 01/12] clk: Add clk_name_* functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At some places a clk name may be known without having a struct clk *
directly. Add some convenience functions to handle this situation and
use them in the clk commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.barebox.org/20210615141641.31577-2-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c      | 18 ++----------------
 drivers/clk/clk.c   | 22 ++++++++++++++++++++++
 include/linux/clk.h |  4 ++++
 3 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 2e21e9df58..4d124807bd 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -54,19 +54,14 @@ BAREBOX_CMD_END
 
 static int do_clk_set_rate(int argc, char *argv[])
 {
-	struct clk *clk;
 	unsigned long rate;
 
 	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
 
-	clk = clk_lookup(argv[1]);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
 	rate = simple_strtoul(argv[2], NULL, 0);
 
-	return clk_set_rate(clk, rate);
+	return clk_name_set_rate(argv[1], rate);
 }
 
 BAREBOX_CMD_HELP_START(clk_set_rate)
@@ -214,19 +209,10 @@ BAREBOX_CMD_END
 
 static int do_clk_set_parent(int argc, char *argv[])
 {
-	struct clk *clk, *parent;
-
 	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
 
-	clk = clk_lookup(argv[1]);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-	parent = clk_lookup(argv[2]);
-	if (IS_ERR(parent))
-		return PTR_ERR(parent);
-
-	return clk_set_parent(clk, parent);
+	return clk_name_set_parent(argv[1], argv[2]);
 }
 
 BAREBOX_CMD_START(clk_set_parent)
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ba726c342c..8932cfe54b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -525,6 +525,28 @@ int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 	return clk_set_rate(clk_get_parent(clk), rate);
 }
 
+int clk_name_set_parent(const char *clkname, const char *clkparentname)
+{
+	struct clk *clk = clk_lookup(clkname);
+	struct clk *parent = clk_lookup(clkparentname);
+
+	if (IS_ERR(clk))
+		return -ENOENT;
+	if (IS_ERR(parent))
+		return -ENOENT;
+	return clk_set_parent(clk, parent);
+}
+
+int clk_name_set_rate(const char *clkname, unsigned long rate)
+{
+	struct clk *clk = clk_lookup(clkname);
+
+	if (IS_ERR(clk))
+		return -ENOENT;
+
+	return clk_set_rate(clk, rate);
+}
+
 #if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 /**
  * struct of_clk_provider - Clock provider registration structure
diff --git a/include/linux/clk.h b/include/linux/clk.h
index e54acdd918..6565429a9b 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -681,6 +681,9 @@ static inline const char *clk_hw_get_name(struct clk_hw *hw)
 	return hw->clk.name;
 }
 
+int clk_name_set_parent(const char *clkname, const char *clkparentname);
+int clk_name_set_rate(const char *clkname, unsigned long rate);
+
 #endif
 
 struct device_node;
@@ -722,6 +725,7 @@ static inline unsigned int clk_get_num_parents(const struct clk *hw)
 {
 	return hw->num_parents;
 }
+
 #else
 
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


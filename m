Delivery-date: Tue, 15 Jun 2021 18:47:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDj-0002QV-Gk
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:47:23 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCDh-0004V2-3h
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:47:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTy+855SU+aj40LlG9T133i1JM9fNJfyeLoOMF5iAKY=; b=D+p+sxcL8W/Gur
	/1RzyeAiLALVRz+sLo7bJwjM8R6AJmzbgLsUxRywLueyXyr0pw7RQ4/vbbXR7vtyDxmRJQcm5PXE8
	fmqB2rz/dWy2lZu4a4wfIoww4dnvVWWYyLG7ryUkSH1JH6onFbB/Rww4UyQH7GxNQBCzCDwl6kaub
	UyzzYtq40hnFSOH5kgxXiuRDiwH3jHz2UEmMmPPPU52b/zkhr7Z/mhEUsT7hvx3e42O80IQA+WfiQ
	Kf8/UEoYVl4BPrFy+9uMoIXs11J84Eaoy3tPXzva0My4TpZdMTzWIrqSpc7vATA5okJi+q+EgHCMD
	9JyuYUzVqoaPR1s4ybVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC8e-001ROs-3Y; Tue, 15 Jun 2021 16:42:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9s2-000WKw-C1
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=sUMady1SoTltXbwcftGmJo2v0z3TOTz/wZp1CZVZmLM=; b=gVfearhne8RzjRTMzMPdmD1et7
 Qjca49FM6oPbsu0AowBlR6JVkHjLoAEuXXd5Q3WjHTZHJZ53KGBzx55OhBtVIVEtTkqcyImZl/Izn
 r+0765PVgWUkKzc++1ob9WcDPHfv/dl6iGAuVFihoiN4ckeSO5uVn9XCrjKd4yUUOAA9qUvkorzvA
 LXPPgE7/mvELp/bJHqsBNzdMGv7+f5pnE+MGVvMC8B78sko9TH5oORhItdjLNKk9e/7pY6twXTMC/
 OiiTHeXPrRfOW4/P6i26HaTfeMY70FYqDjU1jTJBi5TjZjHAAhzwcno9bMA0ifULZM32PlojzBsy2
 i5NyMNdA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zs3-Uf
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uB-4l; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001C8-GL; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:31 +0200
Message-Id: <20210615141641.31577-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_195115_7C87A5B6 
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/11] clk: Add clk_name_* functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At some places a clk name may be known without having a struct clk *
directly. Add some convenience functions to handle this situation and
use them in the clk commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c      | 18 ++----------------
 drivers/clk/clk.c   | 22 ++++++++++++++++++++++
 include/linux/clk.h |  4 ++++
 3 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 649a0a7cb2..b63c82455e 100644
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
@@ -182,19 +177,10 @@ BAREBOX_CMD_END
 
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
index e54acdd918..b7240189b3 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -722,6 +722,10 @@ static inline unsigned int clk_get_num_parents(const struct clk *hw)
 {
 	return hw->num_parents;
 }
+
+int clk_name_set_parent(const char *clkname, const char *clkparentname);
+int clk_name_set_rate(const char *clkname, unsigned long rate);
+
 #else
 
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


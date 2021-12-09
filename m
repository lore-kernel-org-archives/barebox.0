Delivery-date: Thu, 09 Dec 2021 11:58:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8c-0010hK-7Y
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 11:58:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8a-0000sN-NB
	for lore@pengutronix.de; Thu, 09 Dec 2021 11:58:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oZG+IPXBHzMPiH7i4uDffwGO7uteKVz/14meOSzjQ3E=; b=l+0V6ENfyFdqQ1
	TbWSZDS4i91BctnKdK65ikAlW4VK9Z54bRNwsjAgD6eR4odLcRiyM0NU3z1CHQQW/bPQ1uMo4UQBw
	x8SB3xC+c0pDECCIyXkUFqL0I7BigXh+xmEqpW2kQiRKfVRpfOeteknjBotB11BDHlLVV/BPJF3cL
	R0fB+PLZXwtceFk6nEWtzuc/m/zvEhFwsthOtRKEicc9o79/vgROhvglsNHn++FOoRyHHk2upl+MB
	6uD6C3C4nCjZ8XQVWZVO9wiWDzS7Ew4vDD9t53QVGva+1SFuBHj80/UPKSfVrbnjKpK7TLAyXPf9U
	HbUmX/Sb9S93Z+5uGyCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH7H-00Fgxi-I2; Thu, 09 Dec 2021 10:57:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH7C-00FgvT-8h
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:57:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH7B-0000a8-2c; Thu, 09 Dec 2021 11:57:29 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH7A-00ElAe-K5; Thu, 09 Dec 2021 11:57:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:57:27 +0100
Message-Id: <20211209105727.3517863-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025730_327051_910C991D 
X-CRM114-Status: GOOD (  10.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: make of_dump abortable by ctrlc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some device trees can be quite long, e.g. because they contain all
possible pinmux entries. Writing that out over serial can take quite a
while. Check for ctrlc() between nodes to make these less annoying.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_dump.c |  5 ++++-
 drivers/of/base.c  | 13 ++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index 5223ba63ad23..6f36b3151458 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -23,8 +23,11 @@ static void of_print_nodenames(struct device_node *node)
 
 	printf("%s\n", node->full_name);
 
-	list_for_each_entry(n, &node->children, parent_list)
+	list_for_each_entry(n, &node->children, parent_list) {
+		if (ctrlc())
+			return;
 		of_print_nodenames(n);
+	}
 }
 
 static int do_of_dump(int argc, char *argv[])
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 321022f2b391..664a3a411eaf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1968,13 +1968,14 @@ int of_property_read_string_helper(const struct device_node *np,
 	return i <= 0 ? -ENODATA : i;
 }
 
-static void __of_print_nodes(struct device_node *node, int indent, const char *prefix)
+static int __of_print_nodes(struct device_node *node, int indent, const char *prefix)
 {
 	struct device_node *n;
 	struct property *p;
+	int ret;
 
 	if (!node)
-		return;
+		return 0;
 
 	if (!prefix)
 		prefix = "";
@@ -1990,11 +1991,17 @@ static void __of_print_nodes(struct device_node *node, int indent, const char *p
 		printf(";\n");
 	}
 
+	if (ctrlc())
+		return -EINTR;
+
 	list_for_each_entry(n, &node->children, parent_list) {
-		__of_print_nodes(n, indent + 1, prefix);
+		ret = __of_print_nodes(n, indent + 1, prefix);
+		if (ret)
+			return ret;
 	}
 
 	printf("%s%*s};\n", prefix, indent * 8, "");
+	return 0;
 }
 
 void of_print_nodes(struct device_node *node, int indent)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


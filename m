Delivery-date: Tue, 20 Apr 2021 10:07:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlPn-0008H3-TD
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:07:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlPn-0004Vp-6y
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:07:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sxQs/c3oguEudgWu7S0T0kkD2ULBAsD6E78I/D8IE6w=; b=Pnb5n5fbdBdFuZyzep1i5rh4l
	YlBBjgPs7BXJ+zvjpMCGPOanXJmDhM73BVHma4fRZAx1YCxXIMr2sA/Re4mKlchFUnRXX3JTJ+GFH
	IjQ/eW9SHb0w0m178I5/C1m9XJQxPijXFGdkHcp/MlS8snA3QbL+SfIvVt7JsaPEAFCSxTtEIEeLS
	WNMR0sa0UrQeDT7wyUNXyrNrj1EU52n6Q96alrWcL//sw3DGYa4C8PCef4gG6aQM70GDBeI7tpp3D
	NFtrSUAsF6UzQryoSOcMjoqvZf0Z7eMIQ2C9c4sRcD973lU2FU0WsjfavhaeN+UUnaQn1FY01HNMk
	n+51emB0Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlNp-00BWvL-OR; Tue, 20 Apr 2021 08:05:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNh-00BWtz-0h
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CNZR2iiynbdgrdjmNxLLG8BsW0fkEPugAVn5+gpbGPI=; b=FLoECSdptqJk/snwCq8eZvGKAF
 VEvwU9/Lmm07hu7JQ+hy1ZzdgMf4IFkJpWqIKiEH05U3rmTlE53ychCrjWY6uQ872kWrfuzGZLGlq
 wu+5ZrkiNRtpstS3SukEzCryjE4kpXslYHonzIcX1uD2wwz7Oabk+KjKp5K8829tMjJv+oAXrVnR1
 0ocTUQFsm8mzlTLD0HQXzZPU3+HfNLTIlUW8vQvOpEoFPUjB3ZMhjzKyclmC5njHEFdHsguCo1GzT
 oTybrC2b88uawQmmy4aX5k7sgnSAt6SWoAtqPwLI/5QEdYSiBEhxxZflEb9GjdPUZZ5Ep664TFdDv
 HlWMY0Xg==;
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNe-00BtzK-D4
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:11 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id EC692116A67; Tue, 20 Apr 2021 09:57:17 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 706A31164FF;
 Tue, 20 Apr 2021 09:57:16 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:55 +0200
Message-Id: <20210420075700.246124-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010510_608668_8C526119 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] of: export of_get_reserve_map
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows the retrieval of the reserve map for usage in other
functions, in this case one of the next commits will use this
information to modify the MMU map.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/of.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/of.h b/include/of.h
index 7c8640a1d6..088b088223 100644
--- a/include/of.h
+++ b/include/of.h
@@ -117,6 +117,7 @@ struct device_node *of_unflatten_dtb_const(const void *infdt);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+struct of_reserve_map *of_get_reserve_map(void);
 extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
@@ -774,6 +775,10 @@ static inline int of_autoenable_i2c_by_component(char *path)
 	return -ENODEV;
 }
 
+static inline struct of_reserve_map *of_get_reserve_map(void)
+{
+	return NULL;
+}
 
 #endif
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


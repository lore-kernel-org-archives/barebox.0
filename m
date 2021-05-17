Delivery-date: Mon, 17 May 2021 20:56:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPx-0005WT-46
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPv-0004Wg-Av
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kGhhKvMAtmPS6wvSGYTZQFm6pWYZ66PzHyeQSuBIlyw=; b=cVHQW+gkfPxQa6g+yDrtwtZRu
	YZwo9+lFglmujNCf72NtssfI4g6XtFivxkga3iNjIUh228XipKe/YCmGVk14X4eovUpAA+/ZF6koB
	gsr1F96FTp4ycgI93eIQhAm7xVFLTxSYsOTS8mLidb+lj4HxG5WAW8V2Y30TqGfzJ6gycbFtbfHbv
	L2ehyjWN4ejgD/c/7DrTd/OecY0cp9AhOpliJIXr4ddxwrZm+L5BEnI3Dgm+EBB/6Qgjiv6fnwNF5
	/s6KhsLjQpcjURGN6CltccbKA0ZMdohh8Kz+Usm+Q53q855K6lN0dmddk/FgPTvqVvwcxyoh6OsP4
	TXwcsLa3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiP3-00FttY-FK; Mon, 17 May 2021 18:55:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO7-00FtWp-9H
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cN3IXamQbEhlfAgdo7SaHsRpx/8bQsWHuQ0wEQZzKGk=; b=bnTMRbiWo4FQOhlEDwU/tF07Me
 0sua3TawDhdaO0fGvaJUQXEyP+QFnCf9Ez2nHyvuzg/MeIiA6XwrZ7uQQiOc594QK4LEUuJJ8XR3j
 1aLhi5W1XC9HwG3vQkf5snuGFaNt6zx6BDYWHiDcdWbCgWHJTIi74V9FXFxfIwipXN8QU7Dv4P1gG
 uDJWrHQLcR57utqPpBqDi0mn0bseGsEA+87j+kWZdKEta5OeDYVDy4NCZzKIbyQ59zhJgbP6bbBWK
 vNTeBP3LofSba3yHfqmphYhSVHnFbu00YLXWTRpTQzvKRqgk6OUvqouQ6oliG6zQ+zsagaKMzVOcc
 Xi0h1iLg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO4-00E4XF-Ta
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:46 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PF-IJ; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002y3-Dg; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:18 +0200
Message-Id: <20210517185424.32145-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115444_972775_3D38F41A 
X-CRM114-Status: GOOD (  11.89  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/15] ARM: layerscape: Fix wrong error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The return value of get_fman_port_icid() is assigned to an unsigned
variable which is then error checked for being smaller than 0. Convert
the variable to a signed type to make this work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index aec57f4b3f..644401b181 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -305,8 +305,8 @@ static void fdt_fixup_fman_port_icid_by_compat(struct device_node *root,
 					       const char *compat)
 {
 	struct device_node *np;
-	int ret;
-	u32 cell_index, icid;
+	int ret, icid;
+	u32 cell_index;
 
 	for_each_compatible_node_from(np, root, NULL, compat) {
 		ret = of_property_read_u32(np, "cell-index", &cell_index);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


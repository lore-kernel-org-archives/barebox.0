Delivery-date: Wed, 17 Jul 2024 09:29:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6f-0006Tm-0m
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6e-0007Uo-Kj
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cp2sjGwum871IESfDX8BEHlUSZ3hOU9QrPFa6Q85TYE=; b=hSb26WNFyvPvYf1aiTCfvZN5zX
	+/WqWoy/r89JIgiqEkO7iabftHwAIIqAFLP8N7EeZg3Ira4/iW3uQshfbA/O/d5aZZ1AxrBRLnORK
	GWoZofh4Fh4bbr+yktTXBb0f0pxE6m4nIfG6rL5d8z/SapPwZUGejDVjuJKpRnOA85sG47XtJg2bs
	snKicqPLJQIUZPAlX56BcxAg+p9AwKdr3P7qM8ARAzpjbFYYBRWJOizF+5GrVAMXaOfls8UUhz9U3
	0WR4gmDbsDfjDP6HtrGcL+eh7vkTVib9pIn1ap0sLdhfpufWYP7h4YKMBXdAoVslbxxu6YuukZIoN
	gLVlleQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6F-0000000CyoG-1EPM;
	Wed, 17 Jul 2024 07:29:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6B-0000000CymE-3b0P
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:29:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-0007Iq-Kv; Wed, 17 Jul 2024 09:29:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-000A1p-7v; Wed, 17 Jul 2024 09:29:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-00BsTV-0U;
	Wed, 17 Jul 2024 09:29:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 09:29:13 +0200
Message-Id: <20240717072913.2830995-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
References: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_002915_918172_9CBA520B 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] of: fdt: harden against corrupted reserve map entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's only safe to dereference r when dt_ptr_ok(fdt, r) determines that
the r object is within the bounds of fdt.

Commit 8a6b7db572c7 ("of: fdt: fix possibles overflows during
parsing of invalid DTs") had a first attempt at enforcing this, but
failed to do this for the very last element, so shift around the code,
so we only every dereference r when it's safe to do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 8dca41990c87..f56f5802bb73 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -69,14 +69,14 @@ static int of_reservemap_num_entries(const struct fdt_header *fdt)
 
 	r = (void *)fdt + be32_to_cpu(fdt->off_mem_rsvmap);
 
-	while (dt_ptr_ok(fdt, r) && r->size) {
+	while (dt_ptr_ok(fdt, r) && n < OF_MAX_RESERVE_MAP) {
+		if (!r->size)
+			return n;
 		n++;
 		r++;
-		if (n == OF_MAX_RESERVE_MAP)
-			return -EINVAL;
 	}
 
-	return r->size == 0 ? n : -ESPIPE;
+	return n == OF_MAX_RESERVE_MAP ? -EINVAL : -ESPIPE;
 }
 
 /**
-- 
2.39.2




Delivery-date: Thu, 15 Feb 2024 08:48:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUE-007AUN-1z
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 08:48:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raWUD-0001QP-TF
	for lore@pengutronix.de; Thu, 15 Feb 2024 08:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+zCHyDwE43M/i5Qic9qNexo36R1GvsxdkGODctVVkvs=; b=i9IURgDXZx4K57hThyiQ0MpVhm
	YS/jKOszmEm+74zjC/fLafWW1cIsoP03Ybjr7xeICUFPOdwsA9kgrs26/1Hh7El6J0vSwVXQ26L4R
	qHd1bnfyPkY78vnnSvKPJJnU2jdkwl7lrQF7muEekxhrmI+QuB7QgOK6KOpCXM/sdpn2m0cNgUnhu
	Ac4r5kS3OWjFngjW8ms/K2GXgTa96t49XJm6TX1DB9mmeqg0lYumvAf7lvz53FrRDhz3ZiSkUV45s
	mggbbuy3DGqzem7av8+Djmd2lLJL9viFq5ILMNXOwmtLvZFfEqBZgVhwvfVrH0aYwjs73r4vxFx+E
	znB5U+WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTd-0000000FGC4-1ZqW;
	Thu, 15 Feb 2024 07:48:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raWTU-0000000FG8J-1NG5
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 07:48:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000176-IO; Thu, 15 Feb 2024 08:47:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-000qC7-66; Thu, 15 Feb 2024 08:47:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1raWTP-0041pl-0G;
	Thu, 15 Feb 2024 08:47:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Feb 2024 08:47:52 +0100
Message-Id: <20240215074757.960200-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_234804_457396_6C8A43E7 
X-CRM114-Status: GOOD (  12.17  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] common: partitions: efi: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In efi_partition() gpt and ptes is allocated but never freed. It's no
longer used when leaving this function, so free the memory before
leaving it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 0add66e6e4..d0e14d5abb 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -440,11 +440,8 @@ static void efi_partition(void *buf, struct block_device *blk,
 	int nb_part;
 	struct partition *pentry;
 
-	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes) {
-		kfree(gpt);
-		kfree(ptes);
-		return;
-	}
+	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
+		goto out;
 
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
 	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
@@ -474,6 +471,9 @@ static void efi_partition(void *buf, struct block_device *blk,
 		pentry->typeuuid = ptes[i].partition_type_guid;
 		pd->used_entries++;
 	}
+out:
+	kfree(gpt);
+	kfree(ptes);
 }
 
 static struct partition_parser efi_partition_parser = {
-- 
2.39.2




Delivery-date: Thu, 19 Oct 2023 13:29:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD3-00E9LI-B1
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 13:29:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD2-00053V-1E
	for lore@pengutronix.de; Thu, 19 Oct 2023 13:29:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l4OkyLhRg8Cp4VHGN9iN33GL6D48OEFHhVaC1IiwTgU=; b=1Ac3AVbiUWee/sggOm56Ab7r0L
	f9tl+oa11rsurmnfRt4bXQHAk1b46H/5g3cnMGkcv2w+s9NV1M6qNM/Wry4Q016zxLi/Fx55FxAlZ
	htRfy+J52MTD5mlEmqvEk0mMpuwQma8K+e8M3PHbKd5DgxIyHIKJrcHuTrf2tpniRGWldN4iMJ8nM
	cV+kc+KIL/ll1h9KSAsYJDxxa/vegtidxFtCVMdLYLgzS253B0xGnD8HRn81m4HI17XwwtZr9iCzG
	MhfSQMArnEADsIeNQrMg8gLW4zGT86Uy+pGOeAUSx078vNyQ2G1Rxevx8pDB5m0fwJkqrEx6m/+7j
	p1z1Tq6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBf-00H9pR-08;
	Thu, 19 Oct 2023 11:27:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBa-00H9oC-0L
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 11:27:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-0004Zd-O2; Thu, 19 Oct 2023 13:27:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-002mHN-BU; Thu, 19 Oct 2023 13:27:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-00GGSq-0x;
	Thu, 19 Oct 2023 13:27:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Oct 2023 13:27:27 +0200
Message-Id: <20231019112727.3876442-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019112727.3876442-1-s.hauer@pengutronix.de>
References: <20231019112727.3876442-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_042730_167325_6FF2CCDB 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] arm: layerscape: ppa: Add PPA as /reserved-memory/ppa node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of adding a /memreserve/ entry, add the PPA as a
/reserved-memory/ppa node. For the Kernel it doesn't make a difference,
but using a node makes the range visible in /sys/firmware/devicetree and
the node name also gives a hint what the region is reserved for.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 6c3fdff381..521e6b89da 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	if (ret)
 		return ret;
 
-	of_add_reserve_entry(ppa_start, ppa_end);
+	of_register_fixup(of_fixup_reserved_memory, res);
 
 	return 0;
 }
-- 
2.39.2




Delivery-date: Mon, 17 Oct 2022 15:41:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQMZ-00Bewl-AD
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:41:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okQMW-0000Cv-Hz
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:41:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lykv2S7rjnfTzSDNO8fiLHgooXenN6wTIqFL4WugaVI=; b=SaGoN8NwpoBoEZvKX9T43CLrl+
	N6OCeBGbKrhUeJ5/b8LtDpTB/C9MYE/MIjUGrdJZdWapDmAn7HOeUHYRmBMiv6ucqPzjsaee/p+Qr
	ECLijZmz0jBmwYR8wrmh89na5NLkA/aNh9UhVYoGugT5S5HiacJ7Ymz5UkkAQf3Xs3wO14AdFOuxP
	bi0WM1SfR4Jk4JxXcjoRkos3/F07Ubui9SJwxQHvIH7+08wYAnhai1+ctCevGFzDL/zZANutIetxH
	2A3Yto5RT7RfJTH+hIwmJe350Xe5IaigNAoYZaYbijeRMxSKELowvcOPqMFA1bEqA2HVYSHs/vhVn
	p/YC44pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQLD-00C9ca-6r; Mon, 17 Oct 2022 13:39:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQL8-00C9ZD-Sj
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:39:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okQL3-0008QF-92; Mon, 17 Oct 2022 15:39:29 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQL0-0025WF-GS; Mon, 17 Oct 2022 15:39:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okQKz-001Jnx-My; Mon, 17 Oct 2022 15:39:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 15:39:00 +0200
Message-Id: <20221017133859.299705-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_063934_946613_744769EC 
X-CRM114-Status: GOOD (  10.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] resource: fix recently broken memory bank fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox will fuse overlapping memory banks to avoid the common issue of
the device tree being modified upstream to contain a minimum RAM size
that would then conflict with a RAM size barebox determines by
querying the memory controller. This was recently broken, because we
changed memory banks to have IORESOURCE_MEM in their flags field,
but resource_contains() used to compare regions won't return true if
memory type differs. Fix this by settings .flags = IORESOURCE_MEM
for the new resource as well.

Reported-by: Ian Abbott <abbotti@mev.co.uk>
Fixes: d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/memory.c b/common/memory.c
index 7e24ecb2bd03..0ae9e7383cce 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -149,6 +149,7 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	struct resource newres = {
 		.start = start,
 		.end = start + size - 1,
+		.flags = IORESOURCE_MEM,
 	};
 
 	for_each_memory_bank(bank) {
-- 
2.30.2




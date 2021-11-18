Delivery-date: Thu, 18 Nov 2021 07:27:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnatd-0002Wf-4K
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 07:27:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnatc-00078d-Aw
	for lore@pengutronix.de; Thu, 18 Nov 2021 07:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sh4iBVc2udsuSXupA0aGIFYxQpIdWPAjVQmpGh6kViY=; b=ztjTEeT/gSmGtY
	w6rQ5RMEaSUQfMzTM/uKV00vNLQlGy9mJbn31KCQh7AaqlnQ5FO6ARHgSQJIdvhBPSsIhaCmnKPzu
	j4SvMXcpMnbN0sLlPp9BAv7yA/iJhiAJCnquH8znc1V94653LYd/8r8vxujYxYsIzwbtcIrylyitz
	n5VRIG8VH8GqbgPwlpjSnCmORbYh2Ck3RSujsGCJEmOuQ4n+eL4o+Em/MDvuyv7UuJYNkqJ74XZ77
	tzOA8E8nPU+GROCh/7uiWztAP8+bFg5oZ8a2p0kol1m3mIMjI0ykB9qPDcNF+zP3J8dSJYsOu55bz
	5ilO977+b78ZK8mqhjJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnarz-006yfA-Iu; Thu, 18 Nov 2021 06:26:03 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnart-006yeh-KT
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 06:26:00 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 458DA1BF206;
 Thu, 18 Nov 2021 06:25:51 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 18 Nov 2021 07:25:46 +0100
Message-Id: <20211118062546.1380928-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_222558_869061_5F4AAEB3 
X-CRM114-Status: UNSURE (   9.70  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: address: mark 64-bit PCI resources explicitly as such
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Eventually, we shouldn't need this, when all code can deal with 64-bit
addresses. For now, PCI drivers, when given the choice between 32-bit
and 64-bit resources, should select the 32-bit one.

This patch makes the resources straight forward to compare.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Needed for ECAM driver on list to work despite -M virt,highmem=on
---
 drivers/of/address.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 524a0f6a794d..926347cd841b 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -133,8 +133,10 @@ static unsigned int of_bus_pci_get_flags(const __be32 *addr)
 	case 0x01:
 		flags |= IORESOURCE_IO;
 		break;
-	case 0x02: /* 32 bits */
 	case 0x03: /* 64 bits */
+		flags |= IORESOURCE_MEM_64;
+		/* fallthrough */
+	case 0x02: /* 32 bits */
 		flags |= IORESOURCE_MEM;
 		break;
 	}
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


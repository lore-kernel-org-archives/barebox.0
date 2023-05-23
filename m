Delivery-date: Tue, 23 May 2023 07:52:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1Kwh-00APFn-PW
	for lore@lore.pengutronix.de; Tue, 23 May 2023 07:52:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1Kwf-0008IA-Cf
	for lore@pengutronix.de; Tue, 23 May 2023 07:52:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/4nl1iORhVqf+sSzkrnHxlOY7/Ghm55pHwcgqNzTkko=; b=igJJsqJfzqZNOBlwsxZcT0wMKg
	orADvd3viM9G4u8pId7I6dWyuQaQIaK3k9KVcboti15ZIgR2M+6bjw+NG238RKIfAxUOAr0wCntpZ
	e2sL8llJyTdUOqB7ZjpOoK+/FhD0TcIYEyJ65Ve4dVjO7JzzZ3Yo57OyapGuAI+Lqvx3SRi3C3z6L
	NvoIdsm3Uu1wUEsiymMZVBtscHF+BbKrSxkP/cfLm/4rEN4U1iuGVYPoY4zoUCq0epw9sjsFp9YF0
	8jS5aKPhRG9qo/fOP5S9oS/wAXXVjjkFfaV0AEKk2/xhw9DE0f2r+EUgOkUdVC2/Bkb9x7LWR0wJa
	Xh45APNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Kv8-0090nt-07;
	Tue, 23 May 2023 05:50:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Kv3-0090m6-2t
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 05:50:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Kuy-00085W-Tj; Tue, 23 May 2023 07:50:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Kuy-002AmF-8R; Tue, 23 May 2023 07:50:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Kux-00C10X-JC; Tue, 23 May 2023 07:50:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 07:50:42 +0200
Message-Id: <20230523055042.2863795-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_225049_948753_CCCF159D 
X-CRM114-Status: UNSURE (   9.16  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! pci: set upper word for 64bit base addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pci: fix warning building for 32-bit

On systems with sizeof(resource_size_t) == 4, shifting by 32 will result
in a warning. Use the upper_32_bits macro to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pci/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 046711cd145b..ff2ffacffb6b 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -223,7 +223,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			*last_addr = ALIGN(*last_addr, size);
 			pci_write_config_dword(dev, pci_base_address_0, *last_addr);
 			if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64)
-				pci_write_config_dword(dev, pci_base_address_1, *last_addr >> 32);
+				pci_write_config_dword(dev, pci_base_address_1,
+						       upper_32_bits(*last_addr));
 			start = *last_addr;
 			*last_addr += size;
 		} else {
-- 
2.39.2




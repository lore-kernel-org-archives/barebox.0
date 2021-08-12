Delivery-date: Thu, 12 Aug 2021 14:22:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9j9-00011R-Pm
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 14:22:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9j6-0000iD-2F
	for lore@pengutronix.de; Thu, 12 Aug 2021 14:22:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoPVfyiNE7B/6RulI1HySltxzhVuw48KTIJwQW27wu8=; b=K4f1/WfzctQwE9
	Mn/8P1JrrWqwGVbTqpMiSRDbgedVpJgubX8zq23OZEUIdpXWc+KzYEaBDIlDi88rgHwbAAhyC/pQe
	Nk0Mtt3oJO+f1EvLz8azPwubHNeg/z95WuQUIAmrtokYv9egzpnvMcAlUz/ZeO4G1Aryo8bGRxDED
	CdKqGljOH9suu/NXh8TGMARTFiJLC5vX7nfNrPD3o97GyonKuqzC2KmZtu+eOdp+W4zUgEHoi/pZL
	KbK1sBtC0RofUoblnn+u+m4UFkXy4F1hoUGUNgTgc3VmwdBSlCR17ga36avodLQEkNgDgDUgPzZmZ
	dhtBl2pqTKJRAssW7hEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE9gg-009yob-Cv; Thu, 12 Aug 2021 12:19:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE9gb-009yne-LJ
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 12:19:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-00004r-Ok; Thu, 12 Aug 2021 14:19:45 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-0001AX-FJ; Thu, 12 Aug 2021 14:19:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Aug 2021 14:19:43 +0200
Message-Id: <20210812121944.4419-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210812121944.4419-1-a.fatoum@pengutronix.de>
References: <20210812121944.4419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_051949_740507_5D4CAD5D 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] x86: define phys_to_virt and virt_to_phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some PCI drivers use those, so provide 1:1 implementations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/include/asm/io.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 5d19679b5064..0971727bc63d 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -82,6 +82,16 @@ static inline void io_delay(void)
 	inb(0x80);
 }
 
+static inline void *phys_to_virt(unsigned long phys)
+{
+	return (void *)phys;
+}
+
+static inline unsigned long virt_to_phys(volatile void *mem)
+{
+	return (unsigned long)mem;
+}
+
 #include <asm-generic/io.h>
 
 #endif	/* __ASM_X86_IO_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


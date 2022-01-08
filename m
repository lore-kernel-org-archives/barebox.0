Delivery-date: Sat, 08 Jan 2022 18:17:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLa-00Ecin-Hg
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLY-0005GQ-QF
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kOD6oj+NfqDOGYBwyxAZR1eJCDvUT1T+J0J7anrSN4=; b=dO4Ab2g3xay2Zj
	pvPuH6UAx7utm3exM4cKXdJ9etHB1dSI/nHNv0xcqkGYlI/NiqeS7/xZxvLEt/5UQR66mVlhB11q2
	WPtQf7goXUTzp7VwdLmI1Xz2cDiWk1om+jnSqL8JczjmM5PklKeft5M9x18kb3u9S05ZTV6tn20qN
	aTqpTaeie03uPXFZtdFJxOGi58fH/eXmki+Fhy/wxwbZkdOc20oHWxCVXyWrj0TIlrcJY4YOZRsq4
	HW10ot9fthNTr5cv7G5nml5o7i36e6YAJ9RabwsZZIsnhKuMN67jlN9ZbKZIvEu6RwTuwN9HYvh7v
	qAsCt9ZbHhT4OMfe4puA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FKH-006kAl-Q9; Sat, 08 Jan 2022 17:16:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJX-006jjc-Lk
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:15:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJO-0004Av-Cz; Sat, 08 Jan 2022 18:15:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJN-002Sme-Fk; Sat, 08 Jan 2022 18:15:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:20 +0100
Message-Id: <20220108171524.587144-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171524.587144-1-a.fatoum@pengutronix.de>
References: <20220108171524.587144-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091535_748645_CED6D22C 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] RISC-V: virt: riscvemu: be explicit about HTIF base
 address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The normal riscvemu console is Virt I/O, which isn't really suitable to
poke from the command line as part of the incoming jsbarebox tutorial.

The HTIF on the other hand can be poked quite comfortably. To make it
look more like normal devices, fix up an address. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/riscvemu/overlay-of-sram.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
index 839887fef24c..506d45bde9b6 100644
--- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
+++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
@@ -116,4 +116,14 @@
 			};
 		};
 	};
+
+	fragment@4 {
+		target-path = "/htif";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		__overlay__ {
+			reg = <0 0x40008000 0 0x8>;
+		};
+	};
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


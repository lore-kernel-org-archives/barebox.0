Delivery-date: Tue, 04 May 2021 12:46:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZW-00056s-NF
	for lore@lore.pengutronix.de; Tue, 04 May 2021 12:46:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldsZV-0001xI-Vm
	for lore@pengutronix.de; Tue, 04 May 2021 12:46:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8WfG3bZk5kjHh84pVwRfj4m+bDAm2tATClCqJDy1/pI=; b=Y9yQk9LGmx/XD2L9HjmAB6/b8
	4av7iNdsVG8i0JgXuSccWotgO51od9RfSaTyXv1FTk4KDNdAy/Iu1m5L4DdYsWoETOGYeG1FU9aky
	TsWXrm/vM564P4RkH29AcHbiVI+SQ52XPtS9uUD0rCtLZkPMx4ZxBpqSINfGD/xNZM9RM2/omtWZB
	jisaFe5lEX57r5aUmkY7pclBBRKcn4bBb5dX2ChGikaJwasGC7/bmG1GX5eTM3qgP7jHP6zN9lbAw
	5QvmMtLuUbM2HUKrKFmh86R4DBYm0DHQKB389VD6JQtfYwi0jP0DqHZePfsiT4BnFUIzu4pMECQvL
	efBoVqELw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldsYd-00G0Vm-6x; Tue, 04 May 2021 10:45:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYX-00G0V7-W4
 for barebox@desiato.infradead.org; Tue, 04 May 2021 10:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=fYKVAEA99QzxsA9ZbGBt+L8HFTwSu3z2sja02qqsKLw=; b=xU5BFQduRUWA+2u8+F1KHeBL/B
 JE0hGtg4b5xx7ybc4fkKtYnitSBAxo5YvS5Ek2bVZkC64veQ9IBclbTeAwOFpGJt8QyUWSp4koB/d
 Iz+XvokI0ZfTagieubWB6iSimh2LCmjr8BXGhaBJH9HD16pHM+AQzK30SC2IUudX5CMruLpurcFZz
 CJ8kbnv+AHNnVpd3RQ9d18JzPOyzerf+yxYoMHkUYyA/4TTrbpnVtJNC9ZTkCA+0qN0Gi1SsfDm5Y
 IFwGdqjDktSKO2/e9eF861uYC1yoyDV0ey4uvWrX4OBeuD1vCktcqeBzXLBmyZmgn8+f9s4SYN6/D
 yRMX0h8A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldsYV-003uGt-JV
 for barebox@lists.infradead.org; Tue, 04 May 2021 10:45:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYE-0001Yo-DH; Tue, 04 May 2021 12:45:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldsYD-00015T-W1; Tue, 04 May 2021 12:45:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 May 2021 12:45:12 +0200
Message-Id: <20210504104513.2640-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210504104513.2640-1-a.fatoum@pengutronix.de>
References: <20210504104513.2640-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_034531_655294_A0499C7B 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] RISC-V: asm: barebox-riscv-head: use load-offset of 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming RISC-V bootm implementation will use the same bootm handler for
booting both kernel and barebox. For this to work, the load offset in
the header needs to make sense. As non-generic DT barebox images have
enough knowledge about the platform to know where to place the stack,
they don't require a load offset, thus set it to zero.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/barebox-riscv-head.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/barebox-riscv-head.h b/arch/riscv/include/asm/barebox-riscv-head.h
index f681ec8bcee6..a4c33472cd53 100644
--- a/arch/riscv/include/asm/barebox-riscv-head.h
+++ b/arch/riscv/include/asm/barebox-riscv-head.h
@@ -30,7 +30,7 @@
 
 #ifndef __barebox_riscv_head
 #define __barebox_riscv_head() \
-	__barebox_riscv_header("nop", 0x55555555FFFFFFFF, 0x0, "barebox", "RSCV")
+	__barebox_riscv_header("nop", 0x0, 0x0, "barebox", "RSCV")
 #endif
 
 #endif /* __ASM_RISCV_HEAD_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


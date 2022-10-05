Delivery-date: Wed, 05 Oct 2022 13:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MD-006eu5-W9
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 13:14:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MC-0004FI-G5
	for lore@pengutronix.de; Wed, 05 Oct 2022 13:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYmsDb3JPeCzaM1TKrETLQFVo/NrtPOJKU/xOiFENFE=; b=ZitfxHeiPBVJPp7fbMCbK8mgcL
	OjTJ5EC9FOWAPkhS9N+aYIswUQPvlXsaaLqFJ/VsIlzFp1jtN+bzZnK2aaqJw3fbiMnEVIIbWLMQe
	dwiSHOvDsBmNEyXUbNDJIP/ILAnoX800sAi1K4htVO6jLtYyYKF2zH39R++Wz6W4jVRr7XV4facVJ
	g30QWnLLt3VJo2jYs9F5qdGEWM4Qc/7KUwNzV3KnNaPQbg3oJcj/953DDP0pwiP3+dIM2CSL8Wq1r
	To/+ftL6OfdBYEBLs92Y2EZDqVXPi0r0tubnlEu6PjfOxzIii8mGkRlb5Sxdv17jhericJ1zBxw+q
	7g3cs6gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K9-00DjP9-HW; Wed, 05 Oct 2022 11:12:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K3-00DjKy-Am
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 11:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-0003lK-5I
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-004kI6-SM
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:17 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K0-000cro-Hu
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Oct 2022 13:12:12 +0200
Message-Id: <20221005111214.148844-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221005111214.148844-1-m.felsch@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_041219_388643_9C2FBEF6 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/7] RISC-V: implement cache-management errata for T-Head SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since riscv_vendor_id() can be used from pbl and non-pbl context as well
as from relocated and non-relocated code, we are able to query the
vendor id and add special vendor handlings. This is required since the
T-Head C906 and C910 implement a scheme for handling cache operations
different from the generic Zicbom extension.

While on it replace the 'asm' statement by '__asm__' so we are not
relying on GNU extension.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

please note that I'm aware of the fact that not all RISC-V cores
implementing the vendorid register, which is quirky according the
"privileged architecture" documentation. For such cores I would propose
to extend the pbl-flags by adding a quirks field. Platforms not
supporting the vendorid register can set the quirk within th
lowlevel/pbl code e.g.:

  barebox_riscv_supervisor_entry(DRAM_BASE, SZ_1G, hartid, fdt, RISCV_QUIRK_NO_VENDORID);

This can be parsed by riscv_vendor_id() so in such case the vendorid 0
which is:

3.1.2 Machine Vendor ID Register mvendorid

The mvendorid CSR is a 32-bit read-only register providing the JEDEC
manufacturer ID of the provider of the core. This register must be
readable in any implementation, but a value of 0 can be returned to
indicate the field is not implemented or that this is a non-commercial
implementation.

Regards,
  Marco

 arch/riscv/include/asm/cache.h | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
index 6d69ed49bd..c787f89001 100644
--- a/arch/riscv/include/asm/cache.h
+++ b/arch/riscv/include/asm/cache.h
@@ -6,10 +6,29 @@
 #ifndef _ASM_RISCV_CACHE_H
 #define _ASM_RISCV_CACHE_H
 
+#include <asm/vendorid_list.h>
+
+static inline void thead_local_flush_icache_all(void)
+{
+	/*
+	 * According [1] "13.3 Example of cache settings"
+	 * [1]: https://github.com/T-head-Semi/openc906/blob/main/ \
+	 *	doc/openc906%20datasheet.pd
+	 */
+	__asm__ volatile (".long 0x0100000b" ::: "memory"); /* th.icache.iall */
+	__asm__ volatile (".long 0x01b0000b" ::: "memory"); /* th.sync.is */
+}
+
 static inline void local_flush_icache_all(void)
 {
 #ifdef CONFIG_HAS_CACHE
-	asm volatile ("fence.i" ::: "memory");
+	switch(riscv_vendor_id()) {
+	case THEAD_VENDOR_ID:
+		thead_local_flush_icache_all();
+		break;
+	default:
+		__asm__ volatile ("fence.i" ::: "memory");
+	}
 #endif
 }
 
-- 
2.30.2




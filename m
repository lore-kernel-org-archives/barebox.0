Delivery-date: Tue, 13 Sep 2022 14:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OR-003gOW-82
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OO-0007td-TA
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYmsDb3JPeCzaM1TKrETLQFVo/NrtPOJKU/xOiFENFE=; b=oc+fnFsFChK++vZMm6aTX9X/qA
	DrZ8mtl3T5mQi380FjXJMayPRXh1C3/A9CTFkqGopQE2o2OLRoDzKtFxSiK+1WaPRsLbx/ArN1GQr
	ZBQYQNJel1J5S6oKWmXGIzBAu0LWb2405WF5xod4KuJfr924RSfNZp48ipevDsiP/VuNqDXxBjw0v
	Hydo2aGmUbmw2zDNUQXHPZXS4y5tw90M4CVf8W6pfQYvY3v1cR2+Ak1bj8z1C/99zIkzGOTSQTjE5
	emk5CZmye++4lm7kj5ta7gCCLZd0hssdwkDF49xODMf5GKsMv5qwj5/Chmu3vT/I9hpmoC3hXOx2Z
	t03PQooA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mk-00ADIW-8l; Tue, 13 Sep 2022 12:50:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAT-0s
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-0007Ko-HY
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MU-000VCi-9C
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:56 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fnD-LH
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:53 +0200
Message-Id: <20220913124954.1346533-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913124954.1346533-1-m.felsch@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_157305_005B21D7 
X-CRM114-Status: GOOD (  13.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] RISC-V: implement cache-management errata for T-Head SoCs
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




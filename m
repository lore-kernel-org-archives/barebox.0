Delivery-date: Wed, 13 May 2026 15:59:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7S-001HBQ-1g
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:59:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7P-0000vW-Bn
	for lore@pengutronix.de; Wed, 13 May 2026 15:59:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWdQMhtn9ljL4WvudNkWjossakgs64WW+L6ck9qQWFI=; b=CYicbilkWYwBhE9s4xlSMEve0s
	xk3MbicIi0nV08asKN74kBOhhid7j9L00814MFiBng0bQEF78pJshqwVJIf9tXajDd6BgN6fVhwrW
	vnwjfk3r5o6GLKuSu4JSKmq+APsm+YV8T06ecjxaEykii5mjRBLEZPlIvrxrAWphO59xfz2iRbLp1
	Tt/bqrZIyDYD3p/vz92/JhnWaT/i8VxxWI345JNI0gc4UitMyJBazCRgxdQG3u81+SXQZKHdCF70X
	AWmXJumxTR3vzx59kqjJyLNVFj1HrjjLxG4ka9ZAjxX03tS9nz4uyrgAFwNY7AhU+osXlJ2neuwKf
	YmapyfTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA67-00000002qcm-3ShB;
	Wed, 13 May 2026 13:58:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA66-00000002qcL-2BKp
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 13:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uWdQMhtn9ljL4WvudNkWjossakgs64WW+L6ck9qQWFI=; b=n0s/GDJmC/oG05ZtDxuw5w/w2h
	Ze/3m4NCVZgv7QPL/YmJI6RWDFH5T0d2VNxpiVhoHVQ0i32OMOnGWco7Qnh63VVdhb8o+MLMJAxTe
	whSpovsVPfG38OUORQF+cjB6W2IGa/caosQe2JK3LFhR1xlFhwwR2rYZB5QkMMkqEX+J5aE6eQv6V
	cq/ofPwZRpESQvXw3jwhKTm6WG0OizljSvGyuu646A6f3tzmTC1dSYXcbMlavvXh5TuoQlpl+1kqQ
	4iMT+8gXEkDmRUh3TdIdQvCjzP4+91Y5iUFJRGgw9TysXgoNtn2fZI8GiwqOKe2h2CJxdnUYeDu4E
	+vOKi2Vg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA63-000000005n5-1vnb
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:58:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-0000Rl-BU; Wed, 13 May 2026 15:57:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-000biS-0x;
	Wed, 13 May 2026 15:57:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-00000001Ckb-0var;
	Wed, 13 May 2026 15:57:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:57:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-pbl-elf-fixes-v1-2-440cc04c634f@pengutronix.de>
References: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
In-Reply-To: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680679; l=1340;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kT6Q32EFqxY1vDp1xBiV7EhJkR74DNAtWLtj+GkNkNk=;
 b=CcqJs6n0tHlPzkoq86gsKPrzhEgop3LIkbijceqIFVXKxyaNsoupXqNRf4hIhYBCg+fToklwy
 NHCOLU4nnbPDiYle6yvDgQoIHedkGd7wN9+VZqRvoogBoMCY7Q1gnpk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_145759_881057_AB209798 
X-CRM114-Status: UNSURE (   9.69  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] riscv: fix wrong calculation of barebox base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assumed that barebox_image_size matches the size of the uncompressed
barebox proper binary. This was true until ec8b2ce7c2, but since then
the uncompressed length of the barebox proper binary includes the ELF
header whereas barebox_image_size does not. With this it can happen
that barebox_base is calculated too high resulting in the malloc area
overlapping the barebox image. For now fix that by using the real
barebox base address from the __image_start linker variable.

Fixes: ec8b2ce7c2 ("riscv: link ELF image into PBL")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/include/asm/barebox-riscv.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index db6ff0ea71..083889817b 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -79,9 +79,13 @@ static inline unsigned long riscv_mem_barebox_image(unsigned long membase,
 						    unsigned long endmem,
 						    unsigned long size)
 {
+#ifdef __PBL__
 	endmem = riscv_mem_ramoops(membase, endmem);
 
 	return ALIGN_DOWN(endmem - size, SZ_1M);
+#else
+	return (unsigned long)__image_start;
+#endif
 }
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)                          \

-- 
2.47.3




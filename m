Delivery-date: Thu, 13 Oct 2022 11:05:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9g-007BQr-M2
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 11:05:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9e-0002z4-JI
	for lore@pengutronix.de; Thu, 13 Oct 2022 11:05:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Ja1VziYU929o+fUGccDmqJ88P5YJVAiwU/RECM4KAA=; b=CKGAQ7yybPMUNrfyIjnD+3mInQ
	nj6D+DTe08V6Bq0kPgGxBNJ+2mf7Y/Ojl+P9sXv/x6SfQUKVgNF+EbBsechfVlsJlMHz2z8Hk6khX
	8DkYP0C5d1s2Pybw6h/6TtbTbK4FCGeZsEIKvmkXj3+rkqXz9ZFfdlb7bTtFjHB2V/yrZeh79t+BS
	mTwycYA/aFnw2TZPkZz4WITkGTXBFEyeYOvoEg1n1WLM5kVe4zqvloMjGxeDdcrO1lYo9aKBYBZQv
	icUVrpTVr9dVzJ6sB2f4cLavDO+wvWYHojdVy3qCLYgyoQY2JbHPh3B3SxttttCxz67hCbY6j4Tda
	XyHIitaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8P-00BCZN-DS; Thu, 13 Oct 2022 09:04:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8E-00BCWO-PQ
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 09:04:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8B-0002Z6-Uw; Thu, 13 Oct 2022 11:03:56 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8B-001FrN-9c; Thu, 13 Oct 2022 11:03:55 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu89-002X0C-Uy; Thu, 13 Oct 2022 11:03:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Oct 2022 11:03:51 +0200
Message-Id: <20221013090352.562170-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221013090352.562170-1-a.fatoum@pengutronix.de>
References: <20221013090352.562170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_020358_841683_E8285D73 
X-CRM114-Status: GOOD (  13.96  )
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
Subject: [PATCH master 2/3] ARM: cpu: add compiler barrier around unrelocated access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC v11.1.1 was observed miscompiling relocate_to_current_adr() while
generating THUMB2 code:

        dynsym = (void *)__dynsym_start + offset_var;
    178c:       4b48            ldr     r3, [pc, #288]  ; (18b0 <relocate_to_current_adr+0x13c>)
    178e:       5869            ldr     r1, [r5, r1]
        dend = (void *)__rel_dyn_end + offset_var;
    1790:       4407            add     r7, r0
        dynsym = (void *)__dynsym_start + offset_var;
    1792:       58e8            ldr     r0, [r5, r3]
    1794:       f102 0308       add.w   r3, r2, #8
    1798:       440b            add     r3, r1
    179a:       4410            add     r0, r2
        dynend = (void *)__dynsym_end + offset_var;

        while (dstart < dend) {
    179c:       f1a3 0608       sub.w   r6, r3, #8
    17a0:       42b7            cmp     r7, r6
    17a2:       d80a            bhi.n   17ba <relocate_to_current_adr+0x46>
        dynend = (void *)__dynsym_end + offset_var;
    17a4:       4b43            ldr     r3, [pc, #268]  ; (18b4 <relocate_to_current_adr+0x140>)
                }

                dstart += sizeof(*rel);
        }

        __memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
    17a6:       2100            movs    r1, #0
        dynend = (void *)__dynsym_end + offset_var;
    17a8:       58eb            ldr     r3, [r5, r3]
    17aa:       441a            add     r2, r3
        __memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
    17ac:       1a12            subs    r2, r2, r0
    17ae:       f000 fda5       bl      22fc <__memset>

Both &__dynsym_start and &__dynsym_end will change value after relocation,
so we absolutely want address calculation and addition of offset_var to
happen before relocation. Compiler is within rights though to assume
variables to be already relocated though and thus proves that &__dynsym_end
may not change in the loop and thus move dynend calculation below the
relocation loop and thus we end up with dynend being incremented by
offset_var once more. The resulting out-of-bounds memset() will overwrite
parts of barebox and break its startup.

The naive solution of moving dynsym/dynend calculation beyond the
relocation loop is insufficient as the compiler may decide to move
it back. Instead the only solution short of rewriting this all in
assembly seems to be hiding the origin of dynsym's value, so the
optimizer may not prove the assumption that relocation would not affect
its value. This is done using get_unrelocated, which was introduced in
a previous commit. With this, the __memset call now uses precomputed
values as expected: no last minute ldr, everything tidily placed into
registers prior to the relocation loop:

	17be:       2100            movs    r1, #0
	17c0:       1b52            subs    r2, r2, r5
	17c2:       4628            mov     r0, r5
	17c4:       f000 fdaa       bl      231c <__memset>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c     | 11 +++++------
 arch/arm/cpu/uncompress.c |  4 ++--
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 7cd97e938b3d..ed579ab94ed4 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -61,16 +61,15 @@ void pbl_barebox_break(void)
  */
 void relocate_to_current_adr(void)
 {
-	unsigned long offset, offset_var;
+	unsigned long offset;
 	unsigned long __maybe_unused *dynsym, *dynend;
 	void *dstart, *dend;
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
-	offset_var = global_variable_offset();
 
-	dstart = (void *)__rel_dyn_start + offset_var;
-	dend = (void *)__rel_dyn_end + offset_var;
+	dstart = get_unrelocated(__rel_dyn_start);
+	dend = get_unrelocated(__rel_dyn_end);
 
 #if defined(CONFIG_CPU_64)
 	while (dstart < dend) {
@@ -96,8 +95,8 @@ void relocate_to_current_adr(void)
 		dstart += sizeof(*rel);
 	}
 #elif defined(CONFIG_CPU_32)
-	dynsym = (void *)__dynsym_start + offset_var;
-	dynend = (void *)__dynsym_end + offset_var;
+	dynsym = get_unrelocated(__dynsym_start);
+	dynend = get_unrelocated(__dynsym_end);
 
 	while (dstart < dend) {
 		struct elf32_rel *rel = dstart;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 537ee63229d7..929a3a22c29b 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -53,8 +53,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long pc = get_pc();
 
 	/* piggy data is not relocated, so determine the bounds now */
-	pg_start = input_data + global_variable_offset();
-	pg_end = input_data_end + global_variable_offset();
+	pg_start = get_unrelocated(input_data);
+	pg_end = get_unrelocated(input_data_end);
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
-- 
2.30.2




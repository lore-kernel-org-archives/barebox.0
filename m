Delivery-date: Fri, 30 Sep 2022 17:47:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIEP-001Xkw-DK
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:47:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIEO-0001IB-6j
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:47:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eosfkX22RfJ25Jv1l95OIB4QnhGejSZB5J8GApK9zgs=; b=dQWdin9xUe9iDMzm+KhrrjYqQq
	XHie3TMbZmOfXtp57aHz7r05fSTRM2hpaG2hmEsM8RuZn2ZmSCa2A+cuTXOKEXk2gZ3G722nCEbv3
	okn7RCIy+USfuE/EHHqph+IdpLZjGCHRORbz0pc13DYVeXJWVjqizvOqyq84S13GbCNsvs8lUqF++
	FI6u8033L64k7dBBCWkDTvupqFyIHpCesxES346d3qRI8uvbuQZhncYDdjZbDdsu1O/cKAyIl8ztg
	/WE4XrL6MHZgA3EIycdrLKFFSqfxSBayFnw+yGYaP/5BLeGrFaR5f21q3pjse9yKwxpUHuKWRDGYL
	+ojpd5vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeID0-00ALWR-D7; Fri, 30 Sep 2022 15:45:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIA7-00AJjZ-4d
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:42:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA5-0008VD-QK; Fri, 30 Sep 2022 17:42:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA6-003pNz-K0; Fri, 30 Sep 2022 17:42:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeIA4-003AvT-GG; Fri, 30 Sep 2022 17:42:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:42:47 +0200
Message-Id: <20220930154247.756577-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930154247.756577-1-a.fatoum@pengutronix.de>
References: <20220930154247.756577-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_084251_227288_D1706C26 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH 2/2] relocate_to_current_adr: hang directly on error instead of panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

panic() will format a panic message, turn on a panic LED, dump a
stack trace and finally either restart the system or print a
message to ask the user to restart the system before hanging.

When relocation fails, all of these aren't possible, so instead of
devolving into undefined behavior, fall directly into an infinite loop.

Motivation for this change is to avoid linking printf code when it's
only usage is the relocation error case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c  | 4 ++--
 arch/riscv/lib/reloc.c | 2 +-
 include/common.h       | 6 ++++++
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 5ccacf204751..7cd97e938b3d 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -90,7 +90,7 @@ void relocate_to_current_adr(void)
 			putc_ll(' ');
 			puthex_ll(rel->r_addend);
 			putc_ll('\n');
-			panic("");
+			__hang();
 		}
 
 		dstart += sizeof(*rel);
@@ -120,7 +120,7 @@ void relocate_to_current_adr(void)
 			putc_ll(' ');
 			puthex_ll(rel->r_offset);
 			putc_ll('\n');
-			panic("");
+			__hang();
 		}
 
 		dstart += sizeof(*rel);
diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index da53c50448d7..13118a9ac54f 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -66,7 +66,7 @@ void relocate_to_current_adr(void)
 			putc_ll(' ');
 			puthex_ll(rela->r_addend);
 			putc_ll('\n');
-			panic("");
+			__hang();
 		}
 	}
 
diff --git a/include/common.h b/include/common.h
index bd120356883a..cf3e0447a09a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -43,6 +43,12 @@
  */
 void reginfo(void);
 
+/* For use when unrelocated */
+static inline void __hang(void)
+{
+	while (1);
+}
+
 void __noreturn hang (void);
 
 char *size_human_readable(unsigned long long size);
-- 
2.30.2




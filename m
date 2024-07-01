Delivery-date: Mon, 01 Jul 2024 09:35:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZi-000QU9-2P
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZi-0007nN-4D
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tYmef7vDWoOpnD3XyL9VM/e1LLoFtLcAjsl2Jm6pxjA=; b=19YdaKZ4IYDcxdki8NxMG6D6TT
	1lpI7Q+gm9wxPH86WF+4JsrdG6phB2A84SoPV6N3/oQvELnBbMorFEtaoOekYL189GsQbnYM4vDDf
	mYcheIzOAdNI9tKuh5fw5MXsed183cYa472G3VlkZeMer8tzKNd///VSoCPu0B8E1mXE7uOHSoLEU
	x/LiAJwblZ8OML+XJZtLvQEbJzRmL5VZYTL2sgbPPbMkaMnrOYDBxcwNda7CO3Qf5R7fsPW8EigrZ
	Yx/rgqtAJRcSdUmtv2+/gl/vJNNF4sslENXtSteIXFCS4RBqFmbXDdRbezfNw4xL1ANK1GdyJQBdV
	8vlfh/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZF-000000023Yl-3svY;
	Mon, 01 Jul 2024 07:35:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZD-000000023Y6-1vFQ
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:35:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZB-0007aw-UL; Mon, 01 Jul 2024 09:35:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZ9-006JmQ-QS; Mon, 01 Jul 2024 09:35:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZ9-000jqV-2L;
	Mon, 01 Jul 2024 09:35:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:35:09 +0200
Message-Id: <20240701073509.176191-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003515_520540_21DC169F 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] bitops: change test_bit return type from int to bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test_bit currently returns some positive integer on success and don't
enforce the return values to be either false or true.

This can lead to problems if the return value is not used for
truthiness, but in arithmetic.

This seems to be the case only in KASAN code, where it's used to count
errors. Change the return type to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/bitops.h               | 2 +-
 include/asm-generic/bitops/ops.h            | 2 +-
 scripts/include/asm-generic/bitops/atomic.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/bitops.h b/arch/arm/include/asm/bitops.h
index 2d0d300da2eb..8e9e4fc36944 100644
--- a/arch/arm/include/asm/bitops.h
+++ b/arch/arm/include/asm/bitops.h
@@ -72,7 +72,7 @@ static inline int __test_and_change_bit(int nr, volatile void *addr)
 /*
  * This routine doesn't need to be atomic.
  */
-static inline int test_bit(int nr, const void * addr)
+static inline bool test_bit(int nr, const void * addr)
 {
     return ((unsigned char *) addr)[nr >> 3] & (1U << (nr & 7));
 }
diff --git a/include/asm-generic/bitops/ops.h b/include/asm-generic/bitops/ops.h
index 1684621922e5..326fe00c017a 100644
--- a/include/asm-generic/bitops/ops.h
+++ b/include/asm-generic/bitops/ops.h
@@ -85,7 +85,7 @@ static inline int __test_and_change_bit(int nr,
  * @nr: bit number to test
  * @addr: Address to start counting from
  */
-static inline int test_bit(int nr, const volatile unsigned long *addr)
+static inline bool test_bit(int nr, const volatile unsigned long *addr)
 {
 	return 1UL & (addr[BIT_WORD(nr)] >> (nr & (BITS_PER_LONG-1)));
 }
diff --git a/scripts/include/asm-generic/bitops/atomic.h b/scripts/include/asm-generic/bitops/atomic.h
index 03fe804024df..8ed5fd6c7fd2 100644
--- a/scripts/include/asm-generic/bitops/atomic.h
+++ b/scripts/include/asm-generic/bitops/atomic.h
@@ -14,7 +14,7 @@ static inline void clear_bit(int nr, unsigned long *addr)
 	addr[nr / BITS_PER_LONG] &= ~(1UL << (nr % BITS_PER_LONG));
 }
 
-static __always_inline int test_bit(unsigned int nr, const unsigned long *addr)
+static __always_inline bool test_bit(unsigned int nr, const unsigned long *addr)
 {
 	return ((1UL << (nr % BITS_PER_LONG)) &
 		(((unsigned long *)addr)[nr / BITS_PER_LONG])) != 0;
-- 
2.39.2




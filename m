Delivery-date: Thu, 18 Sep 2025 08:01:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz7iA-004Ldt-19
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 08:01:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz7i9-0007JA-MZ
	for lore@pengutronix.de; Thu, 18 Sep 2025 08:01:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tAOGydkTKbV9PTq+9qIg6TRHN5GumJSEvg9vsrPhS/o=; b=F8bZZ6Ch5NRF+ik3P8T+vMfdWm
	6MavT2T+TtIxFKnwLFwtVp6MidWF1/2lBPWZlSIsFuWfXIr3evEtLaiLnjKz0JF83VFvflwDUNK2f
	wm7U/QCsgNSQRK62+02aX7mAgrcugYT5XM1W9+V+tryM0odbHXsI+hDQ6TdgYpbk/3apxTWo0Q0mn
	3n7WAwUu+hVik2PM4xnUuSzJwvRHUGBvOCSfWXOoNyvtLGDuGiy3Uh+Hf6q23JTqhwTf4rl8d5UwF
	FKPsodt0W8n2XC3zu0HzWzUTJxa3LUwpmlkOKKNFUH6evx4R8NGbazCngLbEN9fiz1swcaa5mlIAv
	RdJIN7LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz7hS-0000000GN1E-32Y7;
	Thu, 18 Sep 2025 06:00:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz7hP-0000000GN0D-0wLG
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 06:00:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uz7hN-0006zD-5j; Thu, 18 Sep 2025 08:00:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uz7hM-001sfW-3D;
	Thu, 18 Sep 2025 08:00:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uz7hM-0000000DCXK-3ibg;
	Thu, 18 Sep 2025 08:00:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 18 Sep 2025 08:00:52 +0200
Message-ID: <20250918060052.3146447-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_230055_261141_35368829 
X-CRM114-Status: GOOD (  13.88  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crc-itu-t: fix typo in CRC ITU-T polynomial comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux commit 77991645952c2 ("crc-itu-t: fix typo in CRC ITU-T polynomial comment"):

| The code comment says that the polynomial is x^16 + x^12 + x^15 + 1, but
| the correct polynomial is x^16 + x^12 + x^5 + 1. Quoting from page 2 in
| the ITU-T V.41 specification [1]:
|
|   2 Encoding and checking process
|
| The service bits and information bits, taken in conjunction,
| correspond to the coefficients of a message polynomial having terms
| from x^(n-1) (n = total number of bits in a block or sequence) down to
| x^16. This polynomial is divided, modulo 2, by the generating
| polynomial x^16 + x^12 + x^5 + 1.
|
| The hex (truncated) polynomial 0x1021 and CRC code implementation are
| correct, however.
|
| [1] https://www.itu.int/rec/T-REC-V.41-198811-I/en
|
| Signed-off-by: Roger Knecht <roger@norberthealth.com>
| Acked-by: Randy Dunlap <rdunlap@infradead.org>
| Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc-itu-t.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/crc-itu-t.c b/crypto/crc-itu-t.c
index 837a6464b6..fcbed706a9 100644
--- a/crypto/crc-itu-t.c
+++ b/crypto/crc-itu-t.c
@@ -12,7 +12,7 @@ static u16 crc_itu_t_table[256];
 /*
  * Implements the standard CRC ITU-T V.41:
  *   Width 16
- *   Poly  0x1021 (x^16 + x^12 + x^15 + 1)
+ *   Poly  0x1021 (x^16 + x^12 + x^5 + 1)
  *   Init  0
  */
 static u16 crc_itu_t_byte(u16 crc, const u8 data)
-- 
2.47.3




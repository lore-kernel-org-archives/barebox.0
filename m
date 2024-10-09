Delivery-date: Wed, 09 Oct 2024 07:58:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPi6-0027Ho-3B
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 07:58:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPi6-0005hk-BG
	for lore@pengutronix.de; Wed, 09 Oct 2024 07:58:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8UY3LzDfFHG7ORlNa9lSxI7sid7tqGAS1MeeBIg/F3g=; b=nY7TcQvVKop3g5aqvLuRXIyCUn
	y5UgJ0jdcgRiiVSr9Qk2m/drOG7+dl6IxTxs8yWfPFqde43V9nwTSqpcKlmklDiuei8/mZQ58KeBr
	75AT5Y6XEbQ5suJ90neNIUQWg6V9PMdQaGH0Ay+ufoTYS8aeFgYx6xGBYpIh5nsXzuHT9cHfRmHbd
	zzYiIOW3QZOhyEoerbvF94Ir0su9YQ7iLft+kMEMNzvGHlX8K+EEXtVGxU4ocRWIxi0LyM72C56j9
	+NHhw5DGmhbEcPJ7rlx+48YGxvVAONKwLw47tn2iPhN4ewUD4IFzvC6h0b4+FQzaZsvENdJyglBcx
	3IrzukXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPhZ-000000080sb-3b5J;
	Wed, 09 Oct 2024 05:57:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPhW-000000080qb-0SGB
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 05:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-0005cK-Pf
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 07:57:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-000XIS-D6
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 07:57:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPhU-00HGbf-12
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 07:57:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Oct 2024 07:57:30 +0200
Message-Id: <20241009055731.4115395-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_225734_174191_FC0114DA 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: [PATCH 1/2] ARM64: mmuinfo: comment the if clauses decoding PAR_ELx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The encoding in the PAR_ELx register is a bit tricky, so add some
comments for each if-clause to make the code easier to read.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmuinfo_64.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmuinfo_64.c b/arch/arm/cpu/mmuinfo_64.c
index de4945f43e8e..0c5cf3e65cb7 100644
--- a/arch/arm/cpu/mmuinfo_64.c
+++ b/arch/arm/cpu/mmuinfo_64.c
@@ -133,7 +133,7 @@ static void decode_par(unsigned long par)
 {
 	u8 devmem_attr = BITS(63, 56, par);
 
-	if (par & 1) {
+	if (par & 1) { /* Faulting */
 		printf("  Translation aborted [9:8]: because of a fault in the %s%s\n",
 		       stage_fault[BITS(9, 9, par)],
 		       BITS(8, 8, par) ? " during a stage 1 translation table walk" : "");
@@ -141,30 +141,30 @@ static void decode_par(unsigned long par)
 		       decode_fault_status(BITS(6, 1, par)),
 		       decode_fault_status_level(BITS(6, 1, par)));
 		printf("  Failure [0]:                0x1\n");
-	} else {
-		if ((devmem_attr & 0xf0) && (devmem_attr & 0x0f)) {
+	} else { /* Successful */
+		if ((devmem_attr & 0xf0) && (devmem_attr & 0x0f)) { /* Normal Memory */
 			printf("  Outer mem. attr. [63:60]:   0x%02lx (%s)\n", BITS(63, 60, par),
 			       cache_attr[BITS(63, 60, par)]);
 			printf("  Inner mem. attr. [59:56]:   0x%02lx (%s)\n", BITS(59, 56, par),
 			       cache_attr[BITS(59, 56, par)]);
-		} else if ((devmem_attr & 0b11110010) == 0) {
+		} else if ((devmem_attr & 0b11110010) == 0) { /* Device Memory */
 			printf("  Memory attr. [63:56]:     0x%02x (%s)\n",
 			       devmem_attr, decode_devmem_attr(devmem_attr));
 			if (devmem_attr & 1)
 				printf("  (XS == 0 if FEAT_XS implemented)\n");
-		} else if (devmem_attr == 0b01000000) {
+		} else if (devmem_attr == 0b01000000) { /* FEAT_XS-specific */
 			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
 			       "Non-Cacheable");
 			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
 			       "Non-Cacheable");
 			printf("  (XS == 0 if FEAT_XS implemented)\n");
-		} else if (devmem_attr == 0b10100000) {
+		} else if (devmem_attr == 0b10100000) { /* FEAT_XS-specific */
 			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
 			       "Write-Through, No Write-Allocate");
 			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
 			       "Write-Through");
 			printf("  (XS == 0 if FEAT_XS implemented)\n");
-		} else if (devmem_attr == 0b11110000) {
+		} else if (devmem_attr == 0b11110000) {  /* FEAT_MTE2-specific */
 			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
 			       "Write-Back");
 			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
-- 
2.39.5




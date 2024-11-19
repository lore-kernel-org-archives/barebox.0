Delivery-date: Tue, 19 Nov 2024 08:16:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDITm-003k64-1N
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 08:16:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDITl-0002J8-MH
	for lore@pengutronix.de; Tue, 19 Nov 2024 08:16:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F46zMZUwVRdp0pskQs9hedRyPpZdJFf6I7I7e+Drov4=; b=HYku4gZ+xb6vQhvczH1D6DEpQt
	xJiCkLO5kp1oP/sLXFB+1Ql1TL2Xb1zZepJ7AM7bt+Q5ZUwMMQC45MQ9bx4F5Kjl88OJgojdEy4+5
	0wKSpK496uJG51Kme+L+zPbwDt0V3NB1BekHQs28nCC4Mnn4sWnfYqv8ftPjitpP20+yZlO4ucEc/
	dFS8OCggggsqa5ySzGgz8aM7EiYruUYVdUMU3XfwcU7b8OTWnokaDDah4Vcl0InHG6BvzJrNxISbU
	STfyhPJlZ0mVLJTzBkWEjIrRBkUY33rdHP5frsfZX09s1lf9bdJ1fH7+y3cijz5wn2rghkUBaQD+M
	pIcBTL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDIT9-0000000Bc1v-0Zy4;
	Tue, 19 Nov 2024 07:16:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDISR-0000000Bbx4-1oHI
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 07:15:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDISO-00024a-9M; Tue, 19 Nov 2024 08:15:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDISM-001WaZ-1B;
	Tue, 19 Nov 2024 08:15:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDISM-007uh1-0u;
	Tue, 19 Nov 2024 08:15:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Nov 2024 08:15:25 +0100
Message-Id: <20241119071525.1886151-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_231531_468930_A22E4F90 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: [PATCH master] dlmalloc: Fix integer overflow in request2size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Richard Weinberger <richard@nod.at>

req is of type size_t, casting it to long opens the door
for an integer overflow.
Values between LONG_MAX - (SIZE_SZ + MALLOC_ALIGN_MASK) - 1 and LONG_MAX
cause and overflow such that request2size() returns MINSIZE.

Fix by removing the cast.
The origin of the cast is unclear, it's in u-boot and ppcboot since ever
and predates the CVS history.
Doug Lea's original dlmalloc implementation also doesn't have it.

Signed-off-by: Richard Weinberger <richard@nod.at>
Link: https://lore.barebox.org/barebox/2561107.TLnPLrj5Ze@somecomputer/
Link: https://lore.kernel.org/all/20240802100846.16619-2-richard@nod.at/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/dlmalloc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index f92863f180d5..0ec7114c89d7 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -641,8 +641,8 @@ static inline mchunkptr mem2chunk(void *mem)
 /* pad request bytes into a usable size */
 
 #define request2size(req) \
- (((long)((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) < \
-  (long)(MINSIZE + MALLOC_ALIGN_MASK)) ? MINSIZE : \
+ ((((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) < \
+  (MINSIZE + MALLOC_ALIGN_MASK)) ? MINSIZE : \
    (((req) + (SIZE_SZ + MALLOC_ALIGN_MASK)) & ~(MALLOC_ALIGN_MASK)))
 
 /* Check if m has acceptable alignment */
-- 
2.39.5




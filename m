Delivery-date: Fri, 17 May 2024 09:48:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKE-00146a-0A
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:48:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sKD-0007Lm-Fa
	for lore@pengutronix.de; Fri, 17 May 2024 09:48:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9oqQ19FhQLynGAYY4VchfCFnRu43KtvTYwNgBazwglU=; b=iHLr6nG4ydQimpq8anTluNyP5L
	wUHPEq+spam7RxlIRqplO17C1AMJP6APth7dtcenLlKaDxyIx6Vtmilh/M3/by+whwghx2XTK4L9+
	79peq3KgGxoCWrcrTDsnddqY8H1ONcGz3OUV76N7N5u17jFRp3Ij8a+n6i5I5lk1BGr1ed6QdIOkK
	GVEnPDCoCYO8fFuj84QtRCBySAzLd/Ql311Gyk5Svw8AcGPAzk1RzSG5qaHuDwV5gKtoJLFwXzlLd
	6HC4SzszgGbVyEO5/OK8rP2tApy942W1PMTvGnqZV0vfzSKnEmaQH9f4eZ0PLKeOz00q0j/wXK6rt
	MRer1dHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sJs-000000076Tv-1L1O;
	Fri, 17 May 2024 07:48:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sJq-000000076Sd-02Jc
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:47:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJo-00079l-Jl; Fri, 17 May 2024 09:47:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJo-001q0G-6g; Fri, 17 May 2024 09:47:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sJo-003Dad-0P;
	Fri, 17 May 2024 09:47:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:47:53 +0200
Message-Id: <20240517074754.767031-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004758_068264_528BC2CD 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] images: sha_sum: mark as not needing executable stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hash section contains only data, so add a note that an executable
stack is not needed. This will suppress a warning when we start using
this on sandbox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/sha_sum.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/images/sha_sum.S b/images/sha_sum.S
index 5928c206a877..d62af87f6695 100644
--- a/images/sha_sum.S
+++ b/images/sha_sum.S
@@ -1,4 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+
+        .section .note.GNU-stack,"",%progbits
         .section .shasum,"a"
         .globl  sha_sum
 sha_sum:
-- 
2.39.2




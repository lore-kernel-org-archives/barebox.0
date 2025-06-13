Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-006oTa-0Y
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q5-0004oV-Hi
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g1bPcUE1+oNg8kMAeAHaYC3MqU8f/eHEowN+u56pJYI=; b=gjUFF5no22bKgmr1z3pb888h7m
	ZXl2sc+fTbHDG6BlmqN5MTSDXD79pFQSK5+z5ySeZYHtW675/IHZfIfGcYgy6TIaPwJgGwSp/1Y3+
	VebkaKpEbKIsG96yQCouVyZrNLwA5W33m9H+JZUSwh3zB9Tr+vshL6d5Ig7mAyvtgD5pfsNVHAn/p
	iWp88fchtcdSZzCKSY/0GVystJDz0LDZW66X2BySzOlmXewAxZVXvcmDVdq080pfVsVqghneRV7nv
	GIVeki600M8aNa7iTqbIkLr6UCNvi4kDaAv1YLlL/w2XfJlzuX2oUyV4HzbqRSjwkEU73xbaygUMe
	MmAf11pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pp-0000000Fs8E-1jpA;
	Fri, 13 Jun 2025 09:09:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJW-0000000FiEG-33pt
	for barebox@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=g1bPcUE1+oNg8kMAeAHaYC3MqU8f/eHEowN+u56pJYI=; b=D9Fc3lv8kGPhOSC8PbjfpiPfZO
	6UNDVG9CwBs7I8YM43ZiXvbLbde1t6/soSfJ8WdtJTVQQ/0eCr+P9lSsuJpYDDm6hf+kUWFFQWx4V
	piEnHL+XyU3726tNOtbTTsev+1w7aIVTYndFpEWq1QQrB8WzfcrEMnppnJbXUXIx1CwsbAPPrOCg8
	usludFGTHqs14u49kT3CuYhYT5rGJuD4vfGpZfnqxK3tdSb170szpddFdh2U5U/UqCkmYSXW7y2Lw
	O4GN7zR1Y82x0E3AWn4MREX2N16FPtvTbH0i94LvzGi9ovNIrTfVLBpHIn7zij1HHoNoU8DpzUVka
	LlhGj7Cg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJU-00000002udG-3eHy
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:59:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004ch-JI; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fnw-10;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0h;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250613-arm-mmu-xn-ro-v1-1-60f05c6e7b4b@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=962;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tykdY0RGYFPYfQ9gyductA8IceuG33/OROBsbkv7D/c=;
 b=el9QAEc1crIaksPqDipzRKnxv32GOTNIDBIEma5kqyvXTsld294pYfbGcMmtReUbFUGDFRmta
 VQfBkJolmWEDR6aMixrN15CYAPyh7LlW95x3fdP/IPOK6bZ6C++jGsD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_085901_084220_6094E099 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] memory: request RO data section as separate region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Map the RO data section as separate region so that it becomes visible in
the iomem output.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/memory.c b/common/memory.c
index a5b081be2c709f04667a67fbd2110520ab4973e3..708bfd26a0fc3d295d09632fb92e89f474bb7422 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -103,8 +103,12 @@ static int mem_malloc_resource(void)
 			malloc_end - malloc_start + 1);
 	request_barebox_region("barebox code",
 			(unsigned long)&_stext,
-			(unsigned long)&_etext -
+			(unsigned long)&__start_rodata -
 			(unsigned long)&_stext);
+	request_barebox_region("barebox RO data",
+			(unsigned long)&__start_rodata,
+			(unsigned long)&__end_rodata -
+			(unsigned long)&__start_rodata);
 	request_barebox_region("barebox data",
 			(unsigned long)&_sdata,
 			(unsigned long)&_edata -

-- 
2.39.5




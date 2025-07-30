Delivery-date: Wed, 30 Jul 2025 19:14:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhANY-005KVR-1H
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 19:14:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhANX-0003hn-R9
	for lore@pengutronix.de; Wed, 30 Jul 2025 19:14:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YNcxvoD8lV5nIup2r9dEcKoYwzgYG/RB05n8P60vi8Q=; b=MBKVtnUj1SP8xCVAGUxtxCVESk
	WHBSD+FNoyKYzz+6CPgDLDvHyTZXGQeDahpzuGmN5q6aTaj0KTGsNNDnWfEPY5xxUznd+ltTkOB5u
	gi4yXI80Xs1KeMTBcZrtdyhmiBbQ4S0hp0I3WWMsWhreXwxKlaNfm3RPsQC+q0L8JNePcB7o632uh
	q+VBfZWSVep+ubWjdBUkLZwBEEAIX1BoIp+MJU5QmK+FhqU2PZnBiYJBa+dFJcqOTWbCw+ZPnJNnM
	tWfJ/ZO0WzI1ytP9PSBFlTcNOg9m5dsKR5WBaDuSVqJ8sZOUo5nQ+MmkSS9mfc0MVhgjBzE1LaHzj
	4JZft3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhAMq-0000000252V-1IPf;
	Wed, 30 Jul 2025 17:13:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhACf-000000023XY-42sC
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 17:03:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uhACc-0002Gr-Fq
	for barebox@lists.infradead.org; Wed, 30 Jul 2025 19:02:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 30 Jul 2025 19:02:52 +0200
Message-Id: <20250730170252.1285892-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_100258_003942_F1B45741 
X-CRM114-Status: GOOD (  11.08  )
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
Subject: [PATCH] ARM: i.MX8M: remove early handoff-data handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit fd1fbc15d5b9 ("ARM: i.MX: move handoff-data out of OCRAM") added
the support to store early handoff-data within DRAM. As the commit says
this says, this was to be prepared for early-board handoff data passing.

The commit added the support only for i.MX8MM and i.MX93. All other
i.MX8MQ/P/N platforms are left out. This isn't very intuitiv given that
the commit prepared the common code base for future usage.

Furthermore putting the handoff data infront of the bootloader caused a
regression on a custom i.MX8MM board which makes use of the
__imx8mm_load_and_start_image_via_tfa() because barebox is directly
loaded behind secure marked memory.

This partly reverts fd1fbc15d5b9 ("ARM: i.MX: move handoff-data out of
OCRAM") because the early board handoff-data is still unused after a
year and it aligns the common bootflow for i.MX8MQ/P/N/M again.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I wasn't shure how to handle this regression, but in the end I went this
way. Of course I could adapt the lowlevel board code as well to honor
the handoff_data_size(). But I went this way, since this was implemented
for i.MX8MM SoCs only and there is actual no user of it.

That beeing said, IMHO the early board lowlevel handoff-data handling
should be done by the board lowlevel code because the location is very
board specific.

Regards,
 Marco


 arch/arm/mach-imx/atf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index e6c21107a54a..11fe0334059d 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -112,8 +112,6 @@ void imx8mm_load_bl33(void *bl33)
 		hang();
 	}
 
-	handoff_data_move(bl33 - ALIGN(handoff_data_size(), 0x1000));
-
 	/*
 	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
 	 * in EL2. Copy the image there, but replace the PBL part of
-- 
2.39.5




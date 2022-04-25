Delivery-date: Mon, 25 Apr 2022 08:30:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEt-00ERhQ-A2
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:30:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisEq-0000p0-9z
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bidbR8XND5CR1C467xexhL/3GMjscMbBwo8vDr5tHhc=; b=Zi3guJnjLPEsu3
	XSgq07TCn5+JOpajnWpdKK1Spd6IdJHE2s/+28AngDbUseJLP7NoFsLxyXGsf+d1+HiJNPqy6N1uU
	osyYC8IkBI7GnRjUt6ur5sgbO9FKxVSECyiIVyEiDGli0fkiFnsSSDI2PQsda0EykIkdJnfnaVPU6
	hLk9siikBvBs+8IwroPweZXUJt6VwoY1srj3yRwiRqfnV55jctFgUpQGrU9v8MDxdTTS/cD8HXEnX
	85nBVQNQOTWZ4w+NVqBGLSBaUBItxyJVp559K0F0sooRqr1BCLE8vgmxQ2PlrLr8fsHd5isDlBqv+
	+d71e2PDSTDIYdNWHbQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisDe-008Uju-Ds; Mon, 25 Apr 2022 06:29:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisDN-008Udb-QX
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:28:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDM-0000Xg-Jt; Mon, 25 Apr 2022 08:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDN-0055zm-Bx; Mon, 25 Apr 2022 08:28:51 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisDK-0004gY-OH; Mon, 25 Apr 2022 08:28:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Apr 2022 08:28:46 +0200
Message-Id: <20220425062849.17954-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425062849.17954-1-a.fatoum@pengutronix.de>
References: <20220425062849.17954-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232853_938881_85561ED5 
X-CRM114-Status: GOOD (  10.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: cpu: board-dt-2nd: call arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The generic DT image could be started by boot firmware that doesn't do
all the initialization that we do in arm_cpu_lowlevel_init(), so call it
always for good measure. This enables using the generic image as second
stage to the Raspberry Pi videocore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/board-dt-2nd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 0731aecd1a51..6f4a6f26a8c7 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -21,6 +21,8 @@ void dt_2nd_aarch64(void *fdt)
 
 	/* entry point already set up stack */
 
+	arm_cpu_lowlevel_init();
+
 	relocate_to_current_adr();
 	setup_c();
 
@@ -50,6 +52,8 @@ ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
 {
 	unsigned long image_start = (unsigned long)_text + global_variable_offset();
 
+	arm_cpu_lowlevel_init();
+
 	arm_setup_stack(image_start);
 
 	relocate_to_current_adr();
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


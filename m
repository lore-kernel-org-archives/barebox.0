Delivery-date: Tue, 21 Jan 2025 17:50:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSG-002igA-0X
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 17:50:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSG-0003Wt-7W
	for lore@pengutronix.de; Tue, 21 Jan 2025 17:50:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAH/psoNUCZ8eY5RGGcWdsICqgq7wGLAQyvLLTZnuKE=; b=nQcFyDLKhbEJTgaf25xz8wbt2R
	zULIfXVoYojQcY5aV5Bzbm3+CMjQvnMSK4cwZEsEPbmI7yGGThxVBYK202a6x/iVSw3fUI/xKTRob
	Pu9gRCtmOStzDybyTslHPS27A8G/XySt9xvkH7cK5C7pbf0jdC8mvMvgVeyH4/JNrHiFis7cAnWFD
	MU5Zzv1CeFOHqis9t3tAmsYBgK9UKoFWARDgrX5x0FxA58ZqYFMt/+KReyOjhlyqgMMVVr6TUkhi/
	ZomBwaua8K0CAclhtleaCXfWigMiFTDBVRnw5AH85ylDrQynsS2A0deNilcaVnGvFu05S0gxSSVIE
	J9r5YjbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRd-00000008ObH-2KBG;
	Tue, 21 Jan 2025 16:49:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRb-00000008OYj-0XIf
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 16:49:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0003EX-Sd; Tue, 21 Jan 2025 17:49:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0018z4-2B;
	Tue, 21 Jan 2025 17:49:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRY-008WS6-15;
	Tue, 21 Jan 2025 17:49:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 21 Jan 2025 17:49:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250121-feature-pbl-get-time-ns-v1-2-c3d493397846@pengutronix.de>
References: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
In-Reply-To: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_084939_168305_596FFC3B 
X-CRM114-Status: GOOD (  11.02  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: lib32: pbl: implement get_time_ns and is_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARMv7-A cores can implement the optional 64bit wide generic timer
CNTPCT[1]. If it is present we can use it to implement the get_time_ns
and is_timeout helpers which in turn enable the whole read_poll_timeout
class of functions in the PBL. As it is guaranteed that the timer won't
wrap for 40 years no overflow handling is necessary.

[1]: See "ARM Architecture Reference Manual ARMv7-A and ARMv7-R edition
(rev C.d)", Chapter B8 "The Generic Timer"

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_architected_timer.c
index 54eca13f8b9d1c940d54f0e34c1dd261c5eec8c7..75f74cbc15ccf09b2fae1fc287138118c3c3c22c 100644
--- a/arch/arm/lib32/arm_architected_timer.c
+++ b/arch/arm/lib32/arm_architected_timer.c
@@ -10,8 +10,21 @@ void arm_architected_timer_udelay(unsigned long us)
 	unsigned long long ticks, cntfrq = get_cntfrq();
 	unsigned long long start = get_cntpct();
 
-	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
+	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), MSECOND);
 
 	while ((long)(start + ticks - get_cntpct()) > 0)
 		;
 }
+
+uint64_t get_time_ns(void)
+{
+	return get_cntpct() * SECOND / get_cntfrq();
+}
+
+int is_timeout(uint64_t start, uint64_t time_offset_ns)
+{
+	if ((int64_t)(start + time_offset_ns - get_time_ns()) < 0)
+		return 1;
+	else
+		return 0;
+}

-- 
2.39.5




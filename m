Delivery-date: Tue, 21 Jan 2025 17:50:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSH-002igW-1I
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 17:50:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSH-0003YI-HS
	for lore@pengutronix.de; Tue, 21 Jan 2025 17:50:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qoz3Vs8XCmj5UlKPQK2r+ZJEiuyUgkx4ZW3Z1+8mJP4=; b=LdlydNpWE6qbde+4+2KSUuI83Y
	Y2q+TqeTNHKO7ohYoNT53IaKbG3naWetodJaX0+X4MRse4Asi7urU8sUgehHbffwYQrMvuRDTcciC
	uO4a6uuVRG8idq5c4J5Wg3SO8UOuve+dvsdPxmImtm7em8RiQXd3MItRngxRzFYPGF5r4psmswmlE
	FV2vMfqQI3jiSjQjvULsCpn6UsN6BMTyq0h1S807Kb3WC2+X1DFiPLTIS5WLB8bcuVLihLBlC/4tj
	ihRjeulaaAHiTSQC5Hor2vRAPglfJWLJCUs50lc+f9T+7twwDA6GZGi1/Z5bS7chZv6YTKCMYgeq9
	i6XfJ7cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRs-00000008OkI-09g0;
	Tue, 21 Jan 2025 16:49:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRp-00000008OiA-0Guu
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 16:49:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0003EU-Sc; Tue, 21 Jan 2025 17:49:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0018z3-29;
	Tue, 21 Jan 2025 17:49:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRY-008WS6-14;
	Tue, 21 Jan 2025 17:49:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 21 Jan 2025 17:49:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250121-feature-pbl-get-time-ns-v1-1-c3d493397846@pengutronix.de>
References: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
In-Reply-To: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_084953_108567_1FE3A5B9 
X-CRM114-Status: GOOD (  11.63  )
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
Subject: [PATCH 1/3] ARM64: lib64: pbl: implement get_time_ns and
 is_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1], thus
we can use it to implement the get_time_ns and is_timeout helpers which
in turn enable the whole read_poll_timeout class of functions in the
PBL. As it is guaranteed that the timer will not wrap for 40 years no
overflow handling is necessary.

[1]: See "ARM Architecture Reference Manual for A-profile architecture
(rev L.a)", chapter D12 "The Generic Timer in AArch64 state"

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/lib64/pbl.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib64/pbl.c b/arch/arm/lib64/pbl.c
index 78eab33f8d68598554c07f347938cc84608c6716..00b20c5db1bd347ae4c4a3ce9eaa792fec3d07c9 100644
--- a/arch/arm/lib64/pbl.c
+++ b/arch/arm/lib64/pbl.c
@@ -7,7 +7,7 @@
 void udelay(unsigned long us)
 {
 	unsigned long cntfrq = get_cntfrq();
-	unsigned long ticks = (us * cntfrq) / 1000000;
+	unsigned long ticks = (us * cntfrq) / MSECOND;
 	unsigned long start = get_cntpct();
 
 	while ((long)(start + ticks - get_cntpct()) > 0);
@@ -15,5 +15,18 @@ void udelay(unsigned long us)
 
 void mdelay(unsigned long ms)
 {
-	udelay(ms * 1000);
+	udelay(ms * USECOND);
+}
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
 }

-- 
2.39.5




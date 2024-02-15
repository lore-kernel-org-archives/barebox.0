Delivery-date: Thu, 15 Feb 2024 17:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedd-007dAU-1i
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedb-0005he-CI
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KtYgJPIPrAUgA2iAN4jvxawJeGVg3+KnSgrDCPzvPmw=; b=uk+KNiCEwZ1xLyqhA7irN5mmGs
	+0q1yaDkKGa+PdfLiKHdGbdAXeA+V1baq+sKjBNsLtfyOCoOVS1AkVbAYyNdYpUiQSJT0Zr7iqhKO
	nHgBD+H+pld03WcNN6fmiUwhPAegc5irh+aM5KhQynU/2QLUhWze1rDiw42WAvvaHLChDCdyxno0w
	bAGsDmht4mvuAn1TIzRRL5OHcvG06CCJRU1fotRJsuOj5gOnkcrzhI8thE2GflwuoPiLp38CEL5NF
	33ZY2cj3pYNKqpAURWB/FOpf7yfwjryeUmw9+BHojdoAZHrN1FNatpW7mrwQng2U14QrC3+3HAiKX
	m4WVPeYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecy-0000000GyQM-3Dva;
	Thu, 15 Feb 2024 16:30:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecr-0000000GyLh-2O5K
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005H6-Lr; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzU-7a; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-0T;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:29:59 +0100
Message-Id: <20240215163009.2172795-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083017_697873_9BC9F5FB 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 05/15] ARM: at91: implement SAM9_ENTRY_FUNCTION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An On-chip SRAM is available at address 0x00300000 on all SAM9x
variants, so let's define a macro that sets up the stack to grow
down from its end. This will be useful for first stage barebox running
without previously setup stack.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 include/mach/at91/barebox-arm.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/mach/at91/barebox-arm.h b/include/mach/at91/barebox-arm.h
index f82b82ebed8b..652fd283a0af 100644
--- a/include/mach/at91/barebox-arm.h
+++ b/include/mach/at91/barebox-arm.h
@@ -6,6 +6,7 @@
 #include <asm/common.h>
 #include <mach/at91/sama5d3.h>
 #include <mach/at91/sama5d4.h>
+#include <mach/at91/at91sam9261.h>
 
 #ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
 #define AT91_EXV6	".word _barebox_image_size\n"
@@ -68,6 +69,10 @@ static __always_inline void __barebox_at91_head(void)
 #define SAMA5D4_ENTRY_FUNCTION(name, r4)					\
 	SAMA5_ENTRY_FUNCTION(name, SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE, r4)
 
+#define SAM9_ENTRY_FUNCTION(name)	\
+	ENTRY_FUNCTION_WITHSTACK_HEAD(name, AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE, \
+				      __barebox_at91_head, r0, r1, r2)
+
 #define AT91_ENTRY_FUNCTION(fn, r0, r1, r2)					\
 	ENTRY_FUNCTION_WITHSTACK_HEAD(fn, 0, __barebox_at91_head, r0, r1, r2)
 
-- 
2.39.2




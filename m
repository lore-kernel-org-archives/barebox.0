Delivery-date: Tue, 20 Feb 2024 10:32:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMU6-00Fql2-0M
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMU4-0002uj-Ik
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ncKm7bSml77iHPSOyMvuo70ggtb1k6Bk/ognGExUiiM=; b=af+YM7SAN4qp+Ewyif6X4y2moD
	JYE34f8H53zddFb3Qssq9dB3Kt+NduoREYe4GI4n61oBbkH/F9w2OWqaXIS5P1A3tTu83lUXH+hRf
	REJkQTQPSzya1yvK68yIYuNp5mVnWFvpasc6unRm02ZUDDLQpovv+GSGOpIwHCwX7lT8AmY7i+1+K
	FIoyGgAi0x3lDj2dd/h/5itdwJesBhsRNH6eI83BRivm6XdWWk4snEebgl1OtfkwiEoq1A6IGwGMt
	Hyh+3GNvbrv8VXS+0FaHkwfzXAN+Up0ebhR3Auj4tqLBFMiRChbGcedaZzUuUfE480t8jgMiQclt1
	7ikHegpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMTP-0000000E089-2Sg7;
	Tue, 20 Feb 2024 09:31:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMTG-0000000E00k-0InQ
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002F4-N3; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001ohz-9x; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-0i;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:51 +0100
Message-Id: <20240220093100.1539120-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013126_328727_3726A877 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 05/14] ARM: at91: implement SAM9_ENTRY_FUNCTION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An On-chip SRAM is available at address 0x00300000 on all SAM9x
variants, so let's define a macro that sets up the stack to grow
down from its end. This will be useful for first stage barebox running
without previously setup stack.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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




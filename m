Delivery-date: Mon, 08 Dec 2025 11:33:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYYC-009BN0-2C
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 11:33:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYYC-0002nk-5r
	for lore@pengutronix.de; Mon, 08 Dec 2025 11:33:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fNvvyy4dxLkQvyWjsaBjbrKGY4xpzaGlJROZNVRSORQ=; b=AlRQWB0R5g2KRLj3hYCGGQjV+N
	mR+cnwaNzoe8dgKcitd7awHUpjhE10HwqPqTzWVHM8Sm3vcN/lLJm6Y91pXcAAAMiTfFBwQ0GmpqW
	s6dU4H9V3/kTS68xxaguJHGERpjkJzsn48I2h1rJ13MbsVRKJyU4tIllAD5qcSHk/wsrGjdAyLmIJ
	8YwvscWI9b9taZCB4yAGVqFlfXXpUVBsPREe8DVrXsja+UEDJktyfR3eZjkgLE63lZsPeTa5LSXTx
	aTG366OrK0atu9F+ojZlOcofJM2DMnVNL1LRDpLaotoMJsxpsz1mfiWsTuRhh1sfX5ncBW1NnUovT
	FnHJmrdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYXo-0000000CxMh-1kI7;
	Mon, 08 Dec 2025 10:32:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYXm-0000000CxLR-2Y5M
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 10:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXk-0002gz-Vv; Mon, 08 Dec 2025 11:32:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXk-004b2G-2Z;
	Mon, 08 Dec 2025 11:32:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXk-0000000HKpz-2xFA;
	Mon, 08 Dec 2025 11:32:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Dec 2025 11:32:35 +0100
Message-ID: <20251208103236.4131639-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_023238_645849_EC232920 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! printf: define printk/no_printk in terms of prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

printf: use printf instead of printk in no_printk

The original commit was decoupling them a bit to allow for implementing
a printk with Linux semantics. This also requires us that no_printf has
no dependency on printk, but that was missed. Add that now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/printf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/printf.h b/include/printf.h
index 58793bc067dc..3503b72c9e5e 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -37,7 +37,7 @@ void __noreturn panic_no_stacktrace(const char *fmt, ...) __printf(1, 2);
 #define no_printf(fmt, ...)				\
 ({							\
 	if (0)						\
-		printk(fmt, ##__VA_ARGS__);		\
+		printf(fmt, ##__VA_ARGS__);		\
 	0;						\
 })
 
-- 
2.47.3




Delivery-date: Fri, 03 Mar 2023 10:26:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1gC-007Njd-NS
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:26:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1gC-0002a8-5W
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:26:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sz/Dya15i16IkTvLCT8ewjp2I8/oCRFDkiXEcD5khKQ=; b=zHrsQ1c1rhlxhS5myaM0xNSzvr
	cPDJdCNa3KZb6QcRRqMSZpacn0hssyc0NwKmPI6PU8199xSuAVBn///3DlLWAMr6vQlzAzq6Wqz1q
	T1haPJGaDgaWAXPxcK++btnGcfp8bZOQlOKvbCcyI46Re1xNKQRIkrEv4O/t2Kh7xMApBQf6UyqUO
	QzlgNo14WcT/Q0QQp0pDJaZlniR0GUeBCOhTdIPLwtutg+dYq/8eokIPaq4QwJDUnWqb1B2LAAnVA
	+9GIL7GK9FBIle5F8rIETL6Oo4UEkFJxY/xRvbvm4WFHEKKksqJm645ZAGVrqDjVss7wS3IkUWHYg
	SuqlTZjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1es-005gbV-Dh; Fri, 03 Mar 2023 09:24:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bt-005eVy-De
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sz/Dya15i16IkTvLCT8ewjp2I8/oCRFDkiXEcD5khKQ=; b=GRbBXAixtaeocsZwW0NAafZ29b
	rZf0m5N+8d04olombSA1FLJhklt2l/0vU3qnUQHAoKnRYpqtroHizY4W7HfPlRnJYqQ4TYiIhy6vt
	Z+2LVHwmOsf47IYFsy+2rrL5dx7zgPqA7MbKI6MNTpFoHv/pVl4C24LAfSgAXXycgDQoRm2jRXncY
	tBwYXLzZzT7ieuIolEgcKdnDaXUZxUm9yTwIyTNETYle9rwH+THdreFMKg25r/jX/eBNLoF1gl92O
	JHx/puTVjultdCd00m9y9wO3AgHrW04B14LqA45K4hgr5L+8BQtNjLt1ddeP0Al3PibyxGupjufx3
	hDkAQZyg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bn-0031N7-7q
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000IP-0d; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wjs-Bj; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2hz-PM; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:07 +0100
Message-Id: <20230303092131.3063587-27-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092147_996360_9A499983 
X-CRM114-Status: GOOD (  10.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/50] debug_ll ns16550: Do not define PUTC_LL()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ns16550 debug_ll helper always defines PUTC_LL() when included.
This is not always desired, so rename it to debug_ll_ns16550_putc()
and let the user define PUTC_LL() when desired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/debug_ll/ns16550.h         |  2 +-
 include/mach/bcm283x/debug_ll.h    | 10 ++++++++++
 include/mach/layerscape/debug_ll.h |  5 +++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index a4ca7332d3..a3ea5fcfcc 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -29,7 +29,7 @@
 
 #define NS16550_LCR_BKSE	0x80 /* Bank select enable */
 
-static inline void PUTC_LL(char ch)
+static inline void debug_ll_ns16550_putc(char ch)
 {
         while (!(debug_ll_read_reg(NS16550_LSR) & NS16550_LSR_THRE))
                 ;
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index 424de8be4e..e89328340a 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -67,6 +67,11 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
 #elif defined CONFIG_DEBUG_RPI4_MINI_UART
 
 static inline uint8_t debug_ll_read_reg(int reg)
@@ -86,6 +91,11 @@ static inline void debug_ll_init(void)
 	/* Configured by ROM */
 }
 
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
 #else
 
 static inline void debug_ll_init(void)
diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index e731de29b6..0ed12f3f42 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -33,4 +33,9 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
 #endif /* __MACH_LAYERSCAPE_DEBUG_LL_H__ */
-- 
2.30.2




Delivery-date: Mon, 17 May 2021 20:56:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPM-0005TH-S3
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPL-00041b-HQ
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mRNPbFY7WeG4qE3i7KHtnzTQ4C4Q4lqQ/AbZpAMoVkI=; b=QpvMq1ISIAT5sjpg3P/BHr5yu
	8bG2hYuw+maUNPPZJoOHZcDxcWYQkxb4OKwPuL53yhYT/lmGdYmQbXQa6gbSOuRtbQ+AvpnEj5avK
	h+9KOT9lXqN6bFEmJYbeHQm0vN3fnO1jlGYpCHrSA3KHfeLIORgTI4xg/4zYX/+gxQ2LbkjGEn4iU
	R7ZCOaTIi/GHqEejmrdeTmarTx98XDYqGzdXGD2VibUSY4v2oJttXkZUbH1CLLtsRA5ygXugvD6cT
	4HZerUg7Et8nUc79BQlK8UZcYbd3IbsHAi30gXTZuDcbm8wytIezHqjuI+Pg0FAIrzlrwS7SJL3Oa
	AqBYtkItQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOU-00Ftbw-8N; Mon, 17 May 2021 18:55:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNt-00FtUj-Pt
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QXbvXe3tDgrXNib7fvzCfbPzWBEVM7RFsiq1thk9MAw=; b=EY9DqjKc/JTpxwc6SPxyGGsTHl
 p3jm1ZVxpfF8XqTIL+jr+R9KXqZPRUbvKEf9dKIbnWA+P4uiSj15WwiIlwWj4OMGlzpEIvo+hGLMA
 n7b/8MpAs/5DHhbToBvEoORZBRFx6Gu1qJ+MV1esNGlRUQvNL1xt13l0OZEgkGfZcSRQhuVJqc4BL
 17QATjqm7t/m9oy5VuZEPUkZEze5KqVFCNqUtjDCOoGccR6Y8qlBnO6NWyFVGbwXV7Zq/75j52GO7
 XVs/zgjB46dAdA6bTwwSDPj0Dtg6tgSLK0z+bOXerB7T+cnj8AKSFtisL8XMD6jopVlEgiECKwTxo
 PnjVS1iA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SV-3w
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003P7-9m; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002x8-A6; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:10 +0200
Message-Id: <20210517185424.32145-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_327561_9152DC7C 
X-CRM114-Status: GOOD (  11.26  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/15] arm: friendlyarm-tiny210: Remove dead code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pin_usage[] is an empty array, no need to iterate over it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-tiny210/tiny210.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index c96aa83059..c47f488207 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -31,11 +31,6 @@
 #include <mach/s3c-clocks.h>
 #include <mach/s3c-generic.h>
 
-
-static const unsigned pin_usage[] = {
-	/* TODO */
-};
-
 static struct gpio_led leds[] = {
 	{
 		.gpio = GPJ20,
@@ -91,8 +86,6 @@ console_initcall(tiny210_console_init);
 static int tiny210_devices_init(void)
 {
 	int i;
-	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
-		s3c_gpio_mode(pin_usage[i]);
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++) {
 		leds[i].active_low = 1;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


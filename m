Delivery-date: Thu, 07 May 2026 13:41:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKx6s-001wyu-08
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKx6n-0004ll-1X
	for lore@pengutronix.de; Thu, 07 May 2026 13:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3xBzqSzaQ7A7wBvNQwHt5of/kXTtIwuq2TwpwK6dk6I=; b=RgfEIj7wO8mzbOrmgIpQZWy36c
	9mGGvr997N6t4UVFKUjB3+FB7ZtaKZ9bgOOOeF3c7D5CJXYr5df1FlahgjcS5uQ5rhDo1Rruw5lul
	M0hiNSNHyl9wPjxV66fktlqbmfVIrUgkBMqUCoqUdI/aVZZ8u9QqgPBp5nyhr+gSuy7l60F6C7h7M
	4R/SYR6nc1bgKOU4Y8xh6mgZBc6CeneJnu2I1Klwl1QbaAijTxVvgV6kJmEmIaS85iD0Xrq7oIygb
	yuAoF/XpUgLnywR9dlC1tiqJzujWxclFtQ/KkCcr1twclvQnluQ3PiwJMOAYUHVxFnGg5smjuHGAE
	qp1xn+RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwd0-00000003aIZ-0oF7;
	Thu, 07 May 2026 11:10:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwcz-00000003aI6-0Wqx
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=3xBzqSzaQ7A7wBvNQwHt5of/kXTtIwuq2TwpwK6dk6I=; b=T2Xsg5EjFqILw/zDhSWVVkiST9
	dXxnNtH7GUXSnZo5mUAm65MlSJG7f6D8s+DKOqXs3FOl1UnkUJpaSw48SnVH6P+Q41oYRsVd3PlHc
	JRR84NARh+XLb+HEsd6ci+jtMxyGHqUz5g36beeoyRXBpLPLrPqlNkBexpDmhwf83SkAnVoM3ylAK
	tCNmPCrPgDvOiEGQZgGG0Uj/ndcBdZLtDAgx4lpsBsQfwxoebVwEB6jZdZkZgP5NCqvOwF5Nf2Yeq
	zrz+UGXzvvpg6BWCKXyB45jeqCqG7bebkcVg8uyqju6DK8NeRPeFLVjcL3woWnjKHd8AJpGxi9lQt
	zyY7l07w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwcw-00000003K94-00ke
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:10:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wKwcu-00046U-HR; Thu, 07 May 2026 13:10:44 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 07 May 2026 13:10:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-input_is_key_pressed-v1-2-fc701980cb37@pengutronix.de>
References: <20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de>
In-Reply-To: <20260507-input_is_key_pressed-v1-0-fc701980cb37@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1913; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=EqCVo09mfsZmsCx8QRzOKSCYPaQ/wzr/yvn4iu/1BX4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsj8U2zydLrO07RjcnJp6ZZdl5Re9vuuS5xjVn5SZ3ZVh
 t16xbgFHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgIlU3mX4p/leb33lDvPcr3N3
 zYjdFbiW7+ehxXHh/xQDDJhubl0lxsTI8Hln4PrTAZ132Rrtet1uHp1XeP3P09N8GltsXyUIhfD
 qMQAA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_121046_399066_253E443F 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: boards: protonic-imx6: use input_is_key_pressed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

input_key_get_status() prepares a bitmap of the provided size. This
means that a keycode provided here is not actually contained in the
resulting bitmap and the test is guaranteed to fail at least if the
provided keycode is a multiple of sizeof(long)*8.

input_key_get_status(keys, KEY_CYCLEWINDOWS + 1) would have been
correct.

The use of xzalloc to allocate the bitmap is also incorrect,
bitmap_xzalloc(KEY_CYCLEWINDOWS + 1) would have been correct.

As bitmaps are composed of longs, the underlying array is always sized a
multiple of sizeof(long). Although the allocations are unaffected by
this as they are a multiple of sizeof(long) too, xzalloc only zeroes the
specified number of bytes resulting in a potentially nonzero bitmap.

Avoid those troubles altogether and use input_is_key_pressed() instead.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 3bb2632693..174ccf70bd 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -740,21 +740,15 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
 
 static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 {
-	unsigned long *keys;
-
 	of_devices_ensure_probed_by_compatible("gpio-keys");
 
 	/*
 	 * Prefer USB-boot and enable autoboot with timeout when CYCLE-F6 key
 	 * combination is pressed.
 	 */
-	keys = xzalloc((KEY_CYCLEWINDOWS / 8) + 1);
-	input_key_get_status(keys, KEY_CYCLEWINDOWS);
-
-	if (!(test_bit(KEY_CYCLEWINDOWS, keys) && test_bit(KEY_F6, keys)))
+	if (!(input_is_key_pressed(KEY_CYCLEWINDOWS) && input_is_key_pressed(KEY_F6)))
 		priv->no_usb_check = 1;
 
-	free(keys);
 	return 0;
 }
 

-- 
2.53.0.610.g30c4861dc6




Delivery-date: Fri, 17 Apr 2026 14:20:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDiBh-00DC6C-2d
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 14:20:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDiBh-00028U-8m
	for lore@pengutronix.de; Fri, 17 Apr 2026 14:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0PlBeCYHtbVmLPgmiiUiMbGGhi3Q/CdKibYcPvBmup0=; b=roaRK13gqjRyPfCXRiSz4BtMCN
	+WhnbWhgPP4HpdsPKgaGUA/vLOqXyUabuoA47GoPNhXXZifuBZi2/tAfjfUirDzZkwM1VM7XK8pcX
	yqz4ByZuPjM+woh7tt6CMBeDFPebwcwKMOzJMjjlP4fvOO4mYP9+hdd7pfIA9BLdQFR8PkCc2+79B
	Ef2AwkzX+uqFH7VkvEcpN6lLgCQbC6G3CYVINuBCyO074H2WsQ8CLP11wL8VLqU9vlEV5hHKy03oH
	/z8eUvLcu7ChDqznG3BIB4k+Uj+Ijx+t2soahmxeUabGjMiy0djcI8aEZoi110zyXr8nLgyIyc7zL
	KeW9qxqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDiBA-0000000429X-1YW0;
	Fri, 17 Apr 2026 12:20:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDiB7-0000000428j-0T5A
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 12:20:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDiB5-0001wo-3N; Fri, 17 Apr 2026 14:20:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDiB4-005qVq-2x;
	Fri, 17 Apr 2026 14:20:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDiB4-00000008WVH-3RWD;
	Fri, 17 Apr 2026 14:20:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Apr 2026 14:20:02 +0200
Message-ID: <20260417122004.2030708-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_052009_151997_33E7A6A4 
X-CRM114-Status: GOOD (  10.66  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: stm32mp: stm32mp135-dk: disable button on PA13
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After update to the v7.0-rc1 device trees, boot up on the board
reports following error:

  ERROR: gpiolib: _gpio_request: gpio-13 (led-red) status -16

This is caused by the combination of following two upstream kernel commits:

57012d79fefd ("ARM: dts: stm32: add UserPA13 button on stm32mp135f-dk")
31f0d9a486a8 ("ARM: dts: stm32: Add red LED for stm32mp135f-dk board")

Both reference the same &gpioa 13. Linux didn't seem to mind, but
barebox fails the LED driver probe, because the GPIO had already been
requested.

Assuming it is correct that they share the same GPIO physically,
Blinking the LED would register a button press, so it sounds not so
useful to have both enabled by default.

Thus disable the button in barebox.

This has been reported upstream at [1].

[1]: https://lore.kernel.org/all/382d28eb-557c-4cae-898c-8ed5c8cd7843@pengutronix.de/

Fixes: fe223ba39321 ("dts: update to v7.0-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp135f-dk.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/stm32mp135f-dk.dts b/arch/arm/dts/stm32mp135f-dk.dts
index bf45276c864f..2887d153bc2d 100644
--- a/arch/arm/dts/stm32mp135f-dk.dts
+++ b/arch/arm/dts/stm32mp135f-dk.dts
@@ -16,3 +16,8 @@ environment {
 		};
 	};
 };
+
+&{/gpio-keys/button-user} {
+	/* The button shared the same GPIO as led-red */
+	barebox,status = "disabled";
+};
-- 
2.47.3




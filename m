Delivery-date: Fri, 27 Jun 2025 17:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiF-00BeqR-2X
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiF-0004pz-7n
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:09:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l+DG6P7Of1BdQAqK/dhUBQOaHk4syr6dhp8qvJSTxKk=; b=i3hwiNG3HXsqkDkrEwOMqGTNzA
	e+32SltXE/ys3d/umGtXAJBWlA18UIQ3gaNGAvhIdoznJhVCXR387VHt4+Hmuv5hEWlL4cPxX6cAG
	V5VVlNv8LnPXATlFkgyiVUDyoK9xBUTEh5R+mfBkbBxpiKw/coNXFXCouuSM7OERMf3CqZpKZO4TR
	ZNaSOp/FCdHP8vMm5VlL0UGPlw5nhc0rWtZOqoUZXWsJYIRJleke0FDJ699Ju2EQL5z6pMbKON1er
	sk38EHg9gthEV4t3GiAlqYOCb/biKjZs61q9hnsKfFVl2B0NAYe3RvN5vGBOA5Z36HyAeIYQ5xBGb
	k/qO2mfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhi-0000000F0xz-3huk;
	Fri, 27 Jun 2025 15:09:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAAt-0000000Evk0-3ups
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-0008NC-LS; Fri, 27 Jun 2025 16:35:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-005dIe-1W;
	Fri, 27 Jun 2025 16:35:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2X;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:08:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-14-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=973;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2L29Wjp9WeU1Sw4DJIGNogUwbaq7JHA4fVbpkNar+pQ=;
 b=5nGypACaHxm/EhoDQoSDBbwujTVedsLOpvsXhAV4D2UA5kCUxzN0cwLgNT9he2OEcUT7Gnw4g
 jvV/0ODVtv/CdtHDTcNU42QyR3GSlY+vI32sqSDwne0nYH9vKeipJNx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_073533_174884_5FA67D0C 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/14] ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The first thing the tqma6ulx lowlevel code does is setting up the stack.
Use ENTRY_FUNCTION_WITHSTACK() which is specifically for this purpose.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index da67e67537167096477de2b905ee5c42c653c3af..57639f8a84e7680c4ee0608abf31ae8b6f1cfd28 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -92,13 +92,10 @@ static void noinline start_mba6ulx(void)
 	imx6ul_barebox_entry(fdt);
 }
 
-ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
+ENTRY_FUNCTION_WITHSTACK(start_imx6ul_mba6ulx, 0x00910000, r0, r1, r2)
 {
-
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000);
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		imx6_uart_setup_ll();
 		putc_ll('>');

-- 
2.39.5




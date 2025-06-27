Delivery-date: Fri, 27 Jun 2025 16:20:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vu-00BeEU-2U
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 16:20:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vt-0004EN-Hf
	for lore@pengutronix.de; Fri, 27 Jun 2025 16:20:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NrvZarJNysw3LgdrdmdqQFUkXTxYj4q1cVTAOcnnCtI=; b=RfSwiNFaGDsZWNF5ln/xW/bhvA
	wscBDMJ7Ys6qaWTT2hs7XUapLmhP7RtqmpihwnMgAsm2KFAvdrEsPTAZ41ZZmN2vKVf6EqxLzhQVO
	J0YEa1pUmcI5VYOlI0HLBLkMarsabgJQef0hIIwMX8hW/Or0LyRmFjAhRiwc7NfcrLJPtNova7fv2
	EiJFn8o3IgkNJ6baTRq6itAACRqJI5Argz6s7PkCBvXqil4eYSO58eA7g5isgjciApz1z0YHjYim2
	TS/kauU/yIwHQIhDJPWbMJPP7waUHwd2Dk/rgrkZQJFDeYLoh7Aq+Kn0v9QT8XMChtip1AFBUQpII
	DHlupycw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9vQ-0000000Et0X-2dzP;
	Fri, 27 Jun 2025 14:19:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9kJ-0000000ErWT-3Mc1
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:08:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kH-0004vI-3F; Fri, 27 Jun 2025 16:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-005dAT-2Y;
	Fri, 27 Jun 2025 16:08:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2J;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-1-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=670;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=K2aC3iMfTbm1ZSqL34/UiiRGQ7F/Us6kdlKmfnLq4OQ=;
 b=NXdJP/q5SEGck5X2BNHw12MK4bXA07eNU8jUHGOUMIMBM5CtjATQVm/JpFjCRue9Cytt178qR
 b3BM7yEw0dHAB/9EkZkNR8L0+Uv/Ifp+wueT3jP2Ji86iDXLPKsMWoj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_070803_889540_C57C1C8B 
X-CRM114-Status: UNSURE (   8.24  )
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
Subject: [PATCH 01/14] pbl: add panic_no_stacktrace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM code calls panic_no_stacktrace() when exceptions are enabled.
In order to to add exception handling support for PBL introduce
panic_no_stacktrace() for PBL as an alias to panic().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/misc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/pbl/misc.c b/pbl/misc.c
index 1f0d992ce08b5c45e8416885de7395f065ab7666..075c6a854bc8c0e01000087bd2a957a7abe92d0d 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -20,3 +20,6 @@ void __noreturn panic(const char *fmt, ...)
 	va_end(args);
 	while(1);
 }
+
+void __noreturn panic_no_stacktrace(const char *fmt, ...)
+	__alias(panic);

-- 
2.39.5




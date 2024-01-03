Delivery-date: Wed, 03 Jan 2024 20:46:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cb-002Uzi-0E
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7CZ-00042s-TJ
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Swz+/K+ajUjOjr1mquQ4jpnX+iRgDYtjccY/TL0dFiI=; b=buEJ4ZlMOpXN5bMzXs8fgCNGe2
	BGGqOx4rlG8jV6LYGor/EovSC/CcRySZAzj7avHIpbRU7lKv2dBHsd0gxosNoB2CGgWs+oPRbL+R1
	aOkTkW5fhw+T32pg1aJHkMmlxMxXUWQljrR3zovrWuo8APIP2SV0hWjRwvAxWnQNob/vcjeRJUIQt
	rw/goqSfdyl0UNKrskDvYdEJUP5QaKOPp+XA0sSwKjm8J+TfH50aZOs17soKrUBhi8zBrau7ZBGVv
	ahG27ZyMbPndj6dmMNZXaXs14wEiOtBMXdMkuU4wc7d14AcDCplGK9Yg81xPUDvMAhcITWTJomeTC
	DL3dUMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BR-00Bw4q-0R;
	Wed, 03 Jan 2024 19:45:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh19-1X
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001NR-67; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60x-000As0-Pu; Wed, 03 Jan 2024 19:30:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-0G;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:45 +0100
Message-Id: <20240103181312.409668-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_548588_0D37B9D9 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 025/112] efi: payload: restrict 8250 UART at I/O port 0x3f8 registration to x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 8250 is available on other platforms, but being located at I/O port
0x3f8 is mostly a x86 PC thing, so restrict registering that console to
x86.

This will become required when we start building EFI payload binaries
for architectures besides x86.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index b0612276654e..8a9080115ffd 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -215,8 +215,9 @@ static int efi_console_init(void)
 
 	add_generic_device("efi-stdio", DEVICE_ID_SINGLE, NULL, 0 , 0, 0, NULL);
 
-	add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
-				&ns16550_plat);
+	if (IS_ENABLED(CONFIG_X86))
+		add_ns16550_device(0, 0x3f8, 0x10, IORESOURCE_IO | IORESOURCE_MEM_8BIT,
+					&ns16550_plat);
 
 	return 0;
 }
-- 
2.39.2




Delivery-date: Mon, 04 Mar 2024 20:08:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDg9-008dYv-1X
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDg8-0003fh-Lk
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tzRIRUOwiSfFYDNtdbNh6/udDtB12+aIxg0G7NqS7Q8=; b=Ei4prTGVV8g5atHAL5RYVHMMMn
	DF+xXu5LAKjt4Bx6a1hsGKZPwkmuuqu9Yt4HDFOdAQU1SL5ZC42YyxEA9aHrKvXejYPOBVbmXaH7f
	oRI32vgBjtkYx0zLQJRy+hywwY5wZiaIScxk4SWbJDS/5WHrSvD44FPYmR/gqSxibIl95jGZgO7dO
	xG1ba0nNW3CP7alAe3/bE4R0xZO8QeGIgxa7E2pEnqh/Tq1Z+RXBae/mBlyu2gwgd5HMs0wNZIs3H
	AZLvu7VMKqIP+O+shwQ7e+CHTG24eRd2TilIT4UTPAFCIClvFH6Xv8dVWQmoJV1QRCv0RMxnh2pWS
	mdsmHfmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfW-0000000ALwQ-0Sjp;
	Mon, 04 Mar 2024 19:08:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-0000000AIXW-3p0T
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tzRIRUOwiSfFYDNtdbNh6/udDtB12+aIxg0G7NqS7Q8=; b=TcouRKItXmYnVTlY1OsAQNhnqr
	CiduY4ZIxqAYwUCIT4fg5+T+WUZrwy17fI8ZCV1Cg3PbxHId5Gb7PmHPfBVLtX449MTyjQfDdBanR
	be+r9eBhBsgVGK/OUShysHUY6pSPk50LBpsBLT92w1so1AlV3OIkk3hxSGvTLPmT2IXuQfcEw8yTf
	TLmenz4dyqiyKbH6K5BTbGg+jkxHyzz6xmyiVwVK9SdTPcWeI11zuPwnLW82o/ZIPAw7VMD9UZfwH
	Mf0fYKSr4nA3hApsIE1rFJgn0PmMP3j5s5hq/Djkoresu5gfkb7yFG9owbEvwGIVzzk84EEXzpD4v
	cNc3h09g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-000000051vi-3Icw
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Ae-8d; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKQ-Li; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-0c;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:10 +0100
Message-Id: <20240304190038.3486881-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190254_859785_D54A93C4 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 025/113] efi: payload: restrict 8250 UART at I/O port 0x3f8 registration to x86
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
index 9afb11fd94a5..5f2cb085da90 100644
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




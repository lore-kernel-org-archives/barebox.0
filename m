Delivery-date: Tue, 27 May 2025 23:32:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tx-000yPS-1I
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-0005rX-6b
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P0qpbSt3I8Qe/Ec9ZfXsMiVKULZ2pyUxqxXyFMNq5XA=; b=jNedg96lUffFJ0aLL+L5wn2tNI
	iOR98zwhZyKnwsQNbayTIZYG31xttiWN259RI6RX0ET1z2/2J24IZ2YEIeNfKbWO8KxtyiwugfzRj
	YZ2RQLKU9KKMLOVQK6XQV9+T1YK1t5BGJmxF/854rwr9+p6z7jhb3xPSEotu0a7SWkIkAUUcs92SP
	RybUUUtC3oxs88aC7NofHV9gBJGvosQmCYnynBK902S25tARHzM/CzTA9VGVoYGCtM4T0lFgwKqL5
	EI3N+Swxzo7thppcuVmD5tvdSmAtzwjcYZb7yeB8XCAtihbJShI7aRz52t2jotzkR0P7duFI2+4wf
	dcV/7TVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tO-0000000BbuN-2pJD;
	Tue, 27 May 2025 21:31:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lW-0000000Bb0H-0KhH
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lU-00015n-NK; Tue, 27 May 2025 23:23:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:22:59 +0200
Message-Id: <20250527212300.575031-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142318_113777_378AD6A9 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/15] clocksource: efi: use DIV_ROUND_DOWN_ULL for 64-bit devision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

The denominator freq is 64-bit, but this worked out ok so far, because
the driver was only used on 64-bit systems. Now that we want to start
compiling it for 32-bit as well, make the division work there as well.

Note that nb_100ns is a valid result and will instruct the EFI firmware
to expire the timer at the next tick.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clocksource/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 1ac587a715f2..2f8bfdec489a 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -74,7 +74,7 @@ static int efi_cs_init(struct clocksource *cs)
 			BS->close_event(efi_cs_evt);
 			return -ENODEV;
 		}
-		nb_100ns = 10 * 1000 * 1000 / freq;
+		nb_100ns = DIV_ROUND_DOWN_ULL(10 * 1000 * 1000, freq);
 		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
 		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
 		if (EFI_ERROR(efiret)) {
-- 
2.39.5




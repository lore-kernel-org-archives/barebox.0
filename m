Delivery-date: Mon, 22 May 2023 07:23:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1G-009Iq4-5K
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1D-0001Qc-Hj
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y22Zr1mz7tjlYMGifl68q7Qacp2G7S1fWTZOA0F2D3k=; b=nH7MthKQTgXC/YytOvHqz2T2kh
	reL+a45wSWiRm4g5rctb0TrtzveB7e/VQKGayqeFyZWbJrHj+sbUwVBIaoRL66ZBK+1P9+5eyUAH0
	tqpnNnJ1K0dRXaB4Eekb/3+hI2RRcCNe5p5J6E6V+Ch5YYyUGsC/cS7gNBNk4n6vWCmN/9ucWRVzn
	VvZMf+aoZJii2wpoqkM2yp6dNJcjkH3wQCF59riC7H4P7yXea4DhkJn5TK3jXoUztzHZ+fWrAFpY6
	wjeDWKNI2JNN5q96xmvCKNCHO8HsIigYTgu8/9juapweZoED7Av5vGYm6Hr4x3hIWXFYYwtoUYy28
	BWkfhK6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y06-005NAn-2T;
	Mon, 22 May 2023 05:22:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y02-005N75-0h
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y01-00017A-1h; Mon, 22 May 2023 07:22:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-001vuQ-DY; Mon, 22 May 2023 07:22:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1c-31; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:22:22 +0200
Message-Id: <20230522052222.1037931-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222226_263493_71564678 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 7/7] console: don't fixup baud rate into earlycon string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By design, earlycon depends on boot firmware to setup the console for
Linux to use early before proper driver probe. When we specify the
baudrate though, the earlycon implementation may configure UART-internal
dividers to try to achieve the specified baudrate. The bus clock being
divided is defined statically Linux-architecture-wide using the BASE_BAUD
symbol, which is not suitable across different baudrates and SoCs.

Side step this issue by skipping fix up of the baudrate, so Linux just
uses what was preconfigured. This fixed global.bootm.earlycon=1 for
the ROCK-3A with 1.5 MBaud.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index c09c8e7d44c2..768550eb7df9 100644
--- a/common/console.c
+++ b/common/console.c
@@ -227,8 +227,8 @@ static void console_add_earlycon_param(struct console_device *cdev, unsigned bau
 	if (!cdev->linux_earlycon_name)
 		return;
 
-	str = basprintf("earlycon=%s,0x%lx,%dn8", cdev->linux_earlycon_name,
-			(ulong)cdev->phys_base, baudrate);
+	str = basprintf("earlycon=%s,0x%lx", cdev->linux_earlycon_name,
+			(ulong)cdev->phys_base);
 
 	dev_add_param_fixed(&cdev->class_dev, "linux.bootargs.earlycon", str);
 
-- 
2.39.2




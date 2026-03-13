Delivery-date: Fri, 13 Mar 2026 14:34:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ev-000DQO-2Q
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:33 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ee-0000S8-6F
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=19EaP978BK7Dz2JaP6wObE2HmGFWz/fD0E3Lp79MyBA=; b=wnp0/u9IwCs3L1FA0zDfHmHTdo
	/Q8ZANreaX3nfn1MbfVSGeY5xqtluVRx4T2LlXqXbOi62vNkfJECmlMX/oDBE1pDHBYjXnVDkcwsf
	wsmKng8NLCztA5zK7Ki1JJIxtnHKbIo6XGSo/3q6Hj/q/5StMqbAQVHoXdPCfUo73siLjg/KOXzkX
	sTewo5Ifbkwi4Xo7u1HJe4NRwQQRAnc143HoE0kPLgEbhcf1GU37W1+2rdTp8QRWVRUsAJriAgfpc
	ovKLLu5jfI2fX4wMC2lDcZtSq9F35F8Jz2B94QhSWXgUn1/KhUVVhOelhzaGLikhySYCrOqCMcVyY
	MxQnHUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dT-00000000G5E-16U5;
	Fri, 13 Mar 2026 13:33:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dA-00000000FZw-33hi
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=19EaP978BK7Dz2JaP6wObE2HmGFWz/fD0E3Lp79MyBA=; b=DpDHec0D8eV8Fk4r9lBWo3t0Cb
	l5rLW5LCXj+NohIkV7gd3DyNZ94AUO/tOZrUAg9F3ZJ5hyT9O8xbSE3g+VrWvX8ALtU2xN329ZxIU
	ll0S2sQ5CEDi0dX1jCDLZrbwvs8JrVv7Zi6QgZeeu4wE02XlFtZszPIIMxHIomR2iLwNYn9SnmgeU
	2xpBYf5dAiWuSBP6VfZiJVRbWvs4K1sLF8oPUFhWpdi1lka3jEKybr1obHiByTUHW60pvBJ4iWthd
	NY5gpnFhlQmJNVHLrtabpjshWmYIyFrQGCMkkn88umgA2XOWkxeriUTGb5WwUmQuRphvFAX++q+/m
	LA4D7SvQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9w5-2jyM
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006pg-V3; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005TM-2F;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-0NTN;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:25 +0100
Message-ID: <20260313132631.2257573-42-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_732423_6F6367F2 
X-CRM114-Status: UNSURE (   9.12  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 41/58] i2c: rk3x: fix NULL pointer dereference on repeated NACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the polling loop, if a NAKRCV interrupt triggers rk3x_i2c_stop()
which sets i2c->msg to NULL, a subsequent iteration with NAKRCV
still asserted will dereference the NULL msg pointer when checking
I2C_M_IGNORE_NAK. Add a NULL check so that a NULL msg falls through
to rk3x_i2c_stop(), which handles this case safely.

(cherry picked from commit 23c9bf0bc154145064d55798196d82f441241262)

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-10-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-rk3x.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 1fdce1c8de84..d35f3e1c15c8 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -462,7 +462,8 @@ static void rk3x_i2c_irq(struct rk3x_i2c *i2c)
 
 		ipd &= ~REG_INT_NAKRCV;
 
-		if (!(i2c->msg->flags & I2C_M_IGNORE_NAK))
+		if (!i2c->msg ||
+		    !(i2c->msg->flags & I2C_M_IGNORE_NAK))
 			rk3x_i2c_stop(i2c, -ENXIO);
 	}
 
-- 
2.47.3




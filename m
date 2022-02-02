Delivery-date: Wed, 02 Feb 2022 23:36:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFOEj-0049KI-PQ
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 23:36:25 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFOEi-0005Db-8V
	for lore@pengutronix.de; Wed, 02 Feb 2022 23:36:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEhxerwJskVgDUC+eR5UYM/hPRnJplAwk+iCWD3VzMU=; b=GjM6ugD4fvBTwh
	0m8SmjYa5Xwhbbtz2+kSd2VtQOzhUFDCjZK7jeOaheq5xDm4dS5hJnxvApWyQw6Ob8DwRLp2IEfev
	BTt135/oRKD9ARPpS45Cb2ec6+JBLIA1efbaps8v/OGK8eBScdCLfBYzFcxodyWpGR8b/Dgp+aWjv
	IQKjPEVsM2KfTwHLl0Kwnm8lPINhnfYcPjZqN9mqtwoWKbE7UWw5tkp6JoizvRkeDTumb/ZPFaVw0
	G80yKzXb6t6PhhgGdK+DHExOhWu+x3Znp0v0YlBFhPGY7aPUTr4kjT5zEdhTxvtCpEfW8XOjvCXEY
	uAUc4bVGLG12pjZlmQ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFOBB-00H0qu-Ts; Wed, 02 Feb 2022 22:32:45 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFOB6-00H0pc-SA
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 22:32:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nFO8y-0004Vt-NO; Wed, 02 Feb 2022 23:30:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nFO8y-001QyH-4l; Wed, 02 Feb 2022 23:30:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Feb 2022 23:30:20 +0100
Message-Id: <20220202223023.341817-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220202223023.341817-1-a.fatoum@pengutronix.de>
References: <20220202223023.341817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_143240_943117_BC9AF28D 
X-CRM114-Status: GOOD (  11.86  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/4] gpiolib: implement gpiod_set_value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux gpiod_set_value is silent if the GPIO descriptor is NULL, but
barebox warns about it. Also having gpio_set_value not respect active
low/high, while Linux gpiod_set_value respects it is error-prone.

Add a new gpiod_set_value function that covers this. gpio == -ENOENT is
taken as the dummy value for optional GPIOs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpiod.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/gpiod.h b/include/gpiod.h
index c8b2cd47a3cb..adac50b4c36d 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -14,7 +14,7 @@ enum gpiod_flags {
 	GPIOD_IN	= GPIOF_IN,
 	/*
 	 * To change this later to a different logic level (i.e. taking
-	 * active low into account), use gpio_direction_active()
+	 * active low into account), use gpiod_set_value()
 	 */
 	GPIOD_OUT_LOW	= GPIOF_OUT_INIT_INACTIVE,
 	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
@@ -23,4 +23,10 @@ enum gpiod_flags {
 /* returned gpio descriptor can be passed to any normal gpio_* function */
 int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags);
 
+static inline void gpiod_set_value(unsigned gpio, bool value)
+{
+	if (gpio != -ENOENT)
+		gpio_direction_active(gpio, value);
+}
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 09 Jan 2023 17:00:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZO-006oEF-75
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 17:00:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZM-0002vR-8Y
	for lore@pengutronix.de; Mon, 09 Jan 2023 17:00:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HxanfW65tlu+9JmHRNkeY1KarQ13GaHbS9pC6K1m490=; b=QaKgW0SCJrBpGM+F4XNGTR+O1l
	e2O1L0Iwb0sQFBAlivydvEd+VOaCPoDqnvXMsuYQ2dWtpbamI45KyGdkvvyNcrYgWNNpc3L9PF9WB
	uxbXWFiVvT3sAxrzzaJPL/Jj7h+cgpfWt5lq+Ix+IGknLIsFO76Gc6+FlGmVCfvmkVJ8DJ/mex6LE
	pUQO3vJRn5LZEVfn6Qf5QppW+3qANc2qOb5zWWbu7g70g8eyryeGx335afCBD6Wk/yXmBTWgo15iN
	8l2TPfd8yDIH9556/ARMO6zQF2GlKAHDz7vK+5JQHQeLDrzagZIhSW893OfPXOWbzC100KWU2cHYP
	HCMvutRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXw-002RmE-VZ; Mon, 09 Jan 2023 15:58:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXr-002Riw-Ck
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:58:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXq-0002WU-3V; Mon, 09 Jan 2023 16:58:42 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXp-004sjC-Eo; Mon, 09 Jan 2023 16:58:41 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXo-009Jbv-G5; Mon, 09 Jan 2023 16:58:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:58:36 +0100
Message-Id: <20230109155836.2220277-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
References: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_075843_500553_3A1B0283 
X-CRM114-Status: UNSURE (   9.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] gpiolib: implement gpiod_get_value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gpiod_ family of kernel functions always assume the logical state
for values (i.e. taking active low/high into account). We already have
gpio_set_value, so add gpiod_get_value for symmetry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpiod.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/gpiod.h b/include/gpiod.h
index f76cc98155e0..8abf86db8682 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -63,4 +63,12 @@ static inline void gpiod_set_value(int gpio, bool value)
 		gpio_direction_active(gpio, value);
 }
 
+static inline int gpiod_get_value(int gpio)
+{
+	if (gpio < 0)
+		return gpio;
+
+	return gpio_is_active(gpio);
+}
+
 #endif
-- 
2.30.2




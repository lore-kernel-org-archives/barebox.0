Delivery-date: Fri, 09 Aug 2024 16:24:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXt-007rWQ-0j
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXr-0008IY-Af
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FdEIZRrjRjtNMXlM5FsijxNvGl+3wbbUakTmCRQNBdE=; b=dZ9l/fewisxVnVX+MnCspI7d0n
	rU4XT/V6Q6uPhEYPfufzK1EuU+A1WAJ15borT2zN0rRNeojlWXRSIsDEN1QKE65GiEZI6wklvUDen
	CicPFdCDop8doqg8lC1AZoetlkqub9MGiUBZudhYPzyW89teV0dUwUFcSnrFt+NRaWQaSfyYLlrT5
	3EQ5EjT3J6DZn27RoTiYWBnYB4arkgbHd9IPdBvFOVFFCHDZyZ2BwRFwHok4mWCchq8lDIu4T8fPG
	QblrWqhgd+1f5v3ituKF96sXUbrDxNnLH4THl/6viGVZ8ixPno/b2pjkF7kNh2clYH4fJuqpbYL9V
	si3zCi+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXQ-0000000BWKK-43rj;
	Fri, 09 Aug 2024 14:24:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEW-3TeH
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007oj-AC; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-005geF-Rv; Fri, 09 Aug 2024 16:24:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-2T;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:23:55 +0200
Message-Id: <20240809142405.315244-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072408_897314_770E10E0 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: [PATCH 01/11] gpio: make gpio.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header uses WARN_ON and struct device, but defines neither.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpio.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index a56aba050a03..cc56c91c3ee2 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -7,6 +7,7 @@
 #include <linux/list.h>
 #include <linux/iopoll.h>
 #include <linux/bitops.h>
+#include <linux/bug.h>
 
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
@@ -31,6 +32,8 @@ static inline int gpio_direction_input(unsigned gpio)
 }
 #endif
 
+struct device;
+
 #ifdef CONFIG_GPIOLIB
 void gpio_set_active(unsigned gpio, bool state);
 int gpio_is_active(unsigned gpio);
-- 
2.39.2




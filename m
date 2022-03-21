Delivery-date: Mon, 21 Mar 2022 12:12:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWFy2-001IZ6-4X
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 12:12:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWFy4-0000wN-Hj
	for lore@pengutronix.de; Mon, 21 Mar 2022 12:12:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8E0wRo9nxXbVF1QGXinLjnmLdd7nsc1AkoZVER9fHOQ=; b=Jt0M1lpaR0QiAT
	tgSm3YaZZMz+IAeYemIsPkpXyomEagsyYrYSV5Ze4/dfA5UtVUbV+AeAaImXq1rTXoiUhzvvH/LJn
	tCR7OWd6LTIMHB2H5BJI7PwRHnqOQ7KHLaRTLy2YV75qR2bSQhz6hhM/mEa5OPw5W2ZVhndeKvVXu
	WJxCRoQxkD2UqC2qyVHpOqBFmjFSqZkn++/bc+Zz5j2K3Flbif3dGcPOg1ntFgY4pcspxwcCrk75r
	CHhRJCxii6wpfoDzu0ja3J7R2Lt453t+Ra2WLExR845CrmpJEFBrU1/mzrG294/Fnhl6AL5IBYDSw
	k6r7hzLpwdZ8PpRGWx6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWFwb-007QUD-0O; Mon, 21 Mar 2022 11:11:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWFwV-007QSO-Kz
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 11:11:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nWFwS-0000Zl-Gp; Mon, 21 Mar 2022 12:11:16 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nWFwS-006aF0-1z; Mon, 21 Mar 2022 12:11:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Mar 2022 12:11:15 +0100
Message-Id: <20220321111115.1569232-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_041119_706095_4BE89996 
X-CRM114-Status: UNSURE (   7.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] gpio: include header for BIT() used in <gpio.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

e.g. GPIOF_ACTIVE_HIGH/LOW uses currently depend on another header
defining BIT(). Remedy this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpio.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/gpio.h b/include/gpio.h
index 81beb4730929..6134190138c3 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -5,6 +5,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/iopoll.h>
+#include <linux/bitops.h>
 
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


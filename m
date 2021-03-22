Delivery-date: Mon, 22 Mar 2021 12:33:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIns-0003Nz-VV
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 12:33:00 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIns-0007OG-87
	for lore@pengutronix.de; Mon, 22 Mar 2021 12:33:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+QavPWa53FjYtxzXJA7w1giq0iBA30iMPWjpRSv0L8=; b=fD6OvaPqz6kpNZ
	U+3YBw+Iraj+bT5Yzs39bnJVn+q8gIzTCgnZWrwnSxkHSYfRwWjHr0I9jr8weZ+F+0+5AU1ZGd+v4
	GR6YlOQd5UR7H2EEHCcoIc+ao3+clUpkOEbR4NdHlDewF43pkxK6R+cMaA/T1pvU6+0VEfZ/mD41N
	PZBf37QQLfiwPDqHWw8nSk3Q1nrUvjjbY8Dedg4Mv39Oit2jRnlZb9E3/Tjryb4dRddOYQQ5oR0rC
	uTgSHiJ3H6CYswYuWkF/62uRMORxwl/zLDzoN0mE9kEywReOh4lYksWsnMl8HjN5JeUjNvAGf5Ufl
	ImByYyYLGib+4Xp0ilOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOImr-00BSyl-R6; Mon, 22 Mar 2021 11:31:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOIml-00BSxh-7d
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 11:31:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOImk-0007B5-KX; Mon, 22 Mar 2021 12:31:50 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOImk-00046x-C7; Mon, 22 Mar 2021 12:31:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Mar 2021 12:31:49 +0100
Message-Id: <20210322113149.15665-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_113151_910483_2F695027 
X-CRM114-Status: GOOD (  11.67  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] gpio: pl061: Fix driver registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

77e74ddca1 changes drivers to use coredevice_platform_driver() instead
of open coded initcall/driver registration. This is wrong for the pl061
driver as this is an amba driver. Revert 77e74ddca1 for this file.

Fixes: 77e74ddca1 ("treewide: Use driver macro")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-pl061.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index c17c265440..f34aba9da9 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -147,7 +147,11 @@ static struct amba_driver pl061_gpio_driver = {
 	.probe		= pl061_probe,
 };
 
-coredevice_platform_driver(pl061_gpio_driver);
+static int __init pl061_gpio_init(void)
+{
+	return amba_driver_register(&pl061_gpio_driver);
+}
+coredevice_initcall(pl061_gpio_init);
 
 MODULE_AUTHOR("Baruch Siach <baruch@tkos.co.il>");
 MODULE_DESCRIPTION("PL061 GPIO driver");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


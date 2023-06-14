Delivery-date: Wed, 14 Jun 2023 15:57:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzi-006j5h-DL
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzf-0005k4-P8
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jV4DV5CI5bkS14IKkmOegfZTaN0ysgQ6CnIG4c+VFDI=; b=BWnitXusb4caNTdp8aqNqNJEsD
	J49oD85fKdVJ5ugAMXaRjmjTSBRnAfXTza1ZF+yTf/IdxFb4PXQM02ErCB9Yk8aUuz8fZOtBf3dBm
	BsHG6C+RKkGunH0Bnn5EQngBwKLTbbHBksgzXjYTQe5bz2KvnGr9Z0iSsRCgclP9U7XvUWhMpoKUZ
	DLvAt9/MCTJpoouCOvrP8XdBS4YJq+Fuu6K/2Prqj3Nr2esMipuRtNuPLD0gL8a1d/nqCba49m/Oz
	mfS+d3jBvOwQLYKYzNm+1TAj7JeQ/67JTigxtFfWoZXit5P9W4BwG2NUyiVMYS2zYSp3Bik5PLXTA
	zVYdF0Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qya-00Bp96-0Z;
	Wed, 14 Jun 2023 13:55:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyV-00Bp4u-1C
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyT-0005Cg-Dk; Wed, 14 Jun 2023 15:55:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyS-007MxZ-OX; Wed, 14 Jun 2023 15:55:48 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-008D8E-D5; Wed, 14 Jun 2023 15:55:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 15:54:44 +0200
Message-Id: <20230614135452.1884124-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065551_428158_FC8A0E42 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] include: linux/printk: define new dev_errp_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a number of APIs like regulator, clocks or reset, which return
an error pointer. To format that pointer for dev_err_probe, we need to
pass it through PTR_ERR(). Let's make such code more concise by defining
dev_errp_probe, which calls PTR_ERR() on its second argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/printk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 057b355aa129..978e853bab48 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -3,6 +3,7 @@
 #define __LINUX_PRINTK_H
 
 #include <linux/list.h>
+#include <linux/err.h>
 #include <printk.h>
 #include <stdarg.h>
 
@@ -89,6 +90,8 @@ static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
 }
 #endif
 
+#define dev_errp_probe(dev, errptr, args...) dev_err_probe((dev), PTR_ERR(errptr), args)
+
 #define __pr_printk(level, format, args...) \
 	({	\
 		(level) <= LOGLEVEL ? pr_print((level), (format), ##args) : 0; \
-- 
2.39.2




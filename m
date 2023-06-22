Delivery-date: Thu, 22 Jun 2023 09:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgu-00GhOg-Ib
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgs-0001XG-58
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3HvdBSptHo3KFks+mMuInRDvvfvoYUL8UymFdhytn3Y=; b=jdvomwaI3F5EapYK7eqOb7xSe4
	J3r3079ZPrjDf6LB+Qj6mgeqow02MVzM/R1DqrIJLMHqIquf96qB+BWeFWCVsbFCv0yuB0j0allHq
	VXbCcoapShuLVRE1dKS1AXF/nu9lJyfEjPnkK5uLnlTwgl4W/nOXdDOMknCuXcc4Myl4OT5VUQIkl
	7lXRnUP076KLgd4S7l65NWB9Kv+rDX9hAk6/3aYx6PJKasn1v/pLGmDPjTP7fSBaUOzv8cV4gHVZ7
	y+u/sR4EZBxlzltTdJ4mEdDgCypoFNAOfyriSGwriMo4T7PGz0/ajYFOTNW0oadatSE1X+o7Z1v0o
	wPWHdEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfU-00HDtb-2O;
	Thu, 22 Jun 2023 07:23:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDpv-2d
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000zE-Od; Thu, 22 Jun 2023 09:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Dje-1Z; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRN-0C;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:22 +0200
Message-Id: <20230622072329.1339317-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002345_872247_F02E8AA8 
X-CRM114-Status: UNSURE (   9.10  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/9] include: linux/printk: define new dev_errp_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a number of APIs like regulator, clocks or reset, which return
an error pointer. To format that pointer for dev_err_probe, we need to
pass it through PTR_ERR(). Let's make such code more concise by defining
dev_errp_probe, which calls PTR_ERR() on its second argument.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
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




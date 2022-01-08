Delivery-date: Sat, 08 Jan 2022 18:16:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJz-00Eccj-Ns
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:16:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJx-0004P8-WF
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:16:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7UNn3P9C90yOum56DcS815Oznj+TMh1fZlqBj78a1lw=; b=MEJVdlMxgbU1/q
	BaweD2RupNe+9kmIC2qcC0ux0EvZTWJRFXis3VZj0Z+2NGpWt4uPinqVRzhFC2h85El7ERwRwHpB5
	TJmivbDfEAF8NcBQjHZmzEK9zCImWz2+XU6nJudSY6pxlUxmDgjS1fT6HFZ+DTDSmRN56we+CtQdA
	MgX4SloiXmGvLRRxkgRHj3gu0ncXuiIwFLIiWtgTaXVl8DkFxEZyoLMPcrbbauKuZQiatfeHcQJyJ
	WEmD7pqBq2dEaVptlcPQlSd0nxt8Z0q/HR1ouQZMRIMO4mU+ee0aAXIlCkvQfj9BpgxsiEaLYazzD
	rSMi4cYCmOb/uKviWTFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FIj-006jKG-VB; Sat, 08 Jan 2022 17:14:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FIe-006jIS-Jm
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FId-0003t1-EC; Sat, 08 Jan 2022 18:14:39 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIc-002Sb0-Ud; Sat, 08 Jan 2022 18:14:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:14:37 +0100
Message-Id: <20220108171437.586532-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091440_684886_942B2419 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include <printk.h>: include <linux/types.h> for size_t
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

size_t is used without previous definition relying on header include
order. Fix that up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/printk.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/printk.h b/include/printk.h
index baf2cca20213..046b456a9d2b 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -2,6 +2,8 @@
 #ifndef __PRINTK_H
 #define __PRINTK_H
 
+#include <linux/types.h>
+
 #define KERN_EMERG      ""   /* system is unusable                   */
 #define KERN_ALERT      ""   /* action must be taken immediately     */
 #define KERN_CRIT       ""   /* critical conditions                  */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


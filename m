Delivery-date: Fri, 12 Mar 2021 17:26:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcR-000567-Iy
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 17:26:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcQ-00061G-IB
	for lore@pengutronix.de; Fri, 12 Mar 2021 17:26:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zdNnecIzTMDCISp06Ec9lCLdL8etEBLXVM/rmDnI4e0=; b=qfDX0RnNZxoJuX81pMUEuicjtI
	3BKqu5tH0cbbZDmNuGTr7discoltunIh7wbgQ/ETtPklSIY3amRuD5HcYuila0PjEPcZcOSbqlLDq
	XCITfWUIwCKD33qnP5LrvaoSuoeSC4yOh43oWBeYvFHyyRB3BCggni1954YsFhjPvCAXpaKRBQOSG
	so6sA8BZVAi/1zeglWLWPbdHaM2u+03rmWM4NxcTDnhDPzCU3aQJpZCIJVTDHeFt12iQHxK+uDNdC
	48f8PVpYGy6H9+xs9IePhJcLBoN3TtyUec+TgiVrDQHqqOmYSGCiL/HCplcmYY38aVF145RslzzTF
	fIK8mJrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKkbJ-00Bwn1-PU; Fri, 12 Mar 2021 16:25:21 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKkaw-00Bwat-Ib
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 16:25:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 530D01A3B47
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:24:58 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6IGLST;
 Fri, 12 Mar 2021 16:24:58 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 2A8AA1A0123;
 Fri, 12 Mar 2021 16:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 030E727E0514;
 Fri, 12 Mar 2021 17:24:58 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id sdaGk-xAI2-M; Fri, 12 Mar 2021 17:24:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 59EE827E0512;
 Fri, 12 Mar 2021 17:24:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 59EE827E0512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615566297;
 bh=y1nZiwa2A0Utv54eSe13oo0ssqXkQQoWBtG2kgsjk0U=;
 h=From:To:Date:Message-Id;
 b=BSedxyI0ZP4F+62zuQEbK4LJebzjhB0nD2SMEYGrAvMW958uZBmY3wSagTzvHMe2c
 K+MxMlfPCVTUjwSPYB3I4RgabgxBttgaDkKXUvXzzi9bUFYIZLWrps6dOZ6C2yDWVY
 7MmbWOq7DJxA8BWc99iK3f2oz8nJeuycvl3yGAgc=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HRi1L8O2jKyF; Fri, 12 Mar 2021 17:24:57 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 3E1B427E02DD;
 Fri, 12 Mar 2021 17:24:57 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 17:24:30 +0100
Message-Id: <20210312162432.9189-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210312162432.9189-1-jmaselbas@kalray.eu>
References: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_162459_913444_FF0ACD5D 
X-CRM114-Status: UNSURE (   6.91  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] usb: dwc2: Rework dwc2_wait_for_mode to use
 wait_on_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/gadget.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index b8ec37be7..3fc7099d7 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <dma.h>
 #include <usb/gadget.h>
-#include <linux/iopoll.h>
 #include "dwc2.h"
 
 #define to_dwc2 gadget_to_dwc2
@@ -2668,13 +2667,13 @@ static int dwc2_eps_alloc(struct dwc2 *dwc2)
  */
 static void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
 {
-	int val, ret;
+	unsigned int timeout = 110 * USECOND;
+	int ret;
 
 	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
 		 host_mode ? "host" : "device");
 
-	ret = readx_poll_timeout(dwc2_is_host_mode, dwc2, val,
-			val == host_mode, 110 * USEC_PER_MSEC);
+	ret = wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) == host_mode);
 	if (ret)
 		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
 				 __func__, host_mode ? "host" : "device");
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


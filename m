Delivery-date: Wed, 21 Apr 2021 09:29:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ7II-0001iP-De
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 09:29:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZ7IH-0003P3-GJ
	for lore@pengutronix.de; Wed, 21 Apr 2021 09:29:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J+ZJYEJsCWefy5MKH8vgQTBLT3oMgrO61js41cC9r3g=; b=So67S13qYSnShl5HLErTaZatYO
	tNjSivuQ7aLkU5ymaTCbGe5GvbfEsQWOQUSe6Zn2fnH6+lddqsDGJaG+RX3ivHSW9ZlpFh/D6TTpi
	lGfQR6+v6R4jbwcQTYEtFvDnOxCoGS6fbBQkAuvUvqEk0smq4zTKKLxVxshtwf6Ql6IWY+g6xPAmS
	ifn+58UhV+TXgMQN+mftofmRELpkrnEbhjEWrYU5M0qMNjH3t6jk0mFOqgxxZ3TxBCHOEL5XexNUD
	oqbPbIuoCj2AJQUxxjBIkNByiToypNGHxyqx/iHfedmyLNP5GneqxUZNfj8Gq2qBcu4dmlle9Av6D
	uKmxMDiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ7Gp-00Dtxj-Tt; Wed, 21 Apr 2021 07:27:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ7GT-00DtwI-4z
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 07:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Yd58OHWan2o2BgSkj/5M02gtpsACLXekqG9dH1V+D4o=; b=SabN2qyY+0yqsCMBvM87Rmi6e0
 P1EgNL7A0Ek5crt1oT5zmSr6N2ay2swJhG0BfsVeXyHOiM1JWjDK4Swtk+1pMTM53fQLVksO03un2
 +5M+dXWNp1k9mAhx08V6NNO3Y8wmWVkNM5MhrJ94wtu7GFRcQHiKUojAW7XYESpmcOyyu0mGahN4/
 D0toI+4uH2vrtT+hJ6sB4CAtVcZ4ys2FX2HpdB+k8PXLr9GBsAr428NuEkdZ0nEW9emg8GQoL46hB
 jbRlNeV7aIDtooOvy5+yZ6eUE6lhZuGc64qdPzlGoFtyljQmjAJzFCt9pbbQbAQfoowN+Xh7bwPf3
 stw9iX9g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ7GQ-00Cft6-CF
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 07:27:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lZ7GM-0003Ky-8Z; Wed, 21 Apr 2021 09:27:06 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lZ7GL-00009L-Jp; Wed, 21 Apr 2021 09:27:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jmaselbas@kalray.eu,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Apr 2021 09:27:04 +0200
Message-Id: <20210421072704.520-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_002710_440290_4B10BDE0 
X-CRM114-Status: GOOD (  12.54  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] usb: dwc2: increase timeout for waiting on host mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 26459ab7803a ("usb: dwc2: Rework wait for host mode during
core reset") effectively reduced the timeout on switch to host mode
from 200ms to 110 us, which is insufficient for the IP on the Raspberry
Pi 3b, leading to:

  dwc2 3f980000.usb@7e980000.of: dwc2_wait_for_mode: Couldn't set host mode

and an unusable USB (and Ethernet) after.

Bump up the timeout to 200ms and help future debugging by logging how
much time it actually took. For the Raspberry 3b I got a value of 49ms.

Note that this is also called from dwc2_force_mode, so worst case is
that a stuck IP delays barebox startup by 200ms.
An error message would alert to this fact, so it can be corrected.

Fixes: 26459ab7803a ("usb: dwc2: Rework wait for host mode during core reset")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc2/core.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 5d04a07b0393..7813344ffa65 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -688,19 +688,23 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
  */
 void dwc2_wait_for_mode(struct dwc2 *dwc2, bool host_mode)
 {
-	unsigned int timeout = 110 * USECOND;
-	int ret;
+	unsigned int timeout = 200 * MSECOND;
+	uint64_t start;
 
 	dev_vdbg(dwc2->dev, "Waiting for %s mode\n",
 		 host_mode ? "host" : "device");
 
-	ret = wait_on_timeout(timeout, dwc2_is_host_mode(dwc2) == host_mode);
-	if (ret)
-		dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
-				 __func__, host_mode ? "host" : "device");
+	start = get_time_ns();
+	while (dwc2_is_host_mode(dwc2) != host_mode) {
+		if (is_timeout(start, timeout)) {
+			dev_err(dwc2->dev, "%s: Couldn't set %s mode\n",
+				__func__, host_mode ? "host" : "device");
+			return;
+		}
+	}
 
-	dev_vdbg(dwc2->dev, "%s mode set\n",
-		 host_mode ? "Host" : "Device");
+	dev_vdbg(dwc2->dev, "%s mode set after %lluns\n",
+		 host_mode ? "Host" : "Device", get_time_ns() - start);
 }
 
 /**
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


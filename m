Delivery-date: Fri, 12 Mar 2021 17:27:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkd0-00056T-Ky
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 17:27:06 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcz-0006D8-Rt
	for lore@pengutronix.de; Fri, 12 Mar 2021 17:27:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ezhUEvEdAmNF3owrCCErCbvf0mllB3x+IQf6JUz5qnQ=; b=SVhgIRIcZjGhlv9t51EUWUJULh
	lIwnOnc7fcEQi2FuhhbH84GQjqjTer/i82MXPxczpn3hUefgbelXj/xd4dNTbH4+/xZSt3IR7+o/8
	0PqGE4HZTELKVPu7GxYtA+HYeSqxm/XIdfVeAAJiZI+Cz7pY7qUnqiG6iSR0AhHblidxm8z1InNAM
	koB+fUGxB+5WqyeTLYuh550/zZONgJuEWe98vc255PkBOu+tV+uRUuGhPkfuLAJ4+EudeQQjjgxqi
	ckxlvmezg17vaM1HFhlBKbFVZfqUhjsyYVG76w1VpjhTxxNk3Z02mRg+YC0WIf2lU/82SneCzd/DZ
	+rdCcfAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKkc0-00BwyT-UU; Fri, 12 Mar 2021 16:26:05 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKkb0-00BweJ-L2
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 16:25:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6C7561A3B79
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:25:02 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6IGOYT;
 Fri, 12 Mar 2021 16:25:02 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 43CC61A0123;
 Fri, 12 Mar 2021 16:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1CC4827E052A;
 Fri, 12 Mar 2021 17:25:02 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id uyM0vKZ1dILF; Fri, 12 Mar 2021 17:25:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B623627E0512;
 Fri, 12 Mar 2021 17:25:01 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B623627E0512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615566301;
 bh=dXNOixNc9nM6HvnQrA7Fl5wStmklLLc99lpTChT3lak=;
 h=From:To:Date:Message-Id;
 b=n+Qaf55s1XTTfdrakmIBqjJtpQw8RD/jv89mFdy1HFX3KUNQ2BsPfIjPKL1uQ5e27
 bkis5ZDIkGCCqroHlNCHHMibbnUNxIud/4um7Os8uEjBloIwgzHoLqPv0wf5jNiYIt
 go+UOHBTxt/7JlIsRlVBKTG6XyHzktYoW1UaeOCo=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id opxfoK5iQ4kD; Fri, 12 Mar 2021 17:25:01 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A3BBA27E02DD;
 Fri, 12 Mar 2021 17:25:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 17:24:32 +0100
Message-Id: <20210312162432.9189-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210312162432.9189-1-jmaselbas@kalray.eu>
References: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_162503_600333_F2329B9C 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH 5/5] usb: dwc2: Rework wait for host mode during core reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace the unconditional delay of 100ms during core_reset by
a call to dwc2_wait_for_mode() when iddig filter is enabled,
as done in Linux.

The uses of mdelay comes from the porting of u-boot's driver.

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 24efe5a41..5d04a07b0 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -764,16 +764,16 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 	 * Determine whether we will go back into host mode after a
 	 * reset and account for this delay after the reset.
 	 */
-	{
-	u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
-	u32 gusbcfg = dwc2_readl(dwc2, GUSBCFG);
-
-	if (!(gotgctl & GOTGCTL_CONID_B) ||
-	    (gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
-		dwc2_dbg(dwc2, "HOST MODE\n");
-		wait_for_host_mode = true;
-	}
+	if (dwc2_iddig_filter_enabled(dwc2)) {
+		u32 gotgctl = dwc2_readl(dwc2, GOTGCTL);
+		u32 gusbcfg = dwc2_readl(dwc2, GUSBCFG);
+
+		if (!(gotgctl & GOTGCTL_CONID_B) ||
+		    (gusbcfg & GUSBCFG_FORCEHOSTMODE)) {
+			wait_for_host_mode = true;
+		}
 	}
+
 	/* Core Soft Reset */
 	greset = dwc2_readl(dwc2, GRSTCTL);
 	greset |= GRSTCTL_CSFTRST;
@@ -786,12 +786,8 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 		return ret;
 	}
 
-	/*
-	 * Wait for core to come out of reset.
-	 * NOTE: This long sleep is _very_ important, otherwise the core will
-	 *       not stay in host mode after a connector ID change!
-	 */
-	mdelay(100);
+	if (wait_for_host_mode)
+		dwc2_wait_for_mode(dwc2, wait_for_host_mode);
 
 	return 0;
 }
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


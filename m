Delivery-date: Fri, 12 Mar 2021 17:26:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcF-00055j-Tu
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 17:26:19 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcF-0005wq-4j
	for lore@pengutronix.de; Fri, 12 Mar 2021 17:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KPJaUwA2AWayPerKTu++U1Ukj2A29WmcYmSAuubnnZA=; b=BEHCullPKvVsElt0DIVkXPcH2B
	mt6C2olTjYWij9vwuteWTEOTV9rya4mz1mnEEDP7D93/S2BkYs8J3Mp9VtoAAqECLMdWDv78Gd2J2
	nTDaccqbQKW2ZLTOeB37A8dYTmFA9J4udbNAnu4EgfjPvEuOJLD12UR5PUZv3eeWA/0k2gRub1nIr
	NUImVmXEW9AgplAujH3R+XyrID1BlfzCRxPVvDR1dMIPIdwrmdnHWmZ5Jfn1s4ulq5ihMzhe80Jf8
	oYO3tXe0kdsHJabl2YTtwjTTZpvapvu/9bTD3k7VNY6ic4FNqweyzhc2f4Of7Xy0rsUe0J2UhI/z8
	k1Fbp9Pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKkb4-00Bwd3-1M; Fri, 12 Mar 2021 16:25:06 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKkar-00Bwa6-NP
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 16:24:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 7C71F1A3B47
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:24:53 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6IGI2T;
 Fri, 12 Mar 2021 16:24:53 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 561651A0123;
 Fri, 12 Mar 2021 16:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2FB0027E0514;
 Fri, 12 Mar 2021 17:24:53 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id oRXqWaR2A3_1; Fri, 12 Mar 2021 17:24:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D103C27E0512;
 Fri, 12 Mar 2021 17:24:52 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D103C27E0512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615566292;
 bh=kg+v3j6nzI8edsc2ix8Bjb2x7rkO+8G+BuLlueAPZ7g=;
 h=From:To:Date:Message-Id;
 b=fYUUfoZuUWifHTpVd5NC5+kKLZVCgwWHcR9iDQRscO5yTTRJdpbZDR90ab7ARL6p+
 KIqEn/CdGcJJXGWhUlCSUhIwWbmKwsQxZQ0qQVPo9upJjuCeC4+U0OfnD0+3iGKSoV
 8ahwUqPInaSpXBKqggNVITZk0c2qIKTH7EWCkMDA=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EUijotViTzJd; Fri, 12 Mar 2021 17:24:52 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B529327E02DD;
 Fri, 12 Mar 2021 17:24:52 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 17:24:29 +0100
Message-Id: <20210312162432.9189-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210312162432.9189-1-jmaselbas@kalray.eu>
References: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_162453_895871_1C67E51F 
X-CRM114-Status: UNSURE (   6.65  )
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
Subject: [PATCH 2/5] usb: dwc2: Replace pr_info with dev_warn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no reason to not use dev_warn (as done in Linux), this might
have been unwanted changes made when porting the driver to barebox.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index cc5729ed9..8ec77d68a 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -696,8 +696,8 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 	/* Wait for AHB master IDLE state. */
 	ret = dwc2_wait_bit_set(dwc2, GRSTCTL, GRSTCTL_AHBIDLE, 10000);
 	if (ret) {
-		pr_info("%s: Timeout! Waiting for AHB master IDLE state\n",
-			__func__);
+		dwc2_warn(dwc2, "%s: Timeout! Waiting for AHB master IDLE state\n",
+				__func__);
 		return ret;
 	}
 
@@ -728,7 +728,8 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 
 	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
 	if (ret) {
-		pr_info("%s: Timeout! Waiting for Core Soft Reset\n", __func__);
+		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
+				__func__);
 		return ret;
 	}
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


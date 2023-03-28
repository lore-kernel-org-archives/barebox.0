Delivery-date: Tue, 28 Mar 2023 12:00:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph681-00HU6p-HT
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 12:00:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph681-00043t-GQ
	for lore@pengutronix.de; Tue, 28 Mar 2023 12:00:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dj3VRvnf88uwkpNTPVAvWvr2Y8RF9PHU7Jm3qMjyxMA=; b=heT7hgVmPSNSXUL4jKBoZwcisO
	P0K2l2dUm726XieyR6U8lVxHx6pcryETrZhrhXDR9aJ5ts1JGHY0ueXF4OIVp9RUs+mvcGR8tVsZx
	QPI2rxu8slXhYD9dV7p06c5YUWTircZoPmBjOdfG+Y+9ixHx+1vArjdtOSDzjgpujhEPBNuEPNjpc
	SaqKtlIKG+fmHhRaPDcbjugItZpU2eARrsWtEWdTcn3C7Ds9/pr5A5m3q0Z3g1zK6WAA5bRtXu98z
	OKvZU2zFDWsLhk1LcYPuaURpghoOKou9E0TKEjkrXSqWRr5vQTvKhc/vt+WdjybgWtReBs5px5P/c
	cvZLndzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph66c-00Dp4i-3B;
	Tue, 28 Mar 2023 09:59:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph66Z-00Dp2I-0U
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 09:59:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph66V-0003hI-Ay; Tue, 28 Mar 2023 11:58:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph66V-00072o-3a; Tue, 28 Mar 2023 11:58:59 +0200
Date: Tue, 28 Mar 2023 11:58:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230328095859.GK19113@pengutronix.de>
References: <20230321095056.1333669-1-s.hauer@pengutronix.de>
 <4a513c3345155039e8dec995e1294f4dcc3e30a5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a513c3345155039e8dec995e1294f4dcc3e30a5.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_025903_186977_19810151 
X-CRM114-Status: GOOD (  31.08  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: sdhci: Add and use common sdhci_wait_for_done()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 27, 2023 at 03:01:31PM +0200, Rouven Czerwinski wrote:
> Hi,
> 
> On Tue, 2023-03-21 at 10:50 +0100, Sascha Hauer wrote:
> > We have different driver specific variants of functions polling for the
> > device ready in the tree. Add a common sdhci_wait_for_done() and use
> > it where appropriate. This fixes a few deficiencies with the driver
> > specific variants.
> > 
> > rk_sdhci_wait_for_done() didn't check the SDHCI_INT_TIMEOUT bit and
> > returned -EPERM instead when it ought to return -ETIMEDOUT. The core
> > tries to detect a SD card first and expects a -ETIMEDOUT for the setup
> > command when really a eMMC is connected. Only with a -ETIMEDOUT the core
> > tries to detect a eMMC next.
> > 
> > at91_sdhci_wait_for_done() returned the status instead of the expected
> > 0 value for success.
> 
> I had to revert this commit to run barebox_update on the CM3 RK3566.
> Otherwise writes to the boot partition would hang indefinitely.

Same here. The following fixes this.

At some point during MMC initialization we probe for a SDIO card. This
is expected to fail for non SDIO cards and we have to call sdhci_reset()
in the error path then. It's a bit weird that the effect is that
everything apparently works but writing to boot partitions does not.

Sascha

---------------------------8<---------------------------

>From db92d5c12080c0ad108bd1d8bb0481584a36ae4b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Mar 2023 11:43:35 +0200
Subject: [PATCH] fixup! mci: sdhci: Add and use common sdhci_wait_for_done()

---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index e055a8ea71..a98600cc4c 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -263,10 +263,8 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
-	if (ret == -EPERM)
+	if (ret)
 		goto error;
-	else if (ret)
-		return ret;
 
 	sdhci_read_response(&host->sdhci, cmd);
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



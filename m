Delivery-date: Tue, 05 Jul 2022 16:01:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8j7j-006ZSE-DU
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 16:01:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8j7k-0007Ju-Vx
	for lore@pengutronix.de; Tue, 05 Jul 2022 16:01:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NCAN1JgGGcemMDF+UrJ6u8CrDzQneAAlQIGDIjxl3cM=; b=3wvjKcmvSb/28O2+ZSL7nArP43
	mRb1OLz/S6w8vI7Z4013XJ0XLoSirMNfPlAJQVmpOgbkMXqkU86XPsJJ8vnLPSFt/6wwrGDB7Piix
	HsgJe/Wt2y8MabuwYM2LKpEcx/c59AxJ8Yp6c7vjTsjBJT8+7g4P1v7Llxb4dlKjo7ArVnkycFNf5
	E7hIuK1SNINNNEDmlL+TH4QoiK0Mmtrw+2tak/L4CqKfrH0w5V0rRuhhRfLE1WzmnJ5TfVpJ7Q1IT
	JJhbJR0Ckyii7uUGCXQmnUl+53ke7XCgkVq5gI1l6J4GIIm+tEmpSUbD/7C5ra0HYDVzkvL52Cf0q
	IPQkQMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8j6D-000emP-Ov; Tue, 05 Jul 2022 14:00:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8j68-000ekj-Fa
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 14:00:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8j65-0006iL-Ss; Tue, 05 Jul 2022 16:00:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8j65-0007Pc-7f; Tue, 05 Jul 2022 16:00:13 +0200
Date: Tue, 5 Jul 2022 16:00:13 +0200
To: =?iso-8859-15?Q?An=B8e_Le=A8nik?= <anze.lesnik@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220705140013.GI5208@pengutronix.de>
References: <20220705085534.34251-1-anze.lesnik@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220705085534.34251-1-anze.lesnik@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_070016_554372_A520FB42 
X-CRM114-Status: GOOD (  24.11  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: net: fec_imx: Fix system halt after FEC reinit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 05, 2022 at 10:55:34AM +0200, An¸e Le¨nik wrote:
> Fix problem with system hang when trying to re-init ethernet interface
> on i.MX devices. The problem is that RX and TX buffer descriptor address
> registers are only being set in fec_probe(). When fec_halt() is called
> when bringing down the interface, this resets the FEC and values are
> lost. As per documentation, these registers should be reconfigured
> before re-enabling the FEC. Additionally, move fec_init() call from
> probe to open, since the FEC needs to re-initialized after every reset.
> 
> Signed-off-by: An¸e Le¨nik <anze.lesnik@norik.com>
> Link: https://lore.barebox.org/barebox/c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com
> ---
>  drivers/net/fec_imx.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

This patch fixes the hang problem and is otherwise correct, so:

Applied, thanks

It is not the whole story though. The driver will work with a 100M link,
but not with other link speeds. This is because fec_update_linkspeed()
is not called again when fec_open() is called for the second time.

A possible hotfix is to call fec_update_linkspeed() manually from the
driver. Note it has to be called after FEC_ECNTRL is initialized with a
fixed value in fec_open().

Other drivers will have similar problems and this should be fixed at
framework level, so I hesitate to include the hotfix in barebox. Linux
has phy_start() and phy_stop() to be called by the drivers on
open/close. We should probably do the same.

Sascha

-----------------------8<----------------------------

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 673555a48a..f2ee211992 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -385,6 +385,9 @@ static int fec_open(struct eth_device *edev)
 		ecr |= 0x100;
 
 	writel(ecr, fec->regs + FEC_ECNTRL);
+
+	fec_update_linkspeed(edev);
+
 	/*
 	 * Enable SmartDMA receive task
 	 */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Sat, 03 Jul 2021 22:50:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzmbC-0003jV-2n
	for lore@lore.pengutronix.de; Sat, 03 Jul 2021 22:50:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzmbB-0006z4-2T
	for lore@pengutronix.de; Sat, 03 Jul 2021 22:50:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QFiog2y+YrGMYTMPSFqz/XgQRKRfFiQznN8n1sC9Tlk=; b=Skge/BvPAvdY1ZryRWeeJdMVeq
	TLQQUCHftlfhvHTDHe6rUaMvSoh1T3Fbsn+nKjBLsR1OoQgdnrp8YjEh6EHmq0DrXtirjeXdJ2x7G
	Ihv48H2KhYipCDDa2RJLYsgGoaiW3n3khYth+VP5KKbKdMOyQg3SGP7aGnXQieBk1jIG45kR0EVmv
	3YEmRQgcnyBJpNYAfSXZTiwxAypKLziKR8PfEUn5i8j85J18CelizmKW2QE9vHVxpt7SiADFqJEUY
	6MHpjhHNZSiPk6kG/FV/ek97CW+5fPjcBK1T0pgMerA0LLlGQo9qQMmAHqR2v+Fen00EJbekds7mA
	XKH8NKKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzmZo-005Kfh-Kc; Sat, 03 Jul 2021 20:49:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lzmZj-005KfG-1q
 for barebox@lists.infradead.org; Sat, 03 Jul 2021 20:49:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzmZh-0006r4-DC; Sat, 03 Jul 2021 22:49:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzmZg-0007d9-RY; Sat, 03 Jul 2021 22:49:16 +0200
Date: Sat, 3 Jul 2021 22:49:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
Message-ID: <20210703204916.GA9782@pengutronix.de>
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
 <20210629123104.13818-2-michael.riesch@wolfvision.net>
 <d230f623-b7e8-faee-98c8-1526e2840425@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d230f623-b7e8-faee-98c8-1526e2840425@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:45:05 up 136 days, 8 min, 103 users,  load average: 0.05, 0.10,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210703_134919_142265_9A03ADF8 
X-CRM114-Status: GOOD (  27.31  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 1/2] arm: rockchip-rk3568-evb: add hardware id
 detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 30, 2021 at 12:17:59PM +0200, Ahmad Fatoum wrote:
> Hello Michael,
> 
> Trent already commented on the device tree overlay part.
> This commit here seems applicable regardless,
> so in case you want to resend it for upstream inclusion,
> some comments are inline.
> 
> 
> On 29.06.21 14:31, Michael Riesch wrote:
> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> A short commit message here would be nice, e.g.:
> 
> The rk3568 EVB uses a voltage divider to ... etc.
> 
> > ---
> >  arch/arm/boards/rockchip-rk3568-evb/board.c | 36 +++++++++++++++++++++
> >  1 file changed, 36 insertions(+)
> > 
> > diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> > index 57c24ed3c..ee8e1b979 100644
> > --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> > +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> > @@ -2,6 +2,7 @@
> >  #include <common.h>
> >  #include <init.h>
> >  #include <mach/bbu.h>
> > +#include <aiodev.h>
> >  #include <bootsource.h>
> >  
> >  static int rk3568_evb_probe(struct device_d *dev)
> > @@ -34,3 +35,38 @@ static struct driver_d rk3568_evb_board_driver = {
> >  	.of_compatible = rk3568_evb_of_match,
> >  };
> >  coredevice_platform_driver(rk3568_evb_board_driver);
> > +
> > +static int rk3568_evb_detect_version(void)
> > +{
> 
> Once more 64-bit rockchip boards are added, they would all execute this
> initcall if this board is enabled. For this reason, you need a compatible
> check here.

Instead of a compatible check I'd prefer a

static bool machine_is_rk3568_evb;

Set it to true in the driver above and test for it in additional
initcalls.

Testing for a variable is cheaper in terms of binary size and runtime
penalty than compatible checks.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


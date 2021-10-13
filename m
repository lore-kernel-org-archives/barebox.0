Delivery-date: Wed, 13 Oct 2021 14:41:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madZa-0005PL-90
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 14:41:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madZZ-00020P-BM
	for lore@pengutronix.de; Wed, 13 Oct 2021 14:41:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdKa+mKrtE8xEoCb1vH3fl2XUUnbc9Zw7UigZhbKXWw=; b=XKZao7BMBK0Nao
	4JPw2M4qja+WwT4mXnNawXQiloN4SnGcX1j8R3kP+rcI279o3x4WHxAW+NtrjGJ7MO9E8uIJdlc7j
	+JWfOKVZh769WmdCh0jgZoX5cSPhXLfCv+DI5mGOxraOmQwwZ+gktlzABXwSsaiIy/msZm93Z1hBO
	J6/ia1ySyEi/8E5iUriaGc33VczmNCRkILVGfmN4/ttGiu/c48c6ZzM5m0EPLyqqE1qk/WHJuqj1Q
	9ncTTX7ZyQTlb9zQlm8iarer0K512VukusgYxPUOtp1ZgzyLVrJSInFUxCHNdhXzxbjT3iXCkUFJR
	J50Vdf+46yfLLlJbRRJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1madY8-00GcTJ-N8; Wed, 13 Oct 2021 12:40:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1macIb-00GGYR-C0
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 11:19:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1macIZ-0000cz-WE; Wed, 13 Oct 2021 13:19:52 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1macIZ-0003rR-BU; Wed, 13 Oct 2021 13:19:51 +0200
Date: Wed, 13 Oct 2021 13:19:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211013111951.GD17532@pengutronix.de>
References: <20211013075327.28225-1-o.rempel@pengutronix.de>
 <20211013075327.28225-2-o.rempel@pengutronix.de>
 <CAMHeXxPE0Y71XOLLmMfSiVVA1T51+z_Afi9Kzn3-9qX=hxKOFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxPE0Y71XOLLmMfSiVVA1T51+z_Afi9Kzn3-9qX=hxKOFQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:05:28 up 237 days, 14:29, 144 users,  load average: 0.54, 0.53,
 0.46
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_041953_441838_F313AA67 
X-CRM114-Status: GOOD (  23.71  )
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
Subject: Re: [PATCH v2 2/2] net: phy: micrel: sync init code for ksz80xx
 variants with the kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 03:25:17AM -0700, Trent Piepho wrote:
> On Wed, Oct 13, 2021 at 2:43 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> >
> > Sync part of barebox micrel driver with the kernel v5.15-rc1.
> > This change will affect most of by barebox supported 100Mbit/ksz80xx PHY
> > variants and provide unified devicetree support for LED and clock configuration.
> 
> I already added LED mode OF support to this driver.

Yes, it was partially incorrect. It attempted to write to not existing or not
documented register of PHY_ID_KS8737.

This is the reason why I prefer to share driver code base with kernel,
where possible.

> >  drivers/net/phy/micrel.c | 249 +++++++++++++++++++++++++++++++++++----
> >  1 file changed, 228 insertions(+), 21 deletions(-)
> 
> 227 added lines is a lot to do basically nothing not already done.

I'm not sure what is your point

> >  #define KSZ8051_RMII_50MHZ_CLK                 BIT(7)
> > +#define KSZPHY_RMII_REF_CLK_SEL                        BIT(7)
> 
> These are the same bit in the same register!

Thank you! I'll fix it.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


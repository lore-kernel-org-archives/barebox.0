Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTg0-00016E-4o
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:44:33 +0000
Date: Mon, 11 Jun 2018 22:44:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611204420.ximo5tp7jv5g4444@pengutronix.de>
References: <20180611064103.10531-1-s.hauer@pengutronix.de>
 <alpine.DEB.2.20.1806111811470.16589@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1806111811470.16589@blala.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: oftree: kill oftree -f
To: Alexander Kurz <akurz@blala.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 11, 2018 at 06:35:48PM +0000, Alexander Kurz wrote:
> Hi Sascha,
> On Mon, 11 Jun 2018, Sascha Hauer wrote:
> 
> > Being able to free the live device tree seemed like a good idea in the
> > early days of device tree support when the first boards were brought up.
> > It turned out to be illusory that noone stores pointers to the live tree
> > which become invalid when oftree -f is executed. Enough people stumbled
> > upon crashed boards with this option, so remove it finally.
> 
> oftree -f is still in use in boot scripts, e.g. for the kindle-mx50,
> and at least one other board.
> The usecase for the kindle-mx50 is
> * DT based barebox
> * ATAGs dependent antiquated, non upgradeable kernel
> 
> start_linux() (arch/arm/lib32/armlinux.c) wont do setup_tags() if there
> still exists an oftree.
> If there is an alternative way to make boot issue 
> ATAGs, removing the -f option would be fine.
> 
> May I mention an old (rejected) proposal about this issue
> http://lists.infradead.org/pipermail/barebox/2016-December/028633.html
> 
> Also note: it's still in Documentation/user/devicetree.rst

Thanks for noting. I was a bit enthusiastic that I finally found the
energy to kill this option and forgot why I haven't done it earlier ;)
I just sent an updated series which should solve the issue of being able
to do a ATAG boot.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

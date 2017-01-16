Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT3me-0004en-KX
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 09:41:02 +0000
Date: Mon, 16 Jan 2017 10:40:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170116094037.t73xh5z3p2j6uvmr@pengutronix.de>
References: <9bb241fd-643b-f0fc-e377-a86c79c552e1@allegion.com>
 <20170116083349.hvw6iapklok73ll7@pengutronix.de>
 <3ad4db8b-5686-5b9e-084d-b85b2bacbd57@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ad4db8b-5686-5b9e-084d-b85b2bacbd57@allegion.com>
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
Subject: Re: Secure trusted boot mechanism
To: "Dold, Wolfram" <Wolfram.Dold@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 16, 2017 at 09:22:57AM +0000, Dold, Wolfram wrote:
> Hi Sascha,
> thanks for your fast reply.
> 
> On 16.01.2017 09:33, Sascha Hauer wrote:
> > Hi Wolfram,
> > 
> > On Mon, Jan 16, 2017 at 08:26:44AM +0000, Dold, Wolfram wrote:
> >> Hi all,
> >> I wanted to ask if barebox supports any kind of secure boot mechanism like FIT-Image or
> >> any other type of verified secure trusted boot?
> > 
> > Yes, barebox does support FIT images.
> > It also supports HAB on i.MX machines, although this is only for
> > starting trusted bootloaders from the ROM, not for starting trusted
> > kernels.
> We have an TI AM335x Machine. As I understood the only way in such an environment to boot a trusted kernel is FIT?

Yes.

Of course you have to make sure that the Boot ROM only boots trusted
bootloaders. I don't know what the AM335x offers here to do that.

> What we wnat to do is to prevent the device from being hijacked.
> Do you know another way than FIT to do that?

No, at least not with barebox (or U-Boot).

> Is there any documentation available regarding barebox and FIT?

Not really, no. Support is similar to U-Boot though. You have to use
mkimage on a device tree blob describing a FIT image. Additionally
you have to put a public key into the device tree to give barebox
something to verify against. If you decide to give it a try I can guide
you through and in the end we can generate documention from this for the
next one.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3Isz-0003i8-8L
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 07:28:33 +0000
Date: Mon, 30 Nov 2015 08:28:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151130072810.GT11966@pengutronix.de>
References: <1448810137.537439642@matrix.start.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448810137.537439642@matrix.start.ca>
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
Subject: Re: rpi 2 support ?
To: Dave Thompson <dthompson@nexusisp.com>
Cc: barebox@lists.infradead.org, carlo.caione@gmail.com

Hi Dave,

On Sun, Nov 29, 2015 at 10:15:37AM -0500, Dave Thompson wrote:
> Good day
> This seems to be an active list so my question is
> Is there raspberry pi 2B support,,  BCM2836?
> from looking at the rpi config it seem to only mention 2835,
> I am not sure that it would compile (native) on a 2836
> since memory for example is different
> Not wanting to insult,,
> why I am interested is to make it a boot manager,
> to load the start elf, then bareboot.bin and run a script
> to choose what to boot.. Sort of like smart boot manager,
> maybe not so smoothly,, that is what starts this computer
> And how to add the kernel configs?

Currently there is no rpi2 support for barebox. I don't know what's
missing to add support since I'm not familiar with the rpi and don't
know how much it differs from the rpi2. Added Carlo Caione to Cc who
added the rpi support initially. Maybe he has a few words for us.

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

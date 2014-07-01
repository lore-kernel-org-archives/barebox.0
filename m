Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1rh8-0006eV-Q2
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 06:37:35 +0000
Date: Tue, 1 Jul 2014 08:37:10 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20140701063710.GP22620@pengutronix.de>
References: <alpine.LFD.2.11.1406301135120.14954@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406301135120.14954@localhost>
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
Subject: Re: recommendation for ARM cross-compiler for building for
 beaglebone black?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jun 30, 2014 at 11:36:43AM -0400, Robert P. J. Day wrote:
>   been a while since i've build barebox for my BBB ... anyone here
> doing that and can recommend a cross-compiler that's been working for
> them? i know there are several out there, just curious what anyone
> here is using for that particular board. thanks.

We use OSELAS.Toolchain-2013.12.2 and its arm-v7a-linux-gnueabihf
crosscompiler.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

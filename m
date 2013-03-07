Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDbYG-0002Pp-G7
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 14:12:12 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 7 Mar 2013 15:10:38 +0100
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
 <20130304080232.GM25672@pengutronix.de> <51389BAF.9040802@free-electrons.com>
In-Reply-To: <51389BAF.9040802@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303071510.39114.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] memsize: Make get_ram_size RAM proof
To: barebox@lists.infradead.org
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>

Hi Maxime,

Maxime Ripard wrote:
> > [....]
> >
> > Unfortunately I had to drop this one. It breaks compilation on some
> > architectures which do not have _text and __bss_stop (namely blackfin
> > and another one I forgot about).
> >
> > Anyway, I realized that we now can start the MMU during early startup,
> > so when you call this function from your board code your SDRAM might
> > already be cached. I assume get_ram_size won't work reliably in this
> > case anymore.
> >
> > Since you only use it to detect whether you have 128MiB or 256Mib, could
> > you code a stripped down version of this function especially for your
> > board? Could you even adjust the SDRAM controller registers to the size
> > you really have? I have no idea if the SDRAM controller can cope with
> > that, but it might be worth giving it a try. I have a patch in the
> > queue moving the i.MX28 over to dynamically detecting the SDRAM size
> > via controller readback, so this then would simply detect the correct
> > size.
>
> I agree that this patch you're mentionning would be the best solution.
>
> However, the imx28 SDRAM controller doesn't seem to be able to be
> reconfigured, so once it has been configured once, you're screwed.

You have to do this test in the bootlets instead. As they run from the 
internal SRAM, you can do whatever you want with the SDRAM controller.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLseO-0002yv-Vc
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:32:25 +0000
Date: Wed, 10 Oct 2012 11:32:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010093223.GX27665@pengutronix.de>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
 <20121010074015.GM27665@pengutronix.de>
 <CAAMcf8D0Xn6aWztkD=8dnv3P1qxNgxSV-2Q37kGOaRsOQE7xVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8D0Xn6aWztkD=8dnv3P1qxNgxSV-2Q37kGOaRsOQE7xVA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/14] archosg9: add support for tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 10, 2012 at 10:57:12AM +0200, vj wrote:
> On Wed, Oct 10, 2012 at 9:40 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Tue, Oct 09, 2012 at 12:55:10AM +0200, Vicente wrote:
> >> This patch series is the same as before except for:
> >>  [PATCH 03/13] ARM: ensure irqs are disabled
> >>     imported irq handling from linux
> >>  [PATCH 07/13] uimage: improve transfer speed
> >>     solved a compile warning
> >
> > I applied most of this series, please check the result in the -next
> > branch.
> >
> 
> I'll check this week

Thanks.

> > Of course haven't applied this one
> >
> 
> It wasn't meant to be applied

I know, just thought I'd mention it anyway

> 
> >>   omap4: add usb boot source
> >>   bootm: close open files
> >
> >>   uimage: improve transfer speed
> >
> > Haven't applied this one as you haven't answered my question how
> > much improvement (and on which media) we get.
> 
> Yes, it's answered, see:
> http://lists.infradead.org/pipermail/barebox/2012-October/010208.html

Ups, missed that. That's really a huge speed gain. I wonder why this
happens. Maybe the overhead of request/release sdram region is
significant with MMU disabled. Could you play with the BUFSIZ parameter
to see if there's a good compromise between speeding up your transfer
and still sensible buffer sizes?

BTW I wonder if it would be possible to use the MMU in your setup. We
have a 1:1 flat mapping which should be no problem for the ROM code.
You probably would have to use dma_alloc_coherent to allocate the
buffers which are used for USB transfers.

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

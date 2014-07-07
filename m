Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42it-00068H-KY
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:48:24 +0000
Date: Mon, 7 Jul 2014 08:48:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707064800.GH23235@pengutronix.de>
References: <alpine.LFD.2.11.1407040846490.22603@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407040846490.22603@localhost>
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
Subject: Re: wanting to clarify terminology regarding kernel and device trees
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Jul 04, 2014 at 09:01:04AM -0400, Robert P. J. Day wrote:
> 
>   reading the user manual, section "Booting Linux", about to do a bit
> of cleanup there, and i read this:
> 
> "NOTE: it may happen that barebox is probed from the devicetree, but
> you have want to start a Kernel without passing a devicetree. In this
> case call oftree -f to free the internal devicetree before calling
> bootm"
> 
>   i'm puzzled by the phrase "it may happen that barebox is probed from
> the devicetree". i'm sure this is not meant to imply that the device
> tree itself does any actual "probing" of barebox. i'm guessing that
> what this should really say is something like, "even if barebox has
> been built with an internal device tree, you may want to start the
> kernel without passing that device tree."  thus, "oftree -f", etc,
> etc.

That is what I wanted to say, yes.

This sometimes happens on ARM when you have a new barebox with internal
devicetree but want to start an older kernel which needs the ATAG list
to start.

> 
>   also, at the risk of being overly pedantic, i would distinguish
> between the actions of "probing" and "consulting." i would normally
> use the word "probe" in the sense of probing for possible devices, not
> knowing if they're there or not.

Indeed we do not have this kind of probing here, so the term might be
misleading.

> i would use the word "consult" when
> one is reading or processing something that is known to be there, such
> as the device tree.

How about devices that are instantiated or populated from the
devicetree? I never heard the word "consult" in this context.

> 
>   some probably silly questions about device trees coming up shortly

Hm, most of the time such silly question turn out to be not silly at all

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

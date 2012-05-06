Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR5ss-0003z7-6s
 for barebox@lists.infradead.org; Sun, 06 May 2012 18:08:38 +0000
Date: Sun, 6 May 2012 20:08:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120506180835.GY4141@pengutronix.de>
References: <m31umynwu9.fsf@intrepid.localdomain>
 <20120506171638.GT4141@pengutronix.de>
 <m3bom1yzah.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3bom1yzah.fsf@intrepid.localdomain>
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
Subject: Re: RFC: Force a 2s delay on startup to allow bypassing /dev/env0.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Sun, May 06, 2012 at 07:50:14PM +0200, Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Being able to interrupt before environment processing is a good thing to
> > have, the delay though is not acceptable because it would increase the
> > boot time on some systems by 400%. It should work without the delay
> > aswell.
> 
> Actually the delay is a bit problematic for me as well.
> Unfortunately the boot code has to initialize the serial port, clearing
> the incoming FIFO. This means I can't "queue" the ^C character, barebox
> has to wait for it (maybe not for the whole 2 seconds).
> 
> Or am I mistaken?

On my boards I can still interrupt even with autoboot_timeout=0. Have
you tried it? It may be a bit dependent on the UART driver, I don't
know.

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

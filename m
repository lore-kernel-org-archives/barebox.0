Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P86Mt-0006FY-N6
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 07:12:20 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 19 Oct 2010 09:12:04 +0200
References: <201010161546.52848.jbe@pengutronix.de>
	<20101019065458.GQ28242@pengutronix.de>
In-Reply-To: <20101019065458.GQ28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010190912.05056.jbe@pengutronix.de>
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
Subject: Re: [PATCH] imx: Separate framebuffer platformdata and the videomode
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> On Sat, Oct 16, 2010 at 03:46:52PM +0200, Juergen Beisert wrote:
> > commit 4ac682bf08b61708bc432c48e58a6d1cf9ea3832
> > Author: Juergen Beisert <jbe@pengutronix.de>
> > Date:   Sat Oct 16 15:32:06 2010 +0200
> >
> >     imx: Separate framebuffer platformdata and the videomode
> >
> >     This patch separates the imx platformdata and its videomode in two
> > structures, in order to support more than one defined videomode in the
> > boardfile. This is intended to support runtime videomode selection later
> > on. It also uses now the same videomode setup style than the imx-fpu
> > based systems (like the i.MX35).
>
> Multiple displays can have different bpp/pcr values. Shouldn't we build
> an array of imx_fb_videomode instead?

At this point of time its not necessary, because still only one display is 
supported (BTW: The 'bpp' value seems not display related, it a feature of 
the framebuffer only).
But in future we need a solution for videomode and driver specific data. Maybe 
we could add a private void pointer into the "struct fb_videomode" for this 
purpose?

When I release my "runtime videomode initialization" patch stack, we could 
discuss where to store such special information.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

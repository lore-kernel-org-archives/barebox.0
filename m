Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvtgG-0005sn-Nn
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 17:55:17 +0000
Date: Thu, 17 Jan 2013 18:55:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130117175511.GD1906@pengutronix.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
 <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
 <20130117115625.GE22953@game.jcrosoft.org>
 <50F7F6D6.8080008@impulze.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50F7F6D6.8080008@impulze.org>
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
Subject: Re: [PATCH 4/4] video/imx: always initialize offscreenbuf member
To: Daniel Mierswa <impulze@impulze.org>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2013 at 02:04:22PM +0100, Daniel Mierswa wrote:
> On 01/17/2013 12:56 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 07:32 Thu 17 Jan     , Daniel Mierswa wrote:
> >> +	/*
> >> +	 * sc.offscreenbuf is dangling here, if no offscreen buffer was
> >> +	 * requested, so set it to NULL otherwise the free in fd_close
> >> +	 * will cause undefined behaviour
> >> +	 */
> >> +	if (!offscreen)
> >> +		sc.offscreenbuf = NULL;
> >> +
> > NAck
> > 
> > this is already done by memset
> > 
> > Best Regards,
> > J.
> >>  	if (sc.offscreenbuf) {
> >>  		if (do_bg)
> >>  			memset_pixel(&info, sc.offscreenbuf, bg_color,
> 
> Huh? I don't get it.

sc is initialized to 0 in do_splash:

	memset(&s, 0, sizeof(s));
	memset(&sc, 0, sizeof(sc));
	memset(&info, 0, sizeof(info));

so sc.offscreenbuf = NULL is a no-op.

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

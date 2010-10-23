Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9bY3-0004hM-MJ
	for barebox@lists.infradead.org; Sat, 23 Oct 2010 10:42:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 23 Oct 2010 12:40:35 +0200
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-10-git-send-email-jbe@pengutronix.de>
	<20101022185931.GO22139@pengutronix.de>
In-Reply-To: <20101022185931.GO22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010231240.36009.jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/11] STM378x: Add video driver for this platform
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Oct 22, 2010 at 06:53:23PM +0200, Juergen Beisert wrote:
> > As there is currently no user of this driver (but coming soon) it is for
> > reference only.
> >
> > [...]
> > +		default:
> > +			printf("Unknown pixel packaging: %u\n", GET_BYTE_PACKAGING(readl(hw_dev->map_base + HW_LCDIF_CTRL1)));
>
> Care to spend a line break?

I like long lines... ;-)

Yes, I will add a line break the next time.

> > [...]
> > +static int stmfb_probe(struct device_d *hw_dev)
> > +{
> > +	struct imx_fb_videomode *pdata = hw_dev->platform_data;
> > +	struct device_d *fb_dev;
> > +
> > +	if (pdata == NULL) {
> > +		pr_debug("STMFB: No platformdata. Giving up\n");
>
> We also have dev_dbg and friends for this.

Yes.

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

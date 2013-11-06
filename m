Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdzwt-0001fA-BJ
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 10:02:55 +0000
Date: Wed, 6 Nov 2013 11:02:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131106100232.GL24559@pengutronix.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
 <20131106100401.GA15254@x61s.campuswlan.hs-rm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131106100401.GA15254@x61s.campuswlan.hs-rm.de>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 06, 2013 at 11:04:02AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Wed, Nov 06, 2013 at 10:46:28AM +0100, Sascha Hauer wrote:
> > Hi Andre,
> > @@ -163,6 +163,13 @@ int register_framebuffer(struct fb_info *info)
> >  	if (ret)
> >  		goto err_unregister;
> >  
> > +	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_SIMPLEFB)) {
> > +		ret = fb_register_simplefb(info);
> > +		if (ret)
> > +			dev_err(&info->dev, "failed to register simplefb: %s\n",
> > +					strerror(-ret));
> maybe we should return ret here?

I think it's fine to continue without simplefb here. In the end the
framebuffer works, just without simplefb.

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

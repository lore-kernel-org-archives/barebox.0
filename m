Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHw06-0007Vj-SD
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 10:09:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 15 Nov 2010 11:08:34 +0100
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<1288092708-5187-4-git-send-email-jbe@pengutronix.de>
	<20101101141635.GY6017@pengutronix.de>
In-Reply-To: <20101101141635.GY6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011151108.34285.jbe@pengutronix.de>
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
Subject: Re: [PATCH 03/12] Bring in dynamic videomode selection at runtime
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> [...]
> > +
> > +static int framebuffer_init(void)
> > +{
> > +	return register_driver(&fb_driver);
> > +}
> > +
> > +device_initcall(framebuffer_init);
> > +
> > +struct device_d *register_framebuffer(struct fb_host *host, void *base,
> > unsigned size) +{
>
> Why are base and size passed to register_framebuffer? The framebuffer
> core should not be interested in this at this point.

Intended for convenience only.

> > +	struct device_d *fb_dev;
> > +	int rc;
> > +
> > +	fb_dev = xzalloc(sizeof(struct device_d));
>
> Why is the device not a member of fb_info (or now fb_host) anymore like
> it used to be? There was no malloc necessary for that.

Glue things from different frameworks together is IMHO a bad idea. But as I 
stated in another mail, I will recombine them.

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

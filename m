Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mC7-0006c9-BA
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 09:46:43 +0000
Date: Wed, 19 Apr 2017 11:46:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419094617.oml7rx5bpwvtb6qq@pengutronix.de>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
 <20170323132358.8539-2-andrew.smirnov@gmail.com>
 <20170416082412.GA9286@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170416082412.GA9286@ravnborg.org>
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
Subject: Re: [PATCH 01/14] at91sam9x5ek: Convert to mult-image build
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sun, Apr 16, 2017 at 10:24:12AM +0200, Sam Ravnborg wrote:
> > --- /dev/null
> > +++ b/images/Makefile.at91
> > @@ -0,0 +1,7 @@
> > +#
> > +# barebox image generation Makefile for AT91 images
> > +#
> > +
> > +pblx-$(MACH_AT91SAM9X5EK) += start_at91sam9x5ek
> > +FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
> > +image-$(MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
> 
> I think this should be CONFIG_MACH_AT91SAM9X5EK?

Indeed, yes :(

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

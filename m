Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzK86-000235-0Y
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 07:59:42 +0000
Date: Thu, 19 Nov 2015 08:59:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151119075917.GE11966@pengutronix.de>
References: <1447028327-20277-1-git-send-email-andrew.smirnov@gmail.com>
 <20151109062001.GO8526@pengutronix.de>
 <1447896407.4553.181.camel@rtred1test09.kymeta.local>
 <CAHQ1cqEcG+omZDR+M01ONoPGzGEB3qvFddM5UdcVmojaw_Wh=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEcG+omZDR+M01ONoPGzGEB3qvFddM5UdcVmojaw_Wh=g@mail.gmail.com>
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
Subject: Re: [PATCH v2] i2c: Add support for DesignWare controllers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Trent Piepho <tpiepho@kymetacorp.com>

On Wed, Nov 18, 2015 at 08:09:05PM -0800, Andrey Smirnov wrote:
> On Wed, Nov 18, 2015 at 5:26 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> > On Mon, 2015-11-09 at 07:20 +0100, Sascha Hauer wrote:
> >> On Sun, Nov 08, 2015 at 04:18:46PM -0800, Andrey Smirnov wrote:
> >> > Add a driver for DesignWare I2C controller IP block found on several
> >> > SoCs including Altera SoC products
> >> >
> >> > Tested using Terrasic SoCKit board and GPIO expander board with I2C
> >> > EEPROM on it
> >> >
> >> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >
> >> > +   uint32_t ic_con, ic_comp_type_value;
> >> > +
> >> > +   pdata = pdev->platform_data;
> >> > +
> >> > +   dw = xzalloc(sizeof(*dw), GFP_KERNEL);
> >> > +
> >
> > Doesn't compile, xzalloc() has one argument, no page flags.
> 
> *Sigh* Looks like I didn't do a good job testing v2 patchset, my bad,
> sorry. I'll submit a patch to fix this, unless either of you guys
> already did so.

Just did that, everything fine now.

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

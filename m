Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3zOw-00079E-T9
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 08:38:15 +0000
Date: Wed, 13 Mar 2019 09:35:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190313083521.utsjhbpaibqeqno5@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
 <20190311093123.7956-15-s.hauer@pengutronix.de>
 <CAHQ1cqHvx-9vv=WP2+B0tG=npnLVaENOXw_4dOh_WNe=+R=y9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHvx-9vv=WP2+B0tG=npnLVaENOXw_4dOh_WNe=+R=y9Q@mail.gmail.com>
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
Subject: Re: [PATCH 14/14] ARM: Add initial STM32MP1 support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 11, 2019 at 06:41:59PM -0700, Andrey Smirnov wrote:
> > +static int dk2_postcore_init(void)
> > +{
> > +       if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
> > +               return 0;
> > +
> > +       arm_add_mem_device("ram0", 0xc0000000, SZ_512M);
> > +
> 
> Minor nit: I think you can replace 0xc0000000 with STM32_DDR_BASE.

Indeed. Fixed, thanks

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

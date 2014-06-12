Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuxmk-0001b3-4v
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 05:42:51 +0000
Date: Thu, 12 Jun 2014 07:42:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140612054226.GC15686@pengutronix.de>
References: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
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
Subject: Re: i.MX6Q SABRESD board and barebox
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, Jun 11, 2014 at 02:59:53PM -0700, Andrey Smirnov wrote:
> Hello everyone,
> 
> I am trying to use barebox on a SabreSD board with i.MX6Q processor
> and seem to be running into problems. One odd thing that I noticed was
> that default configuration, freescale-mx6-sabresd_defconfig, specifies
> TEXT_BASE as 0x08f80000, which is the address mapped to external
> interface module(EIM). At the same time load address specified in
> arch/arm/boards/freescale-mx6-sabresd/lash-header-mx6-sabresd.imxcfg
> is 0x10000000, which is the start of DRAM. Is there some MMU setup
> that accounts for that, that I am missing?

0x08f80000 is plain wrong for TEXT_BASE. Probably noone noticed because
the sabresd can be built with imx_v7_defconfig. Please use this config
instead. The individual board configs will be removed soon for boards
which can be built with the imx_v7_defconfig.

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

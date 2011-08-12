Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrqZc-0000uI-6y
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 12:10:50 +0000
Date: Fri, 12 Aug 2011 14:10:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110812121044.GO31404@pengutronix.de>
References: <1313076601-30078-1-git-send-email-plagnioj@jcrosoft.com>
	<1313078124-32663-1-git-send-email-plagnioj@jcrosoft.com>
	<20110812064249.GI31404@pengutronix.de>
	<20110812093635.GB1916@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110812093635.GB1916@game.jcrosoft.org>
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
Subject: Re: [PATCH v2] imx_spi: drop non usefull ifdef
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 12, 2011 at 11:36:35AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:42 Fri 12 Aug     , Sascha Hauer wrote:
> > On Thu, Aug 11, 2011 at 05:55:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > drop CONFIG_DRIVER_SPI_IMX_<version>
> > > 
> > > +	if (cpu_is_mx51() || cpu_is_mx53()) {
> > > +		imx->chipselect = cspi_2_3_chipselect;
> > > +		imx->xchg_single = cspi_2_3_xchg_single;
> > > +		imx->init = cspi_2_3_init;
> > > +	}
> > 
> > Please keep structs to the SoC specific data. We might want to add
> > device tree support in the future, then we'll need pointers to
> > SoC specific data.
> 
> DT in barebox?
> 
> So so it will increase the size a lot not sure it's really usefull

We'll need limited device tree support anyway soon. When Shawn continues
I won't be able to boot my boards soon without OF. Then I at least want
to be able to adjust the command line (which is embedded in the device
tree)

Of course this adds to the binary size, but it's not huge. I'm currently
experimenting with this and so far it looks promising. Anyway, it will
be completely optional for people who don't want it.

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

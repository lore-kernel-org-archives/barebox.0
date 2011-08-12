Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrrTC-0001Sm-Vs
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:08:15 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 5C6CDFF8A30
	for <barebox@lists.infradead.org>;
	Fri, 12 Aug 2011 15:08:27 +0200 (CEST)
Date: Fri, 12 Aug 2011 14:49:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110812124921.GC1916@game.jcrosoft.org>
References: <1313076601-30078-1-git-send-email-plagnioj@jcrosoft.com>
	<1313078124-32663-1-git-send-email-plagnioj@jcrosoft.com>
	<20110812064249.GI31404@pengutronix.de>
	<20110812093635.GB1916@game.jcrosoft.org>
	<20110812121044.GO31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110812121044.GO31404@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:10 Fri 12 Aug     , Sascha Hauer wrote:
> On Fri, Aug 12, 2011 at 11:36:35AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:42 Fri 12 Aug     , Sascha Hauer wrote:
> > > On Thu, Aug 11, 2011 at 05:55:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > drop CONFIG_DRIVER_SPI_IMX_<version>
> > > > 
> > > > +	if (cpu_is_mx51() || cpu_is_mx53()) {
> > > > +		imx->chipselect = cspi_2_3_chipselect;
> > > > +		imx->xchg_single = cspi_2_3_xchg_single;
> > > > +		imx->init = cspi_2_3_init;
> > > > +	}
> > > 
> > > Please keep structs to the SoC specific data. We might want to add
> > > device tree support in the future, then we'll need pointers to
> > > SoC specific data.
> > 
> > DT in barebox?
> > 
> > So so it will increase the size a lot not sure it's really usefull
> 
> We'll need limited device tree support anyway soon. When Shawn continues
> I won't be able to boot my boards soon without OF. Then I at least want
> to be able to adjust the command line (which is embedded in the device
> tree)
> 
> Of course this adds to the binary size, but it's not huge. I'm currently
> experimenting with this and so far it looks promising. Anyway, it will
> be completely optional for people who don't want it.
I take a look too but my key point is do we nned the DT for internal use

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4O7r-0005Pf-0R
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 05:39:35 +0000
Date: Tue, 8 Jul 2014 07:39:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140708053905.GQ23235@pengutronix.de>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
 <09A40395-E357-43DD-85C3-DF74415EE74F@jcrosoft.com>
 <20140707062020.GB23235@pengutronix.de>
 <20140707181744.GB19147@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140707181744.GB19147@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add
 TIMINGS register
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 07, 2014 at 08:17:44PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:20 Mon 07 Jul     , Sascha Hauer wrote:
> > 
> > On Fri, Jul 04, 2014 at 03:47:58PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > 
> > > On Jun 24, 2014, at 7:26 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:
> > > 
> > > > 
> > > > +void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config)
> > > 2 structures no
> > > 
> > > just extend the current one for sam9 we just ignore the additional config
> > 
> > sam9_smc_sama5d3_configure() is called from code which knows it runs on
> 
> I do agree to call sam9_smc_sama5d3_configure from sama5 directly
> 
> or sama5_smc_configure(xx) will be better and shorter
> > sama5d3. IMO it doesn't make much sense to call a generic SoC function
> > from special board code when the generic SoC function has to
> > differentiate between SoCs in the next step.
> 
> except you need both for the sama5 so no need to store on 2 struct
> one struct should be fine
> 
> and few more bytes will not matter much on the current boards.

Ok, so we agree on two functions, but a single struct.

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

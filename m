Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42IC-0004cF-Re
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:20:50 +0000
Date: Mon, 7 Jul 2014 08:20:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707062020.GB23235@pengutronix.de>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
 <09A40395-E357-43DD-85C3-DF74415EE74F@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09A40395-E357-43DD-85C3-DF74415EE74F@jcrosoft.com>
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

On Fri, Jul 04, 2014 at 03:47:58PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> On Jun 24, 2014, at 7:26 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:
> 
> > 
> > +void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config)
> 2 structures no
> 
> just extend the current one for sam9 we just ignore the additional config

sam9_smc_sama5d3_configure() is called from code which knows it runs on
sama5d3. IMO it doesn't make much sense to call a generic SoC function
from special board code when the generic SoC function has to
differentiate between SoCs in the next step.

I'm ok with merging this patch or the original one, but if you are still
interested in the AT91 port please not only complain about a patch
two weeks later but also ACK a patch when you are fine with it.

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

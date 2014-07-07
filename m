Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4DQf-0000Cv-Gu
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 18:14:17 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A05C0FFAF32
 for <barebox@lists.infradead.org>; Mon,  7 Jul 2014 20:13:52 +0200 (CEST)
Date: Mon, 7 Jul 2014 20:17:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140707181744.GB19147@ns203013.ovh.net>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
 <09A40395-E357-43DD-85C3-DF74415EE74F@jcrosoft.com>
 <20140707062020.GB23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140707062020.GB23235@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:20 Mon 07 Jul     , Sascha Hauer wrote:
> 
> On Fri, Jul 04, 2014 at 03:47:58PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 
> > On Jun 24, 2014, at 7:26 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:
> > 
> > > 
> > > +void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config)
> > 2 structures no
> > 
> > just extend the current one for sam9 we just ignore the additional config
> 
> sam9_smc_sama5d3_configure() is called from code which knows it runs on

I do agree to call sam9_smc_sama5d3_configure from sama5 directly

or sama5_smc_configure(xx) will be better and shorter
> sama5d3. IMO it doesn't make much sense to call a generic SoC function
> from special board code when the generic SoC function has to
> differentiate between SoCs in the next step.

except you need both for the sama5 so no need to store on 2 struct
one struct should be fine

and few more bytes will not matter much on the current boards.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

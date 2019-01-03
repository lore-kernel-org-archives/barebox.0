Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gf0hR-00054n-Mg
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 10:58:07 +0000
Date: Thu, 3 Jan 2019 11:58:00 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190103105800.GA27356@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-4-sam@ravnborg.org>
 <20190103081606.yz2s7q4jxzgpz2yt@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190103081606.yz2s7q4jxzgpz2yt@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] at91sam9263ek: add bootstrap support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

> > Fix lowlevel init to get reset vector.
> > 
> > Add new MACH_AT91SAM9263EK_BOOTSTRAP config entry
> > used when building the bootstrap variant.
> > The new config entry is required as we cannot combine MULTI_IMAGE
> > with a bootstrap variant.
> 
> Why can't that be combined?

The bootstrap support did not play well with the PBL support.
And MULTI_IMAGE somehow forced this on me.

I did not dive deep into why bootstrap and MULTI_IMAGE did not work.
I looked at the binraty using objdump, and could see that without

Unless there are something I missed so PBL support should work I will
update the commit message for a v2 of the pathset.

Note: I also had to disable MMU support to get bootstrap working.
With MMU enable it halted when __mmu_cache_on() was called in
mmu-early.c
I will also try to look a little deeper into this, but here I have
only limited hope as my debugging is so far limited to
using pr_info(...).

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

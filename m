Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKPk-0003DI-Nf
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 15:42:06 +0000
Message-ID: <98d2d1809d0ec5ce73883bea0280b171e44b7c69.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 20 Dec 2019 16:42:01 +0100
In-Reply-To: <8b2367fa-b90e-0ce0-d906-cf4212a9ef2a@pengutronix.de>
References: <20191219091310.27421-1-l.stach@pengutronix.de>
 <20191219091310.27421-2-l.stach@pengutronix.de>
 <8b2367fa-b90e-0ce0-d906-cf4212a9ef2a@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/3] ARM64: entry: save/restore potentially clobbered
 registers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org, rcz@pengutronix.de, Lucas Stach <lst@pengutronix.de>

Hi Ahmad,

On Fr, 2019-12-20 at 16:34 +0100, Ahmad Fatoum wrote:
> Hello Lucas,
> 
> On 12/19/19 10:13 AM, Lucas Stach wrote:
> > While the comment is correct that currently arm_early_mmu_cache_invalidate()
> > is only a call to to v8_invalidate_icache_all() , which doesn't clobber x0-x2,
> > this starts to fall apart as soon as we do something more in this function.
> > 
> > Make sure to properly save/restore the parameters passed to the entry function.
> 
> I did the same in <20191002075754.9257-1-a.fatoum@pengutronix.de>, except for
> x4-x6 instead of x19-x21, but reported that his i.MX8 still didn't boot.

I have not thoroughly analyzed the called cache maintenance functions,
but I specifically used x19-x21 as they are defined as callee-saved in
the aarch64 calling convention. 
x4-x6 would be function parameter/return values, so they might get
clobbered, right?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

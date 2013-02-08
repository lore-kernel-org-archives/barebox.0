Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3oAJ-0003p5-TD
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 13:38:57 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C98AEFFC724
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 14:54:02 +0100 (CET)
Date: Fri, 8 Feb 2013 14:37:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130208133744.GT19322@game.jcrosoft.org>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
 <1360317743-25975-3-git-send-email-shc_work@mail.ru>
 <20130208111126.GR19322@game.jcrosoft.org>
 <1360324732.215067481@f218.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360324732.215067481@f218.mail.ru>
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
Subject: Re: [SPAM] Re[2]: [PATCH 03/11] ARM: clps711x: Adds config option
 for CPU PLL multiplier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 15:58 Fri 08 Feb     , Alexander Shiyan wrote:
> Hello.
> 
> ...
> > > +menu "CLPS711X specific settings"
> > > +
> > > +config CLPS711X_CPU_PLL_MULT
> > > +	int "CPU PLL multiplier (20-50)"
> > > +	range 20 50
> > > +	default "40"
> > > +	help
> > > +	  Define CPU PLL multiplier. PLL is calculated by formula:
> > > +	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
> > > +	  Default value is 40, for achieve 73 MHz.
> > > +
> > this board specific put this in c code
> > kconfig is too easy to break
> > 
> > check how we do on at91
> 
> This is not board-specific, this is CPU-specific. PLL multiplier is set up
> at the start and we not touch it anymore since all system frequencies is
> depends on it, including SDRAM refresh.
> How to place this configurable parameter in C code i am not understand.
> For Kconfig, we can add additional compile-time checker into lowlevel unit
> which uses this symbol:
> 
> #if (CLPS711X_CPU_PLL_MULT < 20) || (CLPS711X_CPU_PLL_MULT > 50)
> #error "CPU PLL multiplier out of range"
> #endif
so it's even worse

detect the cpu in c and dorp the Kconfig

Best Regards,
J.
> 
> Thanks!
> 
> ---

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF1Qy-0005eb-Oe
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 12:02:29 +0000
Received: from mail247.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B0FDC104E561
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2013 13:13:38 +0100 (CET)
Date: Mon, 11 Mar 2013 12:58:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130311115807.GG11170@game.jcrosoft.org>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <1362994003-22653-5-git-send-email-shc_work@mail.ru>
 <20130311110051.GD11170@game.jcrosoft.org>
 <1363001219.768144569@f308.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363001219.768144569@f308.mail.ru>
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
Subject: Re: [PATCH 05/13] ARM: clps711x: Using COMMON_CLK
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 15:26 Mon 11 Mar     , Alexander Shiyan wrote:
> Hello.
> 
> > On 13:26 Mon 11 Mar     , Alexander Shiyan wrote:
> > > This patch adds support for COMMON_CLK API for CLPS711X targets.
> > > 
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ...
> > > +	/* Turn timers in free running mode */
> > >  	tmp = readl(SYSCON1);
> > > -	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
> > > -	tmp |= SYSCON1_TC2S;	/* High frequency source */
> > > +	tmp &= ~(SYSCON1_TC1M | SYSCON1_TC2M);
> > >  	writel(tmp, SYSCON1);
> > this is timer configuration not clocks
> 
> We need to read counter value for clocksource, so we need to ensure
> that we have full range of values (0x0 - 0xffff). It mean that timer/counters
> should not be in prescaler mode. All correct.
as on ARM this timer config no clocks
> Thanks.
> 
> ---

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

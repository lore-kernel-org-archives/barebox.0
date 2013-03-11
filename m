Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f308.mail.ru ([128.140.169.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF0si-0007rQ-IF
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 11:27:06 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 11 Mar 2013 15:26:59 +0400
Message-ID: <1363001219.768144569@f308.mail.ru>
In-Reply-To: <20130311110051.GD11170@game.jcrosoft.org>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <1362994003-22653-5-git-send-email-shc_work@mail.ru>
 <20130311110051.GD11170@game.jcrosoft.org>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAwNS8xM10gQVJNOiBjbHBzNzExeDogVXNpbmcgQ09N?=
 =?UTF-8?B?TU9OX0NMSw==?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello.

> On 13:26 Mon 11 Mar     , Alexander Shiyan wrote:
> > This patch adds support for COMMON_CLK API for CLPS711X targets.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
...
> > +	/* Turn timers in free running mode */
> >  	tmp = readl(SYSCON1);
> > -	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
> > -	tmp |= SYSCON1_TC2S;	/* High frequency source */
> > +	tmp &= ~(SYSCON1_TC1M | SYSCON1_TC2M);
> >  	writel(tmp, SYSCON1);
> this is timer configuration not clocks

We need to read counter value for clocksource, so we need to ensure
that we have full range of values (0x0 - 0xffff). It mean that timer/counters
should not be in prescaler mode. All correct.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp27.mail.ru ([94.100.176.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJp4s-0007T8-J7
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 17:19:15 +0000
Date: Thu, 4 Oct 2012 21:19:09 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121004211909.68a02316.shc_work@mail.ru>
In-Reply-To: <20121004170832.GN26553@game.jcrosoft.org>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
 <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121004125229.GK26553@game.jcrosoft.org>
 <20121004191430.e7cc5e94.shc_work@mail.ru>
 <20121004170832.GN26553@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, 4 Oct 2012 19:08:32 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

...
> > > > +void __noreturn reset_cpu(unsigned long addr)
> > > > +{
> > > > +	for (;;)
> > > no cpu reset?
> > This CPU don't have reset register.
> al lot of CPU does not ahve one they have instead a watchdog that can reset
> the SoC I never see a SoC that can not been reset by soft
> or can not been reset by a fault
The CPU also has not a watchdog timer, so now you can see this one.
We can only hack this function by adding asm("mov pc, #0"),
but I'm not sure it's good.

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

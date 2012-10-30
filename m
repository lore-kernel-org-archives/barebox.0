Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TT7QL-0001yE-Cc
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 08:43:51 +0000
Received: from mail608.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D1FC8104ECE3
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 09:50:48 +0100 (CET)
Date: Tue, 30 Oct 2012 09:41:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121030084134.GC29599@game.jcrosoft.org>
References: <20121029134033.GH28904@game.jcrosoft.org>
 <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
 <20121030073244.GE1641@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121030073244.GE1641@pengutronix.de>
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
Subject: Re: [PATCH 1/8] arm: at91: add gpio_is_valid support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:32 Tue 30 Oct     , Sascha Hauer wrote:
> On Mon, Oct 29, 2012 at 02:46:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/mach-at91/include/mach/gpio.h |   11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
> > index 3533bf9..fa695a6 100644
> > --- a/arch/arm/mach-at91/include/mach/gpio.h
> > +++ b/arch/arm/mach-at91/include/mach/gpio.h
> > @@ -22,6 +22,17 @@
> >  
> >  /* these pin numbers double as IRQ numbers, like AT91xxx_ID_* values */
> >  
> > +#define ARCH_NR_GPIOS 256
> > +
> > +static inline int gpio_is_valid(int gpio)
> > +{
> > +	if (gpio < 1)
> > +		return 0;
> > +	if (gpio < ARCH_NR_GPIOS)
> > +		return 1;
> > +	return 0;
> > +}
> 
> Why is this patch in this series? It is unused and wrong. 0 is a valid
> gpio.
not on at91

0 means invalid

It ws the case on the kernel too before I wrok on the pinctrl

I'll clenaup it too whe I swtich to gpiolib buta bit later

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

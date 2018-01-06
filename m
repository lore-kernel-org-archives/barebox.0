Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXujW-0004FQ-Vu
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 20:06:25 +0000
Date: Sat, 6 Jan 2018 21:06:07 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106200607.GA26563@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
 <20180101141939.20606-1-sam@ravnborg.org>
 <20180105092713.hksre2e3llfybxpi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180105092713.hksre2e3llfybxpi@pengutronix.de>
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
Subject: Re: [PATCH 17/25] sama5d{3, 4}{xek, xplained}: move reset vector to
 board code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha

> > index 01d28514d..161b473a7 100644
> > --- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
> > +++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
> > @@ -4,16 +4,14 @@
> >   * Under GPLv2
> >    */
> 
> There is a whitespace too much here and in the other hunks of this
> patch.
And in many other places as well - all fixed.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

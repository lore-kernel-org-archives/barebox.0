Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwCyF-000172-1e
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 21:30:32 +0000
Date: Tue, 19 Feb 2019 22:30:24 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190219213024.GA20686@ravnborg.org>
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-3-a.fatoum@pengutronix.de>
 <20190219204233.GA14204@ravnborg.org>
 <7820ced1-0a40-9bad-85ac-f3711161b96a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7820ced1-0a40-9bad-85ac-f3711161b96a@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: at91: debug_ll: make UART base address
 configurable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

> I think it should remain build-time configurable, to account for cases
> such as when the designated debug port isn't usable for whatever reason
> (e.g. its exposed via a USB-to-UART bridge and you want to use a proper
> UART, because you hate that the disconnection on power cycle..).
> 
> The hard coded values are just some often applicable defaults.
> 
> > So we can continue towards the goal to have multi-image support
> > for at91.
> > The current approch will limit us to a single type of SOC -
> > and we may try to combine more than one SOC in the same multi-iamge
> > sometime in the future.
> > 
> > Maybe each board have to call an debug_ll_init(address) function or similar.
> > If not called we can use the default which is the common address
> > for most at91 SOCs.
> 
> It's a low level debug option, my understanding is that you only enable it
> when one specific entry point fails to load on your board and you need some early
> output to start debugging.
> It shouldn't be kept on by default. Indeed only 6 defconfigs out of 126 ARM defconfigs
> turn it on. (One of them my fresh microchip_ksz9477_evb_bootstrap_mmc_defconfig, oops..)
I follow you here and see your point.
Lets keep is as you did it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Om7L5-00086P-LM
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 15:47:40 +0000
Date: Thu, 19 Aug 2010 17:42:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100819154218.GK454@game.jcrosoft.org>
References: <20100819024811.GG454@game.jcrosoft.org>
	<1282186110-32738-2-git-send-email-plagnioj@jcrosoft.com>
	<20100819065223.GD27749@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100819065223.GD27749@pengutronix.de>
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
Subject: Re: [PATCH 2/6] at91: Introduction of at91sam9261 SOC.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:52 Thu 19 Aug     , Sascha Hauer wrote:
> On Thu, Aug 19, 2010 at 04:48:26AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > AT91sam9261 series is an ARM 926ej-s SOC family clocked at 190/100MHz.
> > 
> > The first board that embeds at91sam9261 chip is the AT91SAM9261-EK.
> > http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/Makefile                                  |    1 +
> >  arch/arm/boards/at91sam9261ek/Makefile             |    1 +
> >  arch/arm/boards/at91sam9261ek/config.h             |  110 +++++++++
> >  arch/arm/boards/at91sam9261ek/env/bin/_update      |   36 +++
> >  arch/arm/boards/at91sam9261ek/env/bin/boot         |   47 ++++
> >  arch/arm/boards/at91sam9261ek/env/bin/hush_hack    |    1 +
> >  arch/arm/boards/at91sam9261ek/env/bin/init         |   38 +++
> >  .../at91sam9261ek/env/bin/update_barebox_xmodem    |   26 ++
> >  .../arm/boards/at91sam9261ek/env/bin/update_kernel |   15 ++
> >  arch/arm/boards/at91sam9261ek/env/bin/update_root  |   16 ++
> >  arch/arm/boards/at91sam9261ek/env/config           |   28 +++
> 
> Care to use the generic environment? What's missing in it for you to use
> it?
miss it in the code
> 
> >  arch/arm/boards/at91sam9261ek/init.c               |  170 ++++++++++++++
> >  arch/arm/configs/at91sam9261ek_defconfig           |  242 ++++++++++++++++++++
> >  arch/arm/mach-at91/Kconfig                         |   23 ++
> >  arch/arm/mach-at91/Makefile                        |    1 +
> >  arch/arm/mach-at91/at91sam9261.c                   |  230 +++++++++++++++++++
> >  arch/arm/mach-at91/at91sam9261_devices.c           |  169 ++++++++++++++
> >  arch/arm/mach-at91/include/mach/at91sam9261.h      |  109 +++++++++
> 
> Can you please make two patches out of this? One for the architecture
> support and another one for the board support.
Personnaly I prefer to add the first board at the same as e do for the kernel
otherwise ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

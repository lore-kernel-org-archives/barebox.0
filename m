Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3BT9-0000Hv-Q3
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 20:19:48 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A58721004097
 for <barebox@lists.infradead.org>; Wed,  6 Feb 2013 21:30:04 +0100 (CET)
Date: Wed, 6 Feb 2013 21:18:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130206201834.GH19322@game.jcrosoft.org>
References: <20130203152218.GF18068@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130203152218.GF18068@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/5] at91sam926x: drop AT91_BASE_SYS for sdram
 controller + gpio cleanup
To: barebox@lists.infradead.org

HI,

	can we ahve this one on master

	this is the a cleanup done with the new arm-entry

Best Regards,
J.
On 16:22 Sun 03 Feb     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> The following changes since commit cd5f8e8aaf808ae19e7c1d2890f90f7de809a2c5:
> 
>   ARM pbl: inline decompress function (2013-02-03 08:27:59 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam926x_lowlevel_arm-entry
> 
> for you to fetch changes up to 453bfddd34c1c0babcd8389d63fd34b1bc764a34:
> 
>   at91sam9: drop AT91_BASE_SYS for sdram controller (2013-02-03 08:49:16 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (5):
>       usb-a926x: only provide the resource if the driver is enable
>       at91: gpio: split accessor so we can use them for early init
>       at91sam926x_lowlevel_init: use pio macro
>       at91sam926x_lowlevel_init: use struct to pass soc config
>       at91sam9: drop AT91_BASE_SYS for sdram controller
> 
>  arch/arm/boards/tny-a926x/init.c                     |    2 +-
>  arch/arm/boards/usb-a926x/init.c                     |   11 ++++++++-
>  arch/arm/mach-at91/at91sam9260_devices.c             |    2 +-
>  arch/arm/mach-at91/at91sam9260_lowlevel_init.c       |   19 +++++++++++----
>  arch/arm/mach-at91/at91sam9261_devices.c             |    2 +-
>  arch/arm/mach-at91/at91sam9261_lowlevel_init.c       |   19 +++++++++++----
>  arch/arm/mach-at91/at91sam9263_devices.c             |    2 +-
>  arch/arm/mach-at91/at91sam9263_lowlevel_init.c       |   19 +++++++++++----
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c       |  152 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------
>  arch/arm/mach-at91/at91sam9_reset.S                  |    4 ++--
>  arch/arm/mach-at91/gpio.c                            |  131 +++++----------------------------------------------------------------------------------------------
>  arch/arm/mach-at91/gpio.h                            |  148 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/at91_lowlevel_init.h |   11 +++++++--
>  arch/arm/mach-at91/include/mach/at91sam9_sdramc.h    |  108 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------
>  14 files changed, 402 insertions(+), 228 deletions(-)
>  create mode 100644 arch/arm/mach-at91/gpio.h
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

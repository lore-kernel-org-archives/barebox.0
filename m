Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0u7x-0001NH-Oj
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 13:24:30 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7B43AFFADC5
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 14:39:14 +0100 (CET)
Date: Thu, 31 Jan 2013 14:23:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130131132313.GF26329@game.jcrosoft.org>
References: <20130126181809.GH26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130126181809.GH26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/5] at91sam9261: add bootstrap and firstage support
To: barebox@lists.infradead.org

Hi,

	can we have patch 1 to 4 applied to next?

Best Regards,
J.
On 19:18 Sat 26 Jan     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	the following patch serie add support to the sam9261 of
> 	 - bootstrap
> 	 - first stage
> 	 - spi
> 
> The following changes since commit 62c096b6e4d5fe22de09659697bf921d5dbca28b:
> 
>   at91sam9261: fix max bare_init it's 156KiB (2013-01-22 20:18:57 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9261ek_bootstrap
> 
> for you to fetch changes up to f6c904910c2731437f09cb69b394e3927b1303ff:
> 
>   at91sam9261ek: add first stage support (2013-01-22 20:54:04 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (5):
>       at91sam9260/9g20/9261/9g10/9263: split soc lowlevel_init from generic
>       at91: introduce AT91_LOAD_BAREBOX_SRAM to specifcy which size load for external boot
>       at91sam9261ek: add spi support
>       at91sam9261ek: add boostrap support
>       at91sam9261ek: add first stage support
> 
>  arch/arm/boards/at91sam9261ek/Makefile               |    4 +++
>  arch/arm/boards/at91sam9261ek/env/config             |   10 +++++--
>  arch/arm/boards/at91sam9261ek/init.c                 |   59 +++++++++++++++++++++++++++++++++++--
>  arch/arm/boards/at91sam9261ek/lowlevel_init.c        |  108 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9261ek_bootstrap_defconfig   |   25 ++++++++++++++++
>  arch/arm/configs/at91sam9261ek_defconfig             |    3 +-
>  arch/arm/configs/at91sam9261ek_first_stage_defconfig |   71 ++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/Kconfig                           |   19 ++++++++++++
>  arch/arm/mach-at91/Makefile                          |    5 +++-
>  arch/arm/mach-at91/at91sam9260_lowlevel_init.c       |   34 +++++++++++++++++++++
>  arch/arm/mach-at91/at91sam9261_lowlevel_init.c       |   34 +++++++++++++++++++++
>  arch/arm/mach-at91/at91sam9263_lowlevel_init.c       |   34 +++++++++++++++++++++
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c       |   36 +++++------------------
>  arch/arm/mach-at91/include/mach/at91_lowlevel_init.h |    1 +
>  arch/arm/mach-at91/include/mach/barebox-arm-head.h   |    2 +-
>  15 files changed, 408 insertions(+), 37 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9261ek/lowlevel_init.c
>  create mode 100644 arch/arm/configs/at91sam9261ek_bootstrap_defconfig
>  create mode 100644 arch/arm/configs/at91sam9261ek_first_stage_defconfig
>  create mode 100644 arch/arm/mach-at91/at91sam9260_lowlevel_init.c
>  create mode 100644 arch/arm/mach-at91/at91sam9261_lowlevel_init.c
>  create mode 100644 arch/arm/mach-at91/at91sam9263_lowlevel_init.c
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

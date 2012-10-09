Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLY2u-0007Ir-0j
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 11:32:20 +0000
Received: from mail428.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B93FB104F174
 for <barebox@lists.infradead.org>; Tue,  9 Oct 2012 13:38:43 +0200 (CEST)
Date: Tue, 9 Oct 2012 13:29:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121009112956.GC26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349734061-32339-5-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 4/5] Add support for BCM2835 clocksource
References: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
 <1349734061-32339-5-git-send-email-carlo.caione@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 00:07 Tue 09 Oct     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  drivers/clocksource/Kconfig   |  4 +++
>  drivers/clocksource/Makefile  |  1 +
>  drivers/clocksource/bcm2835.c | 83 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 88 insertions(+)
>  create mode 100644 drivers/clocksource/bcm2835.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 9d6d293..590d06d 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -2,6 +2,10 @@ config ARM_SMP_TWD
>  	bool
>  	depends on ARM && CPU_V7
>  
> +config CLOCKSOURCE_BCM2835
> +	bool
> +	depends on ARM
no really ARM but more your ARCH_

you need to add the drivers before the arch so the finrst patch taht add the
hw work and can be bisect

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBPpk-0005xS-Ic
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 13:17:09 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5AB0CDC12E6
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 14:28:01 +0100 (CET)
Date: Fri, 1 Mar 2013 14:16:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130301131608.GD23022@game.jcrosoft.org>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-5-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-5-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 4/7] tegra: add blank tegra20 platform init
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 10:22 Fri 01 Mar     , Lucas Stach wrote:
> Devices will get initialised here, as soon as the drivers are added.

NACK do it at the first time
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-tegra/Makefile  |  1 +
>  arch/arm/mach-tegra/tegra20.c | 26 ++++++++++++++++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644 arch/arm/mach-tegra/tegra20.c
> 
> diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
> index 11915e5..7777d0a 100644
> --- a/arch/arm/mach-tegra/Makefile
> +++ b/arch/arm/mach-tegra/Makefile
> @@ -1,2 +1,3 @@
>  obj-y += clock.o
>  obj-y += reset.o
> +obj-y += tegra20.o
> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
> new file mode 100644
> index 0000000..bf99b16
> --- /dev/null
> +++ b/arch/arm/mach-tegra/tegra20.c
> @@ -0,0 +1,26 @@
> +/*
> + * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/tegra20-silicon.h>
> +
> +static int tegra20_init(void)
> +{
> +	return 0;
> +}
> +
> +postcore_initcall(tegra20_init);
> -- 
> 1.8.1.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

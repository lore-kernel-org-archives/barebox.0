Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFI7b-0001C1-Lq
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 06:56:08 +0000
Date: Mon, 17 Feb 2014 07:55:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140217065545.GI17250@pengutronix.de>
References: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
 <1392330771-21671-6-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392330771-21671-6-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 5/7] tegra: add lowlevel DVC
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 13, 2014 at 11:32:49PM +0100, Lucas Stach wrote:
> Allows to talk to external PMIC devices to bring up CPU rail.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 71 +++++++++++++++++++++++++
>  arch/arm/mach-tegra/include/mach/lowlevel.h     |  7 ++-
>  arch/arm/mach-tegra/include/mach/tegra20-car.h  |  8 +++
>  3 files changed, 85 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
> 
> diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
> new file mode 100644
> index 0000000..1675062
> --- /dev/null
> +++ b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
> @@ -0,0 +1,71 @@
> +/*
> + * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
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
> +#include "mach/tegra20-car.h"
> +#include "mach/lowlevel.h"
> +
> +static inline __attribute__((always_inline))
> +void tegra_dvc_init(void)
> +{

We have a __always_inline define. You should probably use it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUtK-0001nA-Iv
 for barebox@lists.infradead.org; Mon, 04 May 2020 06:47:52 +0000
Date: Mon, 4 May 2020 08:47:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504064749.GN5877@pengutronix.de>
References: <20200430044357.762290-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430044357.762290-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] arm: remove empty config.h
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 01:43:57PM +0900, Masahiro Yamada wrote:
> These are not included by anyone because these boards are not added
> to board-y. The top Makefile creates the empty include/config.h if
> a board-specific config.h deos not exist.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  arch/arm/boards/afi-gf/config.h               | 22 -------------------
>  arch/arm/boards/altera-socdk/config.h         |  1 -
>  arch/arm/boards/ebv-socrates/config.h         |  1 -
>  arch/arm/boards/solidrun-cubox/config.h       |  4 ----
>  arch/arm/boards/terasic-de0-nano-soc/config.h |  1 -
>  arch/arm/boards/terasic-sockit/config.h       |  1 -
>  6 files changed, 30 deletions(-)
>  delete mode 100644 arch/arm/boards/afi-gf/config.h
>  delete mode 100644 arch/arm/boards/altera-socdk/config.h
>  delete mode 100644 arch/arm/boards/ebv-socrates/config.h
>  delete mode 100644 arch/arm/boards/solidrun-cubox/config.h
>  delete mode 100644 arch/arm/boards/terasic-de0-nano-soc/config.h
>  delete mode 100644 arch/arm/boards/terasic-sockit/config.h
> 
> diff --git a/arch/arm/boards/afi-gf/config.h b/arch/arm/boards/afi-gf/config.h
> deleted file mode 100644
> index aeeda3695..000000000
> --- a/arch/arm/boards/afi-gf/config.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/*
> - * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, write to the Free Software Foundation, Inc.,
> - * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> - */
> -
> -#ifndef __CONFIG_H
> -#define __CONFIG_H
> -
> -#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/altera-socdk/config.h b/arch/arm/boards/altera-socdk/config.h
> deleted file mode 100644
> index da84fa5f6..000000000
> --- a/arch/arm/boards/altera-socdk/config.h
> +++ /dev/null
> @@ -1 +0,0 @@
> -/* nothing */
> diff --git a/arch/arm/boards/ebv-socrates/config.h b/arch/arm/boards/ebv-socrates/config.h
> deleted file mode 100644
> index da84fa5f6..000000000
> --- a/arch/arm/boards/ebv-socrates/config.h
> +++ /dev/null
> @@ -1 +0,0 @@
> -/* nothing */
> diff --git a/arch/arm/boards/solidrun-cubox/config.h b/arch/arm/boards/solidrun-cubox/config.h
> deleted file mode 100644
> index ca1513681..000000000
> --- a/arch/arm/boards/solidrun-cubox/config.h
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -#ifndef __CONFIG_H
> -#define __CONFIG_H
> -
> -#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/config.h b/arch/arm/boards/terasic-de0-nano-soc/config.h
> deleted file mode 100644
> index da84fa5f6..000000000
> --- a/arch/arm/boards/terasic-de0-nano-soc/config.h
> +++ /dev/null
> @@ -1 +0,0 @@
> -/* nothing */
> diff --git a/arch/arm/boards/terasic-sockit/config.h b/arch/arm/boards/terasic-sockit/config.h
> deleted file mode 100644
> index da84fa5f6..000000000
> --- a/arch/arm/boards/terasic-sockit/config.h
> +++ /dev/null
> @@ -1 +0,0 @@
> -/* nothing */
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyhtD-0003Nv-8M
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 15:09:48 +0000
Message-ID: <1447772964.3144.50.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Nov 2015 16:09:24 +0100
In-Reply-To: <1447762522-13533-1-git-send-email-serge.koshechkin@gmail.com>
References: <1447762522-13533-1-git-send-email-serge.koshechkin@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] Makefile: set -Wmissing-prototypes on all
 architechtures (was only on mips)
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 17.11.2015, 15:15 +0300 schrieb Sergey Koshechkin:
> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> ---
>  Makefile           | 2 +-
>  arch/mips/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 1029dc1..9a54a44 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -183,7 +183,7 @@ CONFIG_SHELL := $(shell if [ -x "$$BASH" ]; then echo $$BASH; \
>  
>  HOSTCC       = gcc
>  HOSTCXX      = g++
> -HOSTCFLAGS   = -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer
> +HOSTCFLAGS   = -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer
>  HOSTCXXFLAGS = -O2
>  
>  # Decide whether to build built-in, modular, or both.
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 75761b5..b003945 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -12,7 +12,7 @@ endif
>  CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
>  
>  cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
> -cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
> +cflags-y += -Wall -Wstrict-prototypes \

Wstrict-prototypes is already set for all architectures, as seen above.
Can you remove it here?

>  	-Wno-uninitialized -Wno-format -Wno-main
>  
>  ifdef CONFIG_32BIT

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

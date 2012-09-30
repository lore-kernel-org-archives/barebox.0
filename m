Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIL2N-0003kh-MD
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:02:35 +0000
Received: by ieje14 with SMTP id e14so11220354iej.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 08:02:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1348973437-31132-10-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-10-git-send-email-vicencb@gmail.com>
Date: Sun, 30 Sep 2012 19:02:28 +0400
Message-ID: <CAA4bVAE6NbY8ay4h+W3uH+ATXoTg9MANVBy8rVBd1a_nQ1HnkA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 9/9] Add support for Archos G9 tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 30 September 2012 06:50, vj <vicencb@gmail.com> wrote:
> ---
>  arch/arm/Makefile                         |   1 +
>  arch/arm/boards/archosg9/Makefile         |   3 +
>  arch/arm/boards/archosg9/board.c          |  72 +++++
>  arch/arm/boards/archosg9/config.h         |   1 +
>  arch/arm/boards/archosg9/env/bin/init     |  18 ++
>  arch/arm/boards/archosg9/env/config       |   2 +
>  arch/arm/boards/archosg9/lowlevel.c       | 133 +++++++++
>  arch/arm/boards/archosg9/mux.c            | 463 ++++++++++++++++++++++++++++++
>  arch/arm/boards/archosg9/mux.h            |   6 +
>  arch/arm/configs/archosg9_defconfig       |  69 +++++
>  arch/arm/configs/archosg9_xload_defconfig |  24 ++
>  arch/arm/mach-omap/Kconfig                |   9 +
>  arch/arm/tools/mach-types                 |   1 +
>  13 files changed, 802 insertions(+)
>  create mode 100644 arch/arm/boards/archosg9/Makefile
>  create mode 100644 arch/arm/boards/archosg9/board.c
>  create mode 100644 arch/arm/boards/archosg9/config.h
>  create mode 100644 arch/arm/boards/archosg9/env/bin/init
>  create mode 100644 arch/arm/boards/archosg9/env/config
>  create mode 100644 arch/arm/boards/archosg9/lowlevel.c
>  create mode 100644 arch/arm/boards/archosg9/mux.c
>  create mode 100644 arch/arm/boards/archosg9/mux.h
>  create mode 100644 arch/arm/configs/archosg9_defconfig
>  create mode 100644 arch/arm/configs/archosg9_xload_defconfig
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 8e660be..8598005 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -100,6 +100,7 @@ board-$(CONFIG_MACH_OMAP343xSDP)            := omap343xdsp
>  board-$(CONFIG_MACH_BEAGLE)                    := beagle
>  board-$(CONFIG_MACH_OMAP3EVM)                  := omap3evm
>  board-$(CONFIG_MACH_PANDA)                     := panda
> +board-$(CONFIG_MACH_ARCHOSG9)                  := archosg9
>  board-$(CONFIG_MACH_PCM049)                    := pcm049
>  board-$(CONFIG_MACH_PCA100)                    := phycard-i.MX27
>  board-$(CONFIG_MACH_PCAAL1)                    := phycard-a-l1
> diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
> new file mode 100644
> index 0000000..53b9d5b
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o
> +obj-y += lowlevel.o mux.o
> +pbl-y += lowlevel.o mux.o
> diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
> new file mode 100644
> index 0000000..5ef9126
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/board.c
> @@ -0,0 +1,72 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */

see the following commit in the 'next' branch:

commit 77322aa896895f4f68501a071086e432e575dcc2
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Jul 31 09:51:20 2012 +0200

    Treewide: remove address of the Free Software Foundation

    The FSF address has changed in the past. Instead of updating it
    each time the address changes, just drop it completely treewide.

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

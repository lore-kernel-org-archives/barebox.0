Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYqvU-0001hz-Pi
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 11:19:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id y11so9152459lfj.4
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2018 03:18:58 -0800 (PST)
Date: Mon, 17 Dec 2018 14:18:52 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181217141852.9c9dd9acf3072d07af8af20b@gmail.com>
In-Reply-To: <20181213063356.19138-1-t.scherer@eckelmann.de>
References: <20181213063356.19138-1-t.scherer@eckelmann.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imd: model and compatible missing in metadata
To: "Thorsten K. Scherer" <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org

On Thu, 13 Dec 2018 07:33:56 +0100
"Thorsten K. Scherer" <t.scherer@eckelmann.de> wrote:

Hi!


> fixes 97e81f2
> =

> Signed-off-by: Thorsten K. Scherer <t.scherer@eckelmann.de>
> ---
>  include/asm-generic/barebox.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/bare=
box.lds.h
> index 74d3ca4a9..decaab79a 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -66,7 +66,7 @@
>  #define BAREBOX_IMD				\
>  	KEEP(*(.barebox_imd_start))		\
>  	KEEP(*(.barebox_imd_1*))		\
> -	*(.barebox_imd_0*)			\
> +	KEEP(*(.barebox_imd_0*))		\
>  	KEEP(*(.barebox_imd_end))
>  =

>  #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
> -- =

> 2.19.1

It looks like this patch has unobvious drawback.
The bareboximd utility sees too many 'model' and 'compatible' strings in a =
single image, e.g.:

  $ git clone -b next git://git.pengutronix.de/git/barebox.git
  $ cd barebox
  barebox$ git log -1 --oneline
  5407887ff (HEAD -> next, origin/next) Merge branch 'for-next/mtd' into ne=
xt
  barebox$ export ARCH=3Darm
  barebox$ export CROSS_COMPILE=3Darm-linux-gnueabi-
  barebox$ make tegra_v7_defconfig
  barebox$ echo "CONFIG_IMD=3Dy" >> .config
  barebox$ echo "CONFIG_IMD_TARGET=3Dy" >> .config
  barebox$ make oldconfig
  barebox$ make
  barebox$ ./scripts/bareboximd images/barebox-tegra20-toshiba-ac100-usbloa=
der.img
  build: #1 Mon Dec 17 13:59:41 MSK 2018
  release: 2018.12.0-00273-g5407887ff
  of_compatible: nvidia,jetson-tk1 nvidia,tegra124
  model: NVIDIA Tegra124 Jetson TK1
  of_compatible: toradex,iris toradex,colibri_t20 nvidia,tegra20
  model: Toradex Colibri T20 on Iris
  of_compatible: compal,paz00 nvidia,tegra20
  model: Toshiba AC100 / Dynabook AZ
  of_compatible: nvidia,beaver nvidia,tegra30
  model: NVIDIA Tegra30 Beaver evaluation board

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

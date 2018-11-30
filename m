Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSc27-00011q-G0
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 06:12:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id y1so4523632wmi.3
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2018 22:12:00 -0800 (PST)
MIME-Version: 1.0
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
 <20181120084100.8737-3-s.hauer@pengutronix.de>
In-Reply-To: <20181120084100.8737-3-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 29 Nov 2018 22:11:47 -0800
Message-ID: <CAHQ1cqG4FSRnz_UkihPP-1mswx=hw=9V92-vS=tnF+oW5WmSVQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: Add max_load_size option to boards that
 will need it
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 20, 2018 at 8:04 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The max_load_size option makes sure that only the portion of the image
> is loaded to SRAM that fits into it.
>
> Note this does not cover the whole available SRAM area for all boards,
> for the bigger SRAM areas only a part is chosen that is enough to fit
> the initial loader in.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg            | 1 +
>  arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg    | 1 +
>  .../flash-header-technexion-wandboard.imxcfg                     | 1 +
>  arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg          | 1 +
>  4 files changed, 4 insertions(+)
>
> diff --git a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
> index 400a870154..9e8dce5877 100644
> --- a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
> +++ b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
> @@ -1,3 +1,4 @@
>  soc imx6
>  loadaddr 0x00907000
> +max_load_size 0x11000
>  dcdofs 0x400
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> index a12c28fceb..14e4a595a0 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> +++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> @@ -1,4 +1,5 @@
>  soc imx8mq
>
>  loadaddr 0x007E1000
> +max_load_size 0x10000
>  dcdofs 0x400
> diff --git a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
> index 33621117d4..68cb08e200 100644
> --- a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
> +++ b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
> @@ -1,3 +1,4 @@
>  loadaddr 0x00907000
>  soc imx6
> +max_load_size 0x11000
>  dcdofs 0x400
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
> index 400a870154..9e8dce5877 100644
> --- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
> +++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
> @@ -1,3 +1,4 @@
>  soc imx6
>  loadaddr 0x00907000
> +max_load_size 0x11000

Sascha:

The change above bricks Barebox on RDU2 because load size of 0x11000
isn't enough. Tracing what hdr->boot_data.size was set to prior to
this series ends up with 0x1d000 as a number, using which appears to
fix the problem on the real board, so we probably should max_load_size
to at least that much. I am hoping you can fix it on your end, but let
me know if you need me to generate a fixup patch.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

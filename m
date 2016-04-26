Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x235.google.com ([2607:f8b0:4001:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av1T3-0006Bd-4C
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 11:47:49 +0000
Received: by mail-ig0-x235.google.com with SMTP id m9so11106844ige.1
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2016 04:47:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
References: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 08:47:28 -0300
Message-ID: <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Tue, Apr 26, 2016 at 3:44 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
> index 8d79471..76847ff 100644
> --- a/arch/arm/dts/imx25-karo-tx25.dts
> +++ b/arch/arm/dts/imx25-karo-tx25.dts
> @@ -123,12 +123,12 @@
>
>         partition@0 {
>                 label = "boot";
> -               reg = <0x0 0x80000>;
> +               reg = <0x0 0xe0000>;
>         };
>
> -       partition@80000 {
> +       partition@e0000 {
>                 label = "environment";
> -               reg = <0x80000 0x80000>;
> +               reg = <0xe0000 0x20000>;

Here the environment partition size is changed from 512kB to 128kB.
Couldn't this cause issues?

Shouldn't this change be done by a separate patch?

Other than that the patch looks good.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aueM7-0005aw-1o
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:07:07 +0000
Received: by mail-io0-x230.google.com with SMTP id 2so179500354ioy.1
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 04:06:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160425061432.GB7860@pengutronix.de>
References: <1461452493-19431-1-git-send-email-festevam@gmail.com>
 <20160425061432.GB7860@pengutronix.de>
Date: Mon, 25 Apr 2016 08:06:45 -0300
Message-ID: <CAOMZO5AME2_nvEQdYh=oELG5JXjhcx=Mqq=-uXuoQDm542YaGQ@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-sabresd: Fix barebox-environment
 location
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

Hi Sascha,

On Mon, Apr 25, 2016 at 3:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
> index d661463..6e28ac9 100644
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
>         partition@1 {

This should be "partition@0xe0000 {" to match the 'reg' property below.

>                 label = "environment";
> -               reg = <0x80000 0x80000>;
> +               reg = <0xe0000 0x20000>;

Same applies to other files.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

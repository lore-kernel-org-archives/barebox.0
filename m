Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSQoi-00033b-RG
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 17:41:29 +0000
Received: by mail-io0-x232.google.com with SMTP id l19-v6so24865622ioj.5
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 10:41:09 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.20.1806110631180.5797@blala.de>
In-Reply-To: <alpine.DEB.2.20.1806110631180.5797@blala.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 10:40:56 -0700
Message-ID: <CAHQ1cqG_ww_s4JriYUfiWejKgBOTn=p4Yk3R5E3Sk_5E6GYjAA@mail.gmail.com>
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
Subject: Re: [RESEND v3 50/52] scripts: imx-image: Share the code to write
 barebox header
To: Alexander Kurz <akurz@blala.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jun 10, 2018 at 11:46 PM Alexander Kurz <akurz@blala.de> wrote:
>
> Hi Andrey,
> there's something wrong with this patch,
> when generating e.g. the kindle3 image (imx35 / kindle3_defconfig)
> with this patch, the generated imximage differs and the device wont
> boot.

My bad, thanks for testing and noticing this! I'll work on fixing this
in v4 of the patchset.

>  "Share the code to ..." should not change the program behaviour.

Yes, agreed.

Thanks,
Andrey Smirnov

>
> Regards, Alexander
>
> --- barebox.imximg_x4_1 2018-06-11 08:27:31.660011787 +0200
> +++ barebox.imximg_x4_2 2018-06-11 08:27:26.676011669 +0200
> @@ -1,6 +1,6 @@
>  000000 ea0003fe eafffffe eafffffe eafffffe
>  000010 eafffffe eafffffe eafffffe eafffffe
> -000020 65726162 00786f62 00000000 00022000
> +000020 65726162 00786f62 00000000 00000000
>  000030 55555555 55555555 55555555 55555555
>  *
>  000050 00000000 00000000 00000000 00000000
> @@ -25,12 +25,8 @@
>  000510 00000000 00022000 00000000 00000000
>  000520 00000000 00000000 00000000 00000000
>  *
> -001000 ea0003fe eafffffe eafffffe eafffffe
> -001010 eafffffe eafffffe eafffffe eafffffe
> -001020 65726162 00786f62 00000000 00022000
> -001030 55555555 55555555 55555555 55555555
> -*
> -001050 00000000 00000000 00000000 00000000
> +001020 00000000 00000000 00000000 00022000
> +001030 00000000 00000000 00000000 00000000
>  *
>  001400 87f00400 000000b1 00000000 87eff814
>  001410 00000000 87eff81c 87eff400 b17219e9
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPVID-0006QW-Bj
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 11:01:18 +0000
From: Christian Hemp <c.hemp@phytec.de>
In-Reply-To: <1394803820-29277-5-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
 <1394803820-29277-5-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2014 12:00:52 +0100
Message-ID: <1395054052.2700.179.camel@lws-hemp>
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
Subject: Re: [PATCH 4/6] ARM: pfla02: Set ODT to recommended setting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

We removed this ODT values, because we had problems. I think before we
use this settings we have to do some tests (climate cabinet...) with
different modules.


Christian

Am Freitag, den 14.03.2014, 14:30 +0100 schrieb Sascha Hauer:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> Change the ODT values to  0x11117 (Recommended from Freescale)
> see App note AN4579 "i.MX 6 Series Thermal Management Guidelines"
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> index 138ae36..fd09054 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> +++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> @@ -75,8 +75,8 @@ wm 32 0x021b001c 0x04008048
>  wm 32 0x021b0800 0xa1380003
>  wm 32 0x021b4800 0xa1380003
>  wm 32 0x021b0020 0x00005800
> -wm 32 0x021b0818 0x00022227
> -wm 32 0x021b4818 0x00022227
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b4818 0x00011117
>  wm 32 0x021b083c 0x433c033f
>  wm 32 0x021b0840 0x033e033d
>  wm 32 0x021b483c 0x43490351



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

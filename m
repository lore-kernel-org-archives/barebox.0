Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TE5zq-0006dK-MM
 for barebox@lists.infradead.org; Tue, 18 Sep 2012 22:10:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 54F72FF9469
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 00:16:08 +0200 (CEST)
Date: Wed, 19 Sep 2012 00:07:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120918220748.GU25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348000210-21686-2-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 2/2] Add Raspberry-Pi defconfig
References: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348000210-21686-2-git-send-email-carlo.caione@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org, Carlo Caione <carlo@carlocaione.org>

On 22:30 Tue 18 Sep     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo@carlocaione.org>
> ---
>  arch/arm/configs/rpi_defconfig |   45 ++++++++++++++++++++++++++++++++++++++++
add this in the board patch
>  1 file changed, 45 insertions(+)
>  create mode 100644 arch/arm/configs/rpi_defconfig
> 
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> new file mode 100644
> index 0000000..2b35ef8
> --- /dev/null
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -0,0 +1,45 @@
> +CONFIG_ARCH_BCM2835=y
> +CONFIG_ARCH_TEXT_BASE=0x00008000
> +CONFIG_MEMORY_LAYOUT_FIXED=y
why fixed?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

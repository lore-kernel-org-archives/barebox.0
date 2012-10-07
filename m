Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKo7x-0004GR-0h
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:30:31 +0000
Date: Sun, 7 Oct 2012 12:30:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007103027.GE1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-11-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349476393-25520-11-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 10/11] mach-types: add ID for Archos G9 tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 06, 2012 at 12:33:12AM +0200, vj wrote:
> 
> Signed-off-by: vj <vicencb@gmail.com>
> ---
>  arch/arm/tools/mach-types | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
> index 325513f..a21da3b 100644
> --- a/arch/arm/tools/mach-types
> +++ b/arch/arm/tools/mach-types
> @@ -4148,3 +4148,4 @@ msm8625_evt		MACH_MSM8625_EVT	MSM8625_EVT		4193
>  mx53_sellwood		MACH_MX53_SELLWOOD	MX53_SELLWOOD		4194
>  somiq_am35		MACH_SOMIQ_AM35		SOMIQ_AM35		4195
>  somiq_am37		MACH_SOMIQ_AM37		SOMIQ_AM37		4196
> +omap4_archosg9		MACH_OMAP4_ARCHOSG9	OMAP4_ARCHOSG9		5032

Please no manual updates to this file, they will be overwritten once the
next update from:

http://www.arm.linux.org.uk/developer/machines/download.php

comes in. I see that the Archos G9 does not have a machine id
registered. You can register one yourself at:

http://www.arm.linux.org.uk/developer/machines/

btw is 5032 the id Archos uses or did you think it up yourself?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3NaB-00015B-MA
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 08:11:23 +0000
Date: Fri, 2 Mar 2012 09:11:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120302081113.GK3852@pengutronix.de>
References: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
 <1330609813-28879-2-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330609813-28879-2-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 2/2] pcaam1: Change the machine id/name to follow the
 phyCARD naming convention
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 01, 2012 at 02:50:13PM +0100, Christian Hemp wrote:
> Change the machine id/name to follow the phyCARD naming convention.
> This patch can be dropped if the phyCARD-A-M1 is updated in the official
> machine registry.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/tools/mach-types |    2 +-

No hand editing in this file please. Your changes will be overwritten
next time we update this file from the database. In case the database
already is updated just provide a patch to update to the latest version
(There is a download link on the web page)

Sascha

>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
> index ff97af4..4c25d56 100644
> --- a/arch/arm/tools/mach-types
> +++ b/arch/arm/tools/mach-types
> @@ -2573,7 +2573,7 @@ nautel_am35xx		MACH_NAUTEL_LPC3240	NAUTEL_LPC3240		2591
>  glacier			MACH_GLACIER		GLACIER			2592
>  phrazer_bulldog		MACH_PHRAZER_BULLDOG	PHRAZER_BULLDOG		2593
>  omap3_bulldog		MACH_OMAP3_BULLDOG	OMAP3_BULLDOG		2594
> -pca101			MACH_PCA101		PCA101			2595
> +pcaam1			MACH_PCAAM1		PCAAM1			2595
>  buzzc			MACH_BUZZC		BUZZC			2596
>  sasie2			MACH_SASIE2		SASIE2			2597
>  smartmeter_dl		MACH_SMARTMETER_DL	SMARTMETER_DL		2599
> -- 
> 1.7.0.4
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

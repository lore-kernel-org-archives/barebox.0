Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BQ7-0001Rw-CX
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 10:24:49 +0000
References: <1567763115-11597-1-git-send-email-iu87m888m@qq.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <e2fc1e83-c427-3602-f20b-c1f330f2d764@rempel-privat.de>
Date: Fri, 6 Sep 2019 12:24:33 +0200
MIME-Version: 1.0
In-Reply-To: <1567763115-11597-1-git-send-email-iu87m888m@qq.com>
Content-Language: en-GB
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
Subject: Re: [PATCH] CONFIG_PBL_BREAK option is available for MIPS
To: iu87m888m@qq.com, barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

Hi,

Am 06.09.19 um 11:45 schrieb iu87m888m@qq.com:
> From: DU HUANPENG <u74147@gmail.com>
>
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  common/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/common/Kconfig b/common/Kconfig
> index 8aad5ba..a86b5e8 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1290,7 +1290,7 @@ config DEBUG_INITCALLS
>
>  config PBL_BREAK
>  	bool "Execute software break on pbl start"
> -	depends on ARM
> +	depends on ARM || MIPS
>  	help
>  	  If this enabled, barebox will be compiled with BKPT instruction
>  	  on early pbl init. This option should be used only with JTAG debugger!
>

It is not enough to just enable it for MIPS. MIPS need appropriate code
to do this.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

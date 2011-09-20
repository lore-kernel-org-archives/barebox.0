Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R65kq-0003N3-C5
	for barebox@lists.infradead.org; Tue, 20 Sep 2011 19:13:17 +0000
Date: Tue, 20 Sep 2011 21:13:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110920191313.GZ31404@pengutronix.de>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 01/12 v2] arm: export arch_number to env
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Applied this series to next.

Sascha

On Mon, Sep 19, 2011 at 02:15:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can dynamise the boot depending on the machine
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/armlinux.c |    7 +++++++
>  1 files changed, 7 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 5bdbb92..25b0f2a 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -186,7 +186,14 @@ void armlinux_set_bootparams(void *params)
>  
>  void armlinux_set_architecture(int architecture)
>  {
> +	char *arch_number = asprintf("%d", architecture);
> +
>  	armlinux_architecture = architecture;
> +
> +	setenv("arch_number", arch_number);
> +	export("arch_number");
> +
> +	kfree(arch_number);
>  }
>  
>  void armlinux_set_revision(unsigned int rev)
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

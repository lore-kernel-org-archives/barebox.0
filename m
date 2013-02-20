Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp175.iad.emailsrvr.com ([207.97.245.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8AMr-0006nL-Ab
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 14:09:53 +0000
Message-ID: <5124D92C.9030308@calxeda.com>
Date: Wed, 20 Feb 2013 08:09:48 -0600
From: Rob Herring <rob.herring@calxeda.com>
MIME-Version: 1.0
References: <1361364936-8698-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1361364936-8698-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] highbank: add wfi for poweroff
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/20/2013 06:55 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> needed by the real hardware
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-highbank/reset.c |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> index 630672a..b9664e4 100644
> --- a/arch/arm/mach-highbank/reset.c
> +++ b/arch/arm/mach-highbank/reset.c
> @@ -23,5 +23,7 @@ void __noreturn poweroff()
>  	shutdown_barebox();
>  
>  	hingbank_set_pwr_shutdown();
> +	asm("	wfi");
> +

This will break on old compilers or v5 builds. I personally don't care,
but some people do.

Rob

>  	while(1);
>  }
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

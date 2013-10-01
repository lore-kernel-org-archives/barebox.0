Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VR001-0000u7-2K
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 13:28:26 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 508F2FF9C96
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2013 15:21:26 +0200 (CEST)
Date: Tue, 1 Oct 2013 15:22:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131001132250.GK32444@ns203013.ovh.net>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
 <1380608528-26999-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380608528-26999-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/6] ARM: vexpress: Fix compiler warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:22 Tue 01 Oct     , Sascha Hauer wrote:
> Fixes:
> 
> arch/arm/boards/vexpress/init.c: In function 'vexpress_core_init':
> arch/arm/boards/vexpress/init.c:139:22: warning: 'hostname' may be used uninitialized in this function [-Wmaybe-uninitialized]
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/vexpress/init.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
> index 48bc11e..5358be3 100644
> --- a/arch/arm/boards/vexpress/init.c
> +++ b/arch/arm/boards/vexpress/init.c
> @@ -133,6 +133,8 @@ static int vexpress_core_init(void)
>  			hostname = "vexpress-a9";
>  		else if (cpu_is_cortex_a15())
>  			hostname = "vexpress-a15";
> +		else
> +			hostname = "vexpress-unknown";

so set hostname by default not on else
>  	}
>  
>  	barebox_set_model("ARM Vexpress");
> -- 
> 1.8.4.rc3
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Agr-0003La-AZ
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 14:30:19 +0000
Received: by mail-wi0-f171.google.com with SMTP id n15so1181128wiw.16
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 07:29:53 -0700 (PDT)
Date: Thu, 26 Jun 2014 16:29:44 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626142941.GA29943@omega>
References: <1403791757-11152-1-git-send-email-christian.hemp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403791757-11152-1-git-send-email-christian.hemp@gmail.com>
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
Subject: Re: [PATCH] imx6:phyFLEX: Fix ENTRY_FUNCTION
To: Christian Hemp <christian.hemp@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Jun 26, 2014 at 04:09:17PM +0200, Christian Hemp wrote:
> For some phyFLEX-i.MX6 modules the call __barebox_arm_head() was not removed.
> With this function the barebox does not start.
> 
> Signed-off-by: Christian Hemp <christian.hemp@gmail.com>
> ---
>  arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |    6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> index 6c6f660..4350adb 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> @@ -93,8 +93,6 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
>  {
>  	void *fdt;
>  
> -	__barebox_arm_head();
> -
>  	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x00920000 - 8);
> @@ -108,8 +106,6 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
>  {
>  	void *fdt;
>  
> -        __barebox_arm_head();
> -
>          arm_cpu_lowlevel_init();
>  
>          arm_setup_stack(0x00920000 - 8);


In this function is also some spaces instead tabs.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wypai-0004Rb-I6
 for barebox@lists.infradead.org; Sun, 22 Jun 2014 21:46:25 +0000
Received: by mail-wi0-f176.google.com with SMTP id n3so3156226wiv.15
 for <barebox@lists.infradead.org>; Sun, 22 Jun 2014 14:46:02 -0700 (PDT)
Message-ID: <53A74E95.40403@gmail.com>
Date: Sun, 22 Jun 2014 23:45:57 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 1/2] kirkwood: add support for booting via oftree probe
To: Alexander Aring <alex.aring@gmail.com>, barebox@lists.infradead.org

On 06/22/2014 10:34 PM, Alexander Aring wrote:
> This patch initialize memory only if we boot a kirkwood arch with
> device-tree probing. Otherwise some devices like timer or uart will
> be probed twice.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
> I don't know if this is right. The guruplug is the other kirkwood platform
> but don't have devictree support.

Alexander,

I'd rather remove non-DT booting for kirkwood completely. I have patches
ready somewhere. Let me sort them out tomorrow.

Sebastian

>  arch/arm/mach-mvebu/kirkwood.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
> index c79d130..dd73ab0 100644
> --- a/arch/arm/mach-mvebu/kirkwood.c
> +++ b/arch/arm/mach-mvebu/kirkwood.c
> @@ -86,6 +86,12 @@ static int kirkwood_init_soc(void)
>  {
>  	unsigned long phys_base, phys_size;
>  
> +	kirkwood_memory_find(&phys_base, &phys_size);
> +	arm_add_mem_device("ram0", phys_base, phys_size);
> +
> +	if (IS_ENABLED(CONFIG_OFDEVICE))
> +		return 0;
> +
>  	barebox_set_model("Marvell Kirkwood");
>  	barebox_set_hostname("kirkwood");
>  
> @@ -94,8 +100,6 @@ static int kirkwood_init_soc(void)
>  	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
>  			   (unsigned int)KIRKWOOD_TIMER_BASE, 0x30,
>  			   IORESOURCE_MEM, NULL);
> -	kirkwood_memory_find(&phys_base, &phys_size);
> -	arm_add_mem_device("ram0", phys_base, phys_size);
>  	kirkwood_add_uart();
>  
>  	return 0;
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

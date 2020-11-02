Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZX0G-0003VP-RB
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 10:23:57 +0000
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
 <20201102093002.15851-4-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4ead948e-ddf7-8a34-469d-13ad16668862@pengutronix.de>
Date: Mon, 2 Nov 2020 11:23:55 +0100
MIME-Version: 1.0
In-Reply-To: <20201102093002.15851-4-r.czerwinski@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 4/4] start: reserve OP-TEE memory for PBL-OPTEE
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org



On 11/2/20 10:30 AM, Rouven Czerwinski wrote:
> Instead of only adding the reserved memory entry in case of an OP-TEE
> start before the kernel, also do this in case we may have started OP-TEE
> during the PBL.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/start.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 5f43f9e546..0abe92036b 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -238,7 +238,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> +	if (OPTEE_SIZE > 0)
>  		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1,
>  				OF_RESERVE_ENTRY_FLAG_UNCACHED);
>  
> 

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

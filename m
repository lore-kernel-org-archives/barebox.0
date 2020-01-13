Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtWv-0007CI-Kh
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 06:48:55 +0000
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
 <20200109072855.14154-2-antonynpavlov@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <e96e0f13-c679-57ae-acbe-a4c4ac21406d@pengutronix.de>
Date: Mon, 13 Jan 2020 07:48:48 +0100
MIME-Version: 1.0
In-Reply-To: <20200109072855.14154-2-antonynpavlov@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 1/5] WIP: MIPS: configure ebase according CONFIG_MMU
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Hi,

On 09.01.20 08:28, Antony Pavlov wrote:
> From: Peter Mamonov <pmamonov@gmail.com>
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>   arch/mips/boot/main_entry.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
> index 2c18bc81c3..41350aad18 100644
> --- a/arch/mips/boot/main_entry.c
> +++ b/arch/mips/boot/main_entry.c
> @@ -34,7 +34,11 @@ static void trap_init(void)
>   
>   	unsigned long ebase;
>   
> +#ifdef CONFIG_MMU
> +	ebase = CKSEG0;
> +#else
>   	ebase = CKSEG1;
> +#endif
>   
>   	/*
>   	 * Copy the generic exception handlers to their final destination.
> @@ -56,6 +60,7 @@ static void trap_init(void)
>   	/* FIXME: handle tlb */
>   	memcpy((void *)(ebase), &except_vec3_generic, 0x80);
>   
> +	write_c0_ebase(ebase);

The spec says:
"The reset state of bits 31..12 of the EBase register initialize the exception base 
register to 0x8000.0000, providing backward compatibility with Release 1 implementations.
....
If the write-gate bit is not implemented, bits 31..30 of the EBase register are fixed with 
the value 0b10,and the addi-tion of the base address and the exception offset is done 
inhibiting a carry between bit 29 and bit 30 of the final excep-tion address. The 
combination of these two restrictions forces the final exception address to be in the 
kseg0 or kseg1 unmapped virtual address segments. For cache error exceptions, bit 29 is 
forced to a 1 in the ultimate exception base address so that this exception always runs in 
the kseg1 unmapped, uncached virtual address segment."


So, in case of MMU the reset value stay unchanged = KSEG0 (cached), but the cpu will jump 
to KSEG1 (uncached) in case of cache related exception any way. In case of CONFIG_MMU=n, 
we force to work with KSEG1 (uncached) for all types of exceptions.

So, if I see it correctly, this fix is needed anyway and not DMA related. Correct?
Can you please add this to commit message, to let no MIPS reviewers understand what is 
here happening.

>   	/* unset BOOT EXCEPTION VECTOR bit */
>   	write_c0_status(read_c0_status() & ~ST0_BEV);
>   }
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

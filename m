Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWimX-0003iX-Et
 for barebox@lists.infradead.org; Fri, 31 May 2019 14:45:23 +0000
Date: Fri, 31 May 2019 16:43:10 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190531144310.GA10956@ravnborg.org>
References: <20190531090224.21707-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531090224.21707-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: panic with a message when relocation type is unknown
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Fri, May 31, 2019 at 11:02:23AM +0200, Ahmad Fatoum wrote:
> Currently such failures result in a
> 
> 	>00000000 00000000
> 
> 	### ERROR ### Please RESET the board ###
> 
> With this patch this now becomes
> 
> 	>00000000 00000000
> 	Unknown relocation type
> 	### ERROR ### Please RESET the board ###
> 
> which improves user experience a little bit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 821cafbf26c2..3668c5977ca9 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -78,7 +78,7 @@ void relocate_to_current_adr(void)
>  			putc_ll(' ');
>  			puthex_ll(rel->r_addend);
>  			putc_ll('\n');
> -			panic("");
> +			panic("Unknown relocation type");
>  		}
>  
>  		dstart += sizeof(*rel);
> @@ -108,7 +108,7 @@ void relocate_to_current_adr(void)
>  			putc_ll(' ');
>  			puthex_ll(rel->r_offset);
>  			putc_ll('\n');
> -			panic("");
> +			panic("Unknown relocation type");

If you added just a little bit more context then grepping the source
for the error message would only result in one hit.

Like:
"Unknown relocation type (addend)"
"Unknown relocation type (offset)"

Or something like that.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqlb-0006zz-85
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 15:51:44 +0000
References: <20200914152744.9218-1-ysionneau@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4a5bc850-9785-0db5-350a-7ae6d5b22cd6@pengutronix.de>
Date: Mon, 14 Sep 2020 17:51:41 +0200
MIME-Version: 1.0
In-Reply-To: <20200914152744.9218-1-ysionneau@kalray.eu>
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
Subject: Re: [PATCH] mci: fix wrong sd/mmc/emmc card size computation for arch
 where char is signed
To: Yann Sionneau <ysionneau@kalray.eu>, barebox@lists.infradead.org

Hello Yann,

On 9/14/20 5:27 PM, Yann Sionneau wrote:
> char type can be either signed or unsigned according to C standard.
> If your arch has signed char, this kind of computation will end up wrong
> because of sign extension:
> 
> https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/mci-core.c#n869
> 
> mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 1] << 8 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 2] << 16 |
> 		mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;

Good catch! I wondered why this wasn't noticed before,
so I looked at the OSELAS.Toolchain`s we have on our build
server. Only x86 and MIPS have signed chars by default.

On x86, we usually do EFI, so barebox mci-core is not involved
and MIPS apparently doesn't have any MCI drivers yet.

(Of course, you can compile do -fsigned-char or compile
 your own toolchain with a different default, but I guess
 not many do that)

Thanks for fixing it.

> Turning the ext_csd field into u8 * fixes the issue.

Your Signed-off-by is required.
Please check https://developercertificate.org/

> ---
>  include/mci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 96547fb39..f6d845440 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -456,7 +456,7 @@ struct mci {
>  	uint64_t capacity;	/**< Card's data capacity in bytes */
>  	int ready_for_use;	/** true if already probed */
>  	int dsr_imp;		/**< DSR implementation state from CSD */
> -	char *ext_csd;
> +	u8 *ext_csd;
>  	int probe;
>  	struct param_d *param_boot;
>  	int bootpart;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

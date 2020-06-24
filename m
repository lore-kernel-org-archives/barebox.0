Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnyYo-0001PU-Lb
 for barebox@lists.infradead.org; Wed, 24 Jun 2020 06:07:03 +0000
References: <20200623193506.13716-1-cleger@kalray.eu>
 <20200623193506.13716-3-cleger@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cbc20459-b0a1-dbd0-2a3d-a8f64eb09d02@pengutronix.de>
Date: Wed, 24 Jun 2020 08:06:58 +0200
MIME-Version: 1.0
In-Reply-To: <20200623193506.13716-3-cleger@kalray.eu>
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
Subject: Re: [PATCH 2/4] common: Kconfig: remove MIPS dependency
To: Clement Leger <cleger@kalray.eu>, Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

Hello Clement,

On 6/23/20 9:35 PM, Clement Leger wrote:
> There is no reason anymore to limit the use of elf on mips since there
> is no elf specific support needed in architectures. Remove this
> dependency and drop COMPILE_TEST config.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  common/Kconfig | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f150092af..a3a290ad3 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -38,8 +38,7 @@ config BLOCK_WRITE
>  	bool
>  
>  config ELF
> -	bool "ELF Support" if COMPILE_TEST

With this line removed, you don't have a prompt symbol anymore to select it while COMPILE_TESTing.
Please reinstate. The depends can be dropped.

> -	depends on MIPS || COMPILE_TEST
> +	bool
>  
>  config FILETYPE
>  	bool
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOE0K-0008DH-7k
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 05:53:17 +0000
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-5-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a4faf882-504e-fc81-efd4-47e9e1ca85ea@pengutronix.de>
Date: Fri, 2 Oct 2020 07:53:12 +0200
MIME-Version: 1.0
In-Reply-To: <20200930084716.4200-5-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v2 4/8] initcall: add of_populate_initcall
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org



On 9/30/20 10:47 AM, Marco Felsch wrote:
> Add dedicated initcall for of_probe() which is required for the following
> device-on-demand/deep-probe mechanism.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - no changes
> 
>  include/asm-generic/barebox.lds.h |  1 +
>  include/init.h                    | 10 +++++++---
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index 6971e2c1d2..a7d32160d1 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -33,6 +33,7 @@
>  	KEEP(*(.initcall.12))			\
>  	KEEP(*(.initcall.13))			\
>  	KEEP(*(.initcall.14))			\
> +	KEEP(*(.initcall.15))			\
>  	__barebox_initcalls_end = .;
>  
>  #define BAREBOX_EXITCALLS			\
> diff --git a/include/init.h b/include/init.h
> index 2d61bc8963..1bd5c94b14 100644
> --- a/include/init.h
> +++ b/include/init.h
> @@ -47,6 +47,9 @@ typedef void (*exitcall_t)(void);
>   * initializes variables that couldn't be statically initialized.
>   *
>   * This only exists for built-in code, not for modules.
> + *
> + * The only purpose for "of_populate" is to call of_probe() other functions are
> + * not allowed.
>   */
>  #define pure_initcall(fn)		__define_initcall("0",fn,0)
>  
> @@ -61,9 +64,10 @@ typedef void (*exitcall_t)(void);
>  #define fs_initcall(fn)			__define_initcall("9",fn,9)
>  #define device_initcall(fn)		__define_initcall("10",fn,10)
>  #define crypto_initcall(fn)		__define_initcall("11",fn,11)
> -#define late_initcall(fn)		__define_initcall("12",fn,12)
> -#define environment_initcall(fn)	__define_initcall("13",fn,13)
> -#define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
> +#define of_populate_initcall(fn)	__define_initcall("12",fn,15)

s/15/12/ ? (Likewise below)

> +#define late_initcall(fn)		__define_initcall("13",fn,12)
> +#define environment_initcall(fn)	__define_initcall("14",fn,13)
> +#define postenvironment_initcall(fn)	__define_initcall("15",fn,14)
>  
>  #define early_exitcall(fn)		__define_exitcall("0",fn,0)
>  #define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
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

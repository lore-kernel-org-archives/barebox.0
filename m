Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivznb-0005GA-QS
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 08:31:13 +0000
References: <20200127074639.17310-1-ceggers@arri.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <153b40a5-3a31-da30-dfbb-9d2eeb82c426@pengutronix.de>
Date: Mon, 27 Jan 2020 09:31:02 +0100
MIME-Version: 1.0
In-Reply-To: <20200127074639.17310-1-ceggers@arri.de>
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
Subject: Re: [PATCH] bootchooser: Change name of kernel parameter
To: Christian Eggers <ceggers@arri.de>, barebox@lists.infradead.org
Cc: ceggers@gmx.de

Hello Christian,

On 1/27/20 8:46 AM, Christian Eggers wrote:
> When passing the target name as "bootchooser.active", Linux will not
> pass the parameter as environment variable to the init process. The only
> way to get the bootchooser result (e.g. in an initramfs), is to parse it
> out of /proc/cmdline (requires mounting of /proc, sed, ...).
> 
> After renaming, the bootchooser result will be passed as environment
> variable which can easily accessed from /init (e.g. for selecting the
> associated root fs).

Existing userspace like RAUC[1] rely on this naming, so the default may
not be changed.

[1]: https://github.com/rauc/rauc/blob/f52978d9736f18794f7e277ca440e2e4e78c9703/src/context.c#L47

Cheers
Ahmad

> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  common/bootchooser.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index c08db03eb..f0e3294dc 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -817,7 +817,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
>  		goto out;
>  	}
>  
> -	system = basprintf("bootchooser.active=%s", target->name);
> +	system = basprintf("bootchooser_active=%s", target->name);
>  	globalvar_add_simple("linux.bootargs.bootchooser", system);
>  	free(system);
>  
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

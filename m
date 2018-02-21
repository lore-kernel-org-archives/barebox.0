Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoRcC-0003eu-Ss
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 10:27:10 +0000
Received: from bohne.hi.pengutronix.de ([2001:67c:670:100:9e5c:8eff:fece:ccef])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <r.hieber@pengutronix.de>) id 1eoRbz-0004Jb-Go
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 11:26:55 +0100
References: <20180221095334.30747-1-l.stach@pengutronix.de>
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <802452ac-f475-66df-7498-2d9ffd4d490a@pengutronix.de>
Date: Wed, 21 Feb 2018 11:26:53 +0100
MIME-Version: 1.0
In-Reply-To: <20180221095334.30747-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] arm: ARM64 doen't provide the armlinux_ functions
To: barebox@lists.infradead.org

I guess the subject should contain a "doesn't"? :-)

On 21.02.2018 10:53, Lucas Stach wrote:
> Those set parameters specific to the older ARM Linux implementation.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>   arch/arm/include/asm/armlinux.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
> index 5c39200a0c33..135f11b860ce 100644
> --- a/arch/arm/include/asm/armlinux.h
> +++ b/arch/arm/include/asm/armlinux.h
> @@ -5,7 +5,7 @@
>   #include <asm/setup.h>
>   #include <asm/secure.h>
>   
> -#if defined CONFIG_ARM_LINUX
> +#if defined CONFIG_ARM_LINUX && defined CONFIG_CPU_32
>   void armlinux_set_bootparams(void *params);
>   void armlinux_set_architecture(int architecture);
>   void armlinux_set_revision(unsigned int);
> 

-- 
Pengutronix e.K.                  | Roland Hieber               |
Industrial Linux Solutions        | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f48.mail.ru ([94.100.178.228])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3tVK-0000N6-7V
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 19:20:59 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 08 Feb 2013 23:20:49 +0400
Message-ID: <1360351249.78170872@f48.mail.ru>
In-Reply-To: <021801ce062f$32986200$97c92600$@com>
References: <021801ce062f$32986200$97c92600$@com>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IGkuTVg1MyAtIGFkZCBXRUlNIHJlZ2lzdGVyIGRlZmluZXM=?=
To: =?UTF-8?B?R2VvcmdlIFBvbnRpcw==?= <GPontis@z9.com>
Cc: barebox@lists.infradead.org

> Subject: i.MX53: Add WEIM register defines ( same as i.MX51 )
> 
> Signed-off-by: George Pontis <gpontis@spamcop.net>
> 
> diff -Naur bb.a/arch/arm/mach-imx/include/mach/imx53-regs.h
> bb.b/arch/arm/mach-imx/include/mach/imx53-regs.h
> --- bb.a/arch/arm/mach-imx/include/mach/imx53-regs.h    2013-02-04
> 06:24:51.000000000 -0800
> +++ bb.b/arch/arm/mach-imx/include/mach/imx53-regs.h    2013-02-06
> 23:14:45.982747680 -0800
> @@ -1,6 +1,17 @@
>  #ifndef __MACH_IMX53_REGS_H
>  #define __MACH_IMX53_REGS_H
> 
> +/* WEIM registers */
> +#define WEIM_CSxGCR1(n)        (((n) * 0x18) + 0x00)
> +#define WEIM_CSxGCR2(n)        (((n) * 0x18) + 0x04)
> +#define WEIM_CSxRCR1(n)        (((n) * 0x18) + 0x08)
> +#define WEIM_CSxRCR2(n)        (((n) * 0x18) + 0x0c)
> +#define WEIM_CSxWCR1(n)        (((n) * 0x18) + 0x10)
> +#define WEIM_CSxWCR2(n)        (((n) * 0x18) + 0x14)
> +#define WEIM_WCR       0x90
> +#define WEIM_WIAR      0x94
> +#define WEIM_EAR       0x98

If register set is really same as i.MX51, then probably we should
move these definitions from imx51-regs.h to imx5.h. Sascha?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

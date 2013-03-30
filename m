Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f97.mail.ru ([217.69.129.120])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULuTI-0007Zn-Ku
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 12:01:21 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 30 Mar 2013 16:01:14 +0400
Message-ID: <1364644874.356017584@f97.mail.ru>
In-Reply-To: <m3ip49gmds.fsf@intrepid.localdomain>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ip49gmds.fsf@intrepid.localdomain>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gSW1wbGVtZW50IEFMVEVSTkFURSBtZW1vcnkgbGF5b3V0?=
 =?UTF-8?B?Lg==?=
To: =?UTF-8?B?S3J6eXN6dG9mIEhhbGFzYQ==?= <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

...
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -161,7 +161,7 @@ choice
>  config MEMORY_LAYOUT_DEFAULT
>  	bool "use default memory layout"
>  	help
> -	  select this option to use bareboxs standard memory layout:
> +	  select this option to use barebox's standard memory layout:
>  
>  	  stack
>  	  -----
> @@ -169,6 +169,17 @@ config MEMORY_LAYOUT_DEFAULT
>  	  -----
>  	  TEXT_BASE
>  
> +config MEMORY_LAYOUT_ALTERNATE
> +	bool "use alternate memory layout"
> +	help
> +	  select this option to use barebox's alternate memory layout:
> +
> +	  TEXT_BASE
> +	  -----
> +	  malloc heap
> +	  -----
> +	  stack
> +

This should be described better.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

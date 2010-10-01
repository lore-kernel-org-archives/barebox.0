Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1XHb-0007J3-Gt
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 04:31:44 +0000
Date: Fri, 1 Oct 2010 06:29:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101001042959.GE25320@game.jcrosoft.org>
References: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 1/2] imx: Internal boot sources, handle all header offsets
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

>  
>  #define __flash_header_start		__section(.flash_header_start)
>  
> -#define __flash_header_0x100		__section(.flash_header_0x100)
> -#define __dcd_entry_0x100		__section(.dcd_entry_0x100)
> -#define __image_len_0x100		__section(.image_len_0x100)
> +#if defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
> +	#define __flash_header_section		__section(.flash_header_0x1000)
> +	#define __dcd_entry_section		__section(.dcd_entry_0x1000)
> +	#define __image_len_section		__section(.image_len_0x1000)
> +	#define FLASH_HEADER_OFFSET 0x1000
> +#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_ONENAND)
> +	#define __flash_header_section		__section(.flash_header_0x0100)
> +	#define __dcd_entry_section		__section(.dcd_entry_0x0100)
> +	#define __image_len_section		__section(.image_len_0x0100)
> +	#define FLASH_HEADER_OFFSET 0x0100
nor and onenand are the same why duplicate them?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

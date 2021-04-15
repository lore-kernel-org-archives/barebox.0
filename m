Delivery-date: Thu, 15 Apr 2021 09:17:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwFN-0006i4-KT
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 09:17:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWwFM-0005qy-M9
	for lore@pengutronix.de; Thu, 15 Apr 2021 09:17:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKgviWJ39uYr3wN+y8W8cqSsFoyaT4rAJwNiGuifvos=; b=i9ohb5Upqgv/NiO1pbMRkiOsB
	DjuiWXO0drb7dB07PyK6lz/KFzeKAHwDSfUTMR7dy39R5L4L/9YXVPbojLufMVrfWm+f2YCv88dW5
	7NtAvnDTerDsAx3YGyZDXXJhl8foJV1WQBTF7PMhUWrHcH6QrBrxuhKmOg/3a+WlfUUKMb2pnZcxM
	31WNWsYQAmFeheOapBVFk/SRY8IwNLHK0C6PJgDlkQsnkd3KCv+o+6Jqonx3yEm/QikEDseR/r/tQ
	Msx802e49hN8WROOqM3Ijc5QwzVxULAcwoEHTmjPoJUwYkWEBUo7qDww59MSt8cDcWeTSwlkk3FFz
	dqSpktnZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwE1-00FAjq-As; Thu, 15 Apr 2021 07:15:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwDt-00FAhG-I4
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 07:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=a0VllPksa+hpg5UOltV6dCyitqkYj41iqGBzpSql0Is=; b=OfaXrrLpVTJvJS/5EnbCavxL50
 K41mIoLFyzzTUwoZuqMZ7cAJPX7i07BmyYkB7e8OZeTs52S+W571QQdPRPUJ0SNm4g634uoIhWqHT
 saaK+jEKxeEN5FtxlYexqYJdQpKFWrTlhILNCiZ08rAn6vokWEAY/P9wh+VSYpdsruMELA3QzU9C7
 XdNaWnKRr47Ix9ZJKYqwGeASIJjZ2Z9f9Jk5G08yjuAnIhw4a7NMOQE1TxDFDCM+8DgHISwMB6mgf
 mPcSGLFtMpnJJ9hMGhENn6rkHWnRfF2Pcprhyl2323WTzfFU8wqACIDKvqWqIitk0ycDuwbq+DQcO
 p0OEwyjw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwDq-008Khm-TD
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 07:15:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwDk-0005RE-Ej; Thu, 15 Apr 2021 09:15:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWwDj-00016d-7F; Thu, 15 Apr 2021 09:15:23 +0200
Date: Thu, 15 Apr 2021 09:15:23 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210415071523.GZ19819@pengutronix.de>
References: <20210410110638.2106658-1-ahmad@a3f.at>
 <20210410110638.2106658-3-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410110638.2106658-3-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:04:19 up 56 days, 10:28, 100 users,  load average: 0.40, 0.68,
 0.53
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_001530_962450_2536D1BC 
X-CRM114-Status: GOOD (  26.73  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] RISC-V: board-dt-2nd: add PBL console support for
 virt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 01:06:37PM +0200, Ahmad Fatoum wrote:
> The Virt machine has a ns16550a UART at address 0x10000000. As we reuse
> the generic DT image for this platform, we can't use either DEBUG_LL or
> pbl_console as we would need to hardcode information on what UART is
> available where, which wouldn't be correct for other boards.
> 
> However, if we parse the board compatible, we could match it with the
> appropriate PBL console implementation without sacrificing portability.
> Do so.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - No change
> ---
>  arch/riscv/boot/board-dt-2nd.c | 27 ++++++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
> index be28ea23cd6d..e9810f8add97 100644
> --- a/arch/riscv/boot/board-dt-2nd.c
> +++ b/arch/riscv/boot/board-dt-2nd.c
> @@ -3,7 +3,7 @@
>  #include <common.h>
>  #include <asm/sections.h>
>  #include <linux/sizes.h>
> -#include <debug_ll.h>
> +#include <asm/ns16550.h>
>  #include <pbl.h>
>  #include <fdt.h>
>  
> @@ -22,10 +22,29 @@
>  
>  #include <asm/barebox-riscv.h>
>  
> +static void virt_ns16550_putc(void *base, int ch)
> +{
> +	early_ns16550_putc(ch, base, 0, readb, writeb);
> +}
> +
> +static void virt_ns16550_init(void)
> +{
> +	void __iomem *base = IOMEM(0x10000000);
> +
> +	early_ns16550_init(base, 3686400 / CONFIG_BAUDRATE, 0, writeb);
> +	pbl_set_putc(virt_ns16550_putc, base);
> +}
> +
> +static const struct fdt_device_id console_ids[] = {
> +	{ .compatible = "riscv-virtio", .data = virt_ns16550_init },
> +	{ /* sentinel */ }

This is only board specific. If we go that path of parsing fdt for early
output can't we just do like Linux and establish earlycon?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


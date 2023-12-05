Delivery-date: Tue, 05 Dec 2023 08:56:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQIH-003vDd-2m
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:56:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQIH-0001yU-RY
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:56:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RNqxDjOtsnkL9MiSx6p6fdtdZAFkzKNbOENNJ+LAd9U=; b=JeDwvFPDhcqBHmxpT5nAH9VwRu
	5rdsUBaPOi8q0LPps60774yaarzC2sl9DB92nXadPM8lU9FvQz0GveiX6aY/xtLbJPxbzY36lnhwB
	2/NOMFXzHf5LM7UcG5+J2EVIaHI7CEMUdIrt8mkIownkJvYptKt5D14KHAseApUjISb+w+zBzizL0
	6uYpAZ0aUuXFYNkMuQ9Qq4yThcdoAVOQXiQvHWCVKKOUtVdWi3OJ9TRa9heisZsV/VQz1uPgef4eI
	XX/SvPDuLsviMfHXo8iLXUx1RoML0omHTME7BwMeQmcuBgwTvyFgHPtWhEgsVRZYbs+ERiCDjpxUa
	a8ylmrwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQH7-006YZg-0x;
	Tue, 05 Dec 2023 07:55:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQH3-006YYJ-2I
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:55:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQH2-0001hw-GN; Tue, 05 Dec 2023 08:55:20 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQH2-00Dh3w-4F; Tue, 05 Dec 2023 08:55:20 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQH2-005Lo3-27; Tue, 05 Dec 2023 08:55:20 +0100
Date: Tue, 5 Dec 2023 08:55:20 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205075520.GM1057032@pengutronix.de>
References: <20231129115255.1538958-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129115255.1538958-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235521_771116_66C908A0 
X-CRM114-Status: GOOD (  27.22  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: user: barebox: make barebox chainloading
 clearer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 12:52:55PM +0100, Ahmad Fatoum wrote:
> barebox images are designed to be chainloadable and can be loaded as if
> they were a kernel by other bootloaders. The documentation lists
> examples for two ways to achieve this with U-Boot preinstalled on the
> board. They are not as clear as they could be as the resulting uImage
> is called image in the mkimage line, but barebox.bin later on. This is
> unfortunate as the build results in a barebox.bin already, which
> corresponds to barebox proper in PBL setups. Rename it to barebox.uImage
> instead and while at it note that booti isn't applicable to arm32.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/barebox.rst | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index c95adb78bb83..80f0f96a98de 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -212,7 +212,8 @@ like a Linux kernel that is passed an external device tree. For example:
>  
>    U-Boot: tftp $kernel_addr barebox-dt-2nd.img
>    U-Boot: tftp $fdt_addr my-board.dtb
> -  U-Boot: booti $kernel_addr - $fdt_addr
> +  U-Boot: bootm $kernel_addr - $fdt_addr # On 32-bit ARM
> +  U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
>  
>  For non-DT enabled-bootloaders or other architectures, often the normal barebox
>  binaries can also be used as they are designed to be startable second stage
> @@ -224,7 +225,7 @@ converted to uImage format using the mkimage tool provided with U-Boot:
>  .. code-block:: console
>  
>    sh: mkimage -n barebox -A arm -T kernel -C none -a 0x80000000 -d \
> -      build/images/barebox-freescale-imx53-loco.img image
> +      build/images/barebox-freescale-imx53-loco.img barebox.uImage
>  
>  U-Boot expects the start address of the binary to be given in the image using the
>  ``-a`` option. The address depends on the board and must be an address which isn't
> @@ -233,7 +234,7 @@ image for that board. The image can then be started with ``bootm``:
>  
>  .. code-block:: console
>  
> -  U-Boot: tftp $load_addr barebox.bin
> +  U-Boot: tftp $load_addr barebox.uImage
>    U-Boot: bootm $load_addr
>  
>  With barebox already running on your board, this can be used to chainload
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



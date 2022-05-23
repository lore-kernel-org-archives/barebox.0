Delivery-date: Mon, 23 May 2022 09:56:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt2vh-006HGy-5d
	for lore@lore.pengutronix.de; Mon, 23 May 2022 09:56:41 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt2ve-0006VJ-N1
	for lore@pengutronix.de; Mon, 23 May 2022 09:56:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ulFfqxEzbtBGu7C0VV6Dg8TlCM/27qcNtIt9mRlAcE=; b=PhEjGCWT0CAA5hHj1ye+xT/eMB
	n9C6B/mclNzoVIG/M5n23EwPaeDbI0I68UzvXQKSatWmG/uLnYUqC3sRPfZSYCJckh6aSboe/a/7k
	hifTztgBZp51Luwpqd2I9pWgHygh4rLUzZPyTsaDbQxhqdJJI6xbEABZ2nKRiEB8aPE3LS+jGkOjO
	kj+IErYPTZj7H9q0juKwRqbZtLrWUNFwmHAPZ/YJk1/z9IducJykSZyiE4fqiHNtgoiCppj4OqhuI
	Xj4J/CjWtXc4Y/mi/vbPmOU8pNYOHO2UTzqT4KhVapqsLMC/JEDhxWYXJoSQ7X7ld7BLjhlLEvxd0
	Z76qCqiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt2tq-002D0n-Bm; Mon, 23 May 2022 07:54:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt2nD-002AAA-28
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 07:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AJefRkPCXAbuvhIw3SsT3CopmPbflq/iXIJ43WEbjxA=; b=YbD2+m3ttrzbgUZmQa2rdC1NT8
 fHmWlBBC7oNgFE+WuSZMoRkcdY/1EWYDqjjG5m7FjXwAHemaF2ZVTBCEtZ6l63VUmJ3af5nC/HFGB
 Jxc4WEsdik6P8XE/EbYko2xb6VEitGjLXq8id2W0GFc8+Zk6ZesH+Ty/cqktBQg68EDLwwjEYJxSk
 Em4k2+aIEeoh1+RRZGsbp9mvRIk34OJQ5Z3ERfgoB+Y93Al6DZYt1/j54vgMN4xQNxiLZlWiS5JD9
 1MeJuCtoRHGxALR9/dRg/5D/8B01O4Y/Ow+ayor7FvamHzoQc8GZ0bFWgkiCgENVKwCLBsfmVs44f
 kxQ1Qhng==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt26Q-000vMx-F9
 for barebox@lists.infradead.org; Mon, 23 May 2022 07:03:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nt24G-0008Dw-NR; Mon, 23 May 2022 09:01:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nt24G-0002Ft-Ej; Mon, 23 May 2022 09:01:28 +0200
Date: Mon, 23 May 2022 09:01:28 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220523070128.GL25578@pengutronix.de>
References: <20220520111429.2716691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220520111429.2716691-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:01:19 up 53 days, 19:30, 55 users,  load average: 0.68, 0.34, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_080342_803885_10C03078 
X-CRM114-Status: GOOD (  28.79  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: boards: stm32mp: document USB
 bootstrap via DFU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 20, 2022 at 01:14:28PM +0200, Ahmad Fatoum wrote:
> TF-A v2.6 now supports DFU for USB bootstrap on the STM32MP1. This is
> normally exercised by the STM32CubeProgrammer, but is easily usable with
> just dfu-util as well. Document how to.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/stm32mp.rst | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
> index 0c9615b290a5..4cdd281a9e14 100644
> --- a/Documentation/boards/stm32mp.rst
> +++ b/Documentation/boards/stm32mp.rst
> @@ -49,6 +49,8 @@ In the above output, images with a ``.stm32`` extension feature the (legacy)
>  stm32image header. ``barebox-dt-2nd.img`` and ``barebox-stm32mp-generic-bl33.img``
>  are board-generic barebox images that receive an external device tree.
>  
> +.. _stm32mp_fip:
> +
>  Flashing barebox (FIP)
>  ----------------------
>  
> @@ -137,6 +139,34 @@ Assuming ``CONFIG_CMD_MMC_EXTCSD`` is enabled and the board shall boot from
>  The STM32MP1 BootROM does *not* support booting from eMMC without fast boot
>  acknowledge.
>  
> +USB Bootstrap (DFU)
> +-------------------
> +
> +The STM32MP1 can be strapped to boot from USB. After Power-On reset, it
> +should be detectable as ``STMicroelectronics STM Device in DFU Mode``
> +and can be uploaded to with ``dfu-util(1)``::
> +
> +  dfu-util --alt 1 -D tf-a-stm32mp157c-my-board.stm32
> +  dfu-util --alt 3 -D bl3-firmware.fip
> +  dfu-util --alt 0 -e
> +
> +The first command will talk to the BootROM and upload the first stage
> +bootloader (ARM Trusted Firmware-A) into on-chip SRAM.
> +
> +When compiled with ``STM32MP_USB_PROGRAMMER=1``, TF-A v2.6 or higher
> +will seamlessly continue operation of the DFU gadget. The second
> +command will talk to TF-A to upload a Firmware Image Package, which
> +is a format bundling further firmware including barebox.
> +
> +The final command will instruct TF-A to boot the loaded images.
> +This all happens in volatile memory. To persist images, use
> +normal barebox functionality like creating a DFU-gadget in barebox,
> +Fastboot/USB mass storage ... etc.
> +
> +The FIP image containing barebox can be generated as described in
> +137::ref:`stm32mp_fip`. Upstream TF-A doesn't support DFU for
> +SSBLs using the legacy stm32image format.
> +
>  Boot source selection
>  ---------------------
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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


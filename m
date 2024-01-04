Delivery-date: Thu, 04 Jan 2024 12:18:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLkF-003Smx-0k
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:18:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLkE-0005mA-4c
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:18:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9N+nJLtQ+PayGeB6Ix078M2KqlJb2gefSEPKtvUgbDU=; b=vhd07v57ipc0zC/gBgDVpqCRJK
	H/fvDhnIMzfMT5RD9FbQxKl08sqLyaqB4TjAXqlRn0mn5Pyf2EaId8F0wHpYVWFQ3KIUfi2Mi/90H
	v23J87CKTm7xd0tX6idwSRdJBhAr3ECCbGhbBQtoRadfcfRzALljwCRjfcDtyu4FiB7x+4rtA9lwJ
	2uZoBA13GQ5jZ8hktLwCTjo7pI+U9Og1fdAMpV3Ck2e3F3LFZC211EAkLZOezdvo1PPsWJN4u+F6z
	bAIlBCxfGSe7ckOF+/5Oz8EaPcU1EI6vAA+fIHk+K6oK2LuL9tKz2aNaSK9lU2YLcjMSXCuzrFh/h
	8eDlqHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLjE-00DfzB-2T;
	Thu, 04 Jan 2024 11:17:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLjB-00Dfy5-37
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:17:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLjA-0005Qt-Pn; Thu, 04 Jan 2024 12:17:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLjA-000KlF-9s; Thu, 04 Jan 2024 12:17:32 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLjA-00AClF-7e; Thu, 04 Jan 2024 12:17:32 +0100
Date: Thu, 4 Jan 2024 12:17:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20240104111732.GP1318922@pengutronix.de>
References: <20240103105246.800751-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103105246.800751-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_031734_006898_1B600097 
X-CRM114-Status: GOOD (  20.57  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] MIPS: qemu-malta*_defconfig: enable e1000 network driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 01:52:46PM +0300, Antony Pavlov wrote:
> Thanks to Denis Orlov's work on dma_sync_single_for_*()
> interface and e1000 patches we can enable e1000 support
> on both 32-bit and 64-bit qemu malta boards.
> 
> 32-bit malta qemu command line:
> 
>     qemu-system-mips -M malta -cpu 24Kf -m 256M \
>         -nographic -serial mon:stdio \
>         -bios images/barebox-qemu-malta.img \
>         -net user,tftp=$(pwd) -net nic,model=e1000
> 
> 64-bit malta qemu command line:
> 
>     qemu-system-mips64el -M malta -cpu MIPS64R2-generic -m 256M \
>         -nographic -serial mon:stdio \
>         -bios images/barebox-qemu-malta.img.swapped \
>         -net user,tftp=$(pwd) -net nic,model=e1000
> 
> Barebox commands to check e1000 network interface:
> 
>     barebox@qemu malta:/ devinfo eth0
>     Parent: pci-8086:100e.0
>     Parameters:
>       ethaddr: 52:54:00:12:34:56 (type: MAC)
>       gateway: 0.0.0.0 (type: ipv4)
>       ipaddr: 0.0.0.0 (type: ipv4)
>       linux.bootargs:  (type: string)
>       linux.devname:  (type: string)
>       mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
>       netmask: 0.0.0.0 (type: ipv4)
>       serverip:  (type: string)
>     barebox@qemu malta:/ devinfo pci-8086:100e.0
>     Driver: e1000
>     Bus: pci
>     Parameters:
>       class: 0200 (type: string)
>       devfn: 90 (type: string)
>       device: 100e (type: string)
>       revision: 0003 (type: string)
>       vendor: 8086 (type: string)
>     barebox@qemu malta:/ dhcp eth0
>     eth0: DHCP client bound to address 10.0.2.15
>     barebox@qemu malta:/ tftp images/barebox-qemu-malta.img
>             [################################################################]
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/configs/qemu-malta64el_defconfig | 1 +
>  arch/mips/configs/qemu-malta_defconfig     | 1 +
>  2 files changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
> index da3396246d5..c1f7366d76d 100644
> --- a/arch/mips/configs/qemu-malta64el_defconfig
> +++ b/arch/mips/configs/qemu-malta64el_defconfig
> @@ -63,6 +63,7 @@ CONFIG_NET_NETCONSOLE=y
>  CONFIG_OFDEVICE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_VIRTIO_CONSOLE=y
> +CONFIG_DRIVER_NET_E1000=y
>  CONFIG_DRIVER_NET_RTL8139=y
>  CONFIG_DRIVER_NET_VIRTIO=y
>  # CONFIG_SPI is not set
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> index 4be05b7e5a3..99714aa3068 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -60,6 +60,7 @@ CONFIG_NET_NETCONSOLE=y
>  CONFIG_OFDEVICE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_VIRTIO_CONSOLE=y
> +CONFIG_DRIVER_NET_E1000=y
>  CONFIG_DRIVER_NET_RTL8139=y
>  CONFIG_DRIVER_NET_VIRTIO=y
>  # CONFIG_SPI is not set
> -- 
> 2.39.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



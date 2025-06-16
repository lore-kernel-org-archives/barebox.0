Delivery-date: Mon, 16 Jun 2025 14:58:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9Po-007vQx-0T
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 14:58:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9Pn-0001Yn-DJ
	for lore@pengutronix.de; Mon, 16 Jun 2025 14:58:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cnm9ftFUTp1ETmQomFq/G36PyOsxz07dZYB1+wew/s4=; b=LeerwU7i7BnEobdmwcp4MYEt0E
	+LXeOMwThDN45ZW9CCgxXa47XF+dq8UpKtMUTFfR51qf6fR0V8HCrSZpPL/PjfK0/rlEg9RP/pDu6
	jSAgt6h6OluzmJMs7mWh2Ca2xGnzPnNcJsUNH03iIJEKR3upd49l/+Hs2N4BvNI5Hn88EZYOJ903R
	KkEgDGunVipqjVUuuWbCei9J4mqsLaPwRzO1kmIzBL4axZfWYiXADwEl4h1l/RAkjVcvVjhVP3B4W
	q16actja7yNSfzQ+NZUUkVk9w78gxtGMtlTp6KZmMDCo4L5x/3zHrltxbGIFKcoxy7W51rb47z+Xw
	CRmBcuIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9PL-00000004Rzs-1GEA;
	Mon, 16 Jun 2025 12:57:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8Pm-00000004G2m-2ozR
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 11:54:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR8Pl-0008FK-CA; Mon, 16 Jun 2025 13:54:13 +0200
Message-ID: <d03e0e54-f160-4063-9cf4-259726a76d38@pengutronix.de>
Date: Mon, 16 Jun 2025 13:54:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
 <20250605-arm-k3-am62l-v2-9-53257d4b2dd2@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-9-53257d4b2dd2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_045414_718262_E273B9D4 
X-CRM114-Status: GOOD (  29.86  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/33] firmware: add ti-linux-firmware submodule
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/5/25 14:42, Sascha Hauer wrote:
> For K3 SoCs we need several binaries from the ti-linux-firmware
> repository and currently we have to copy the needed files over from the
> repository to firmware/ in barebox. To simplify this expect the
> ti-linux-firmware repository to be checked out or linked at
> firmware/ti-linux-firmware. For further convenience create a git
> submodule for it.

I don't dislike the idea, but I hope that build systems that check out
barebox by git revision instead of tarball won't do a recursive clone by
default, give that this is a 1.30 GiB dependency. I guess we will find out.

At LPC 2024, there was a talk about a "Common git repo for hosting
Boot-firmware", which would lend itself nicely to this and to other
firmware that we expect to be placed into this directory, but I think
things haven't progressed further since then unfortunately.

[1]: https://lpc.events/event/18/contributions/1815/

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .gitmodules                    |  3 +++
>  Documentation/boards/ti-k3.rst | 10 +++++-----
>  firmware/ti-linux-firmware     |  1 +
>  images/Makefile.k3             |  6 +++---
>  4 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/.gitmodules b/.gitmodules
> new file mode 100644
> index 0000000000000000000000000000000000000000..c58f53c29f302f7610c5776d13259a373c17520c
> --- /dev/null
> +++ b/.gitmodules
> @@ -0,0 +1,3 @@
> +[submodule "ti-linux-firmware"]
> +	path = firmware/ti-linux-firmware
> +	url = https://git.ti.com/git/processor-firmware/ti-linux-firmware.git
> diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
> index 3bb5103f32378d6fe7413b5f19ca29883444dc69..6cb9eb8edab93e6bf7a74bc24748f9ad11609b20 100644
> --- a/Documentation/boards/ti-k3.rst
> +++ b/Documentation/boards/ti-k3.rst
> @@ -15,10 +15,11 @@ Prerequisites
>  
>  There are several binary blobs required for building barebox for TI K3 SoCs. Find them
>  in git://git.ti.com/processor-firmware/ti-linux-firmware.git. The repository is assumed
> -to be checked out at ``$TI_LINUX_FIRMWARE``. The K3 SoCs boot from a FAT partition on
> -SD/eMMC cards. During the next steps the files are copied to ``$TI_BOOT``. This is assumed
> -to be an empty directory. After the build process copy its contents to a FAT filesystem
> -on an SD/eMMC card.
> +to be checked out at ``firmware/ti-linux-firmware``. Alternatively the barebox repository
> +has a ti-linux-firmware submodule which checks out at the correct place. The K3 SoCs boot
> +from a FAT partition on SD/eMMC cards. During the next steps the files are copied to
> +``$TI_BOOT``. This is assumed to be an empty directory. After the build process copy its
> +contents to a FAT filesystem on an SD/eMMC card.
>  
>  The Cortex-R5 is a 32-bit processors whereas the Cortex-A53 are 64-bit processors, so
>  both 32-bit and 64-bit toolchains are needed::
> @@ -35,7 +36,6 @@ need to be adjusted for other boards.
>  There's a single ``k3-r5_defconfig`` for all K3 boards. This builds the boot images
>  for the Cortex-R5 processors::
>  
> -  cp $TI_LINUX_FIRMWARE/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin firmware/
>    export ARCH=arm CROSS_COMPILE=$CROSS_COMPILE_32
>    make k3-r5_defconfig
>    make
> diff --git a/firmware/ti-linux-firmware b/firmware/ti-linux-firmware
> new file mode 160000
> index 0000000000000000000000000000000000000000..10257543a029cc608c9df1c36c83e36ac3dd5b46
> --- /dev/null
> +++ b/firmware/ti-linux-firmware
> @@ -0,0 +1 @@
> +Subproject commit 10257543a029cc608c9df1c36c83e36ac3dd5b46
> diff --git a/images/Makefile.k3 b/images/Makefile.k3
> index 3236a983d10a0df552392762200d8aa20fb2ea44..12db9c59a96eade62679987aedb9b5433cec3c2f 100644
> --- a/images/Makefile.k3
> +++ b/images/Makefile.k3
> @@ -21,9 +21,9 @@ ifdef CONFIG_MACH_K3_CORTEX_R5
>  
>  SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62x.k3cfg
>  DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am62x.k3cfg
> -SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-enc.bin
> -SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-gp.bin
> -INNERDATA_am625=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-cert.bin
> +SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-enc.bin
> +SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin
> +INNERDATA_am625=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-hs-fs-cert.bin
>  KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
>  KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




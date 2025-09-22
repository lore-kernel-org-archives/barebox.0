Delivery-date: Mon, 22 Sep 2025 17:40:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ieQ-0060Az-2t
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:40:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ieQ-0002gK-AP
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:40:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m/GpNKlmyP7YauzwxOM4i0ItncBZI87HCPUV4nBWG+M=; b=KpiQRRSndltKbOrdKJzbmkDSLZ
	UDK6AvmG/GTQko72hQJY7DFKW//0ZXJBpZusv745FLdk1u3NjvmSQQceK+JfdadiqtESKvgEuqrqL
	iHaW0/dwArsdJJH7ERm+KqyGX/T/HiV8aHKNxeYEHjAuivhnnLshCB94lmMTgR8G9FhvXb7kC7BYf
	+kl+rFIC0l7y4UPbxVXZG/DSCtb9pSsnJa9Cl8+Icvuj1NyR0lSYm5H39jlhYBAVs7S+Yygg/88R+
	bi9MB+IJhGKsH04f/Vqd88ofMDXVClnRuqGUz3Yt37VVy0XeH2j/drXll0C1sCrT2PjT0boOy4h+L
	O+QwTCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ie5-0000000Aqp1-0DD8;
	Mon, 22 Sep 2025 15:40:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ie2-0000000Aqo4-3EwK
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:40:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0ie1-0002Z9-Bn; Mon, 22 Sep 2025 17:40:01 +0200
Message-ID: <598f42ab-9e1d-4abd-a96d-5d2495386976@pengutronix.de>
Date: Mon, 22 Sep 2025 17:40:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-8-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-8-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084002_816919_8D343E03 
X-CRM114-Status: GOOD (  15.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/11] ci: pytest: Enable testfs feature on malta boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> By enabling 9p in the defconfig, we get access to the testfs feature,
> which will enable the upcoming dm-verity labgrid tests to be run on
> this platform.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Nice. I meant to enable it in the past, but didn't debug into why the
build failed, but you fixed that already in the last series.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/configs/qemu-malta_defconfig  | 4 ++++
>  test/mips/be@qemu-malta_defconfig.yaml  | 1 +
>  test/mips/qemu-malta64el_defconfig.yaml | 1 +
>  3 files changed, 6 insertions(+)
> 
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> index e5bc8ff8cb..64279f7ff4 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -58,6 +58,8 @@ CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
> +CONFIG_NET_9P=y
> +CONFIG_NET_9P_VIRTIO=y
>  CONFIG_OFDEVICE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_VIRTIO_CONSOLE=y
> @@ -91,6 +93,8 @@ CONFIG_FS_CRAMFS=y
>  CONFIG_FS_EXT4=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_NFS=y
> +CONFIG_9P_FS=y
> +CONFIG_9P_FS_WRITE=y
>  CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
> diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
> index a3d34a660d..2f3b7e674b 100644
> --- a/test/mips/be@qemu-malta_defconfig.yaml
> +++ b/test/mips/be@qemu-malta_defconfig.yaml
> @@ -14,6 +14,7 @@ targets:
>        BareboxTestStrategy: {}
>      features:
>        - virtio-pci
> +      - testfs
>  images:
>    barebox-qemu-malta.img: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img"
>  imports:
> diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
> index 5562f59dc7..dfbdb21ee8 100644
> --- a/test/mips/qemu-malta64el_defconfig.yaml
> +++ b/test/mips/qemu-malta64el_defconfig.yaml
> @@ -14,6 +14,7 @@ targets:
>        BareboxTestStrategy: {}
>      features:
>        - virtio-pci
> +      - testfs
>  images:
>    barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
>  imports:


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



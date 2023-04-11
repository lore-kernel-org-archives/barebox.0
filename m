Delivery-date: Tue, 11 Apr 2023 14:02:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCi9-00HWEw-PS
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmCi9-0003xx-L7
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zWLYyLoogcaPXvKvECOA/cIOo9RaKzcBcyGCb1FAlhs=; b=NkQCxQbWrYugJt3fDPb/YfTMiV
	LBoyn+guGaXUpcfhgVlkbXy8taxJeOPtxHZqnugOP270WEtHYR0Uj7lWOZj8SFU6/gDUJYRoLfWqp
	U130wBIYvKf+4qVjSH95Z3iYvqQYwI2tgBV5W9H8eZPPA0xCDXvwUHT1GlBNpU8uhwTIohAWnmPMq
	yOxudFbMQ/WitTq6K4oYGsGUiK0n6oJVfRBQL/7OzYAUQT3blJMfZ0jQhQxgDMkhYdkwnylFiINnD
	YoXoEDkDKREYKHpWtSbgJ75cBvy0CctxzvYJztRD5FtpmZncKommFSHv0eafwAu7qyWkLWmQ1qsTA
	Smb1KckQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCh3-00HUo8-1U;
	Tue, 11 Apr 2023 12:01:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCh0-00HUnU-0j
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:01:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCgz-0003Vz-0M; Tue, 11 Apr 2023 14:01:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCgy-0006aP-KD; Tue, 11 Apr 2023 14:01:44 +0200
Date: Tue, 11 Apr 2023 14:01:44 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230411120144.GH19113@pengutronix.de>
References: <20230408080616.938638-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230408080616.938638-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_050146_260868_C2C2A10D 
X-CRM114-Status: GOOD (  18.42  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] treewide: add missing device tree artifact
 cleanup where needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 08, 2023 at 10:06:16AM +0200, Ahmad Fatoum wrote:
> The DTs in arch/$ARCH/dts are all cleaned up when invoking the make
> target, but we have a few DTs outside these directories.
> 
> Clean those up as well and add a clean line for the overlay too.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/boards/riscvemu/Makefile | 3 +++
>  common/boards/qemu-virt/Makefile    | 3 +++
>  test/self/Makefile                  | 3 +++
>  3 files changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
> index 56949c2357c8..ec7e89479e77 100644
> --- a/arch/riscv/boards/riscvemu/Makefile
> +++ b/arch/riscv/boards/riscvemu/Makefile
> @@ -3,3 +3,6 @@
>  obj-y += board.o
>  obj-y += overlay-of-sram.dtb.o
>  bbenv-$(CONFIG_CMD_TUTORIAL) += defaultenv-riscvemu
> +
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> +clean-files += *.dtbo *.dtbo.S .*.dtso
> diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
> index 88184e9a7969..8cacfafee734 100644
> --- a/common/boards/qemu-virt/Makefile
> +++ b/common/boards/qemu-virt/Makefile
> @@ -5,3 +5,6 @@ obj-y += overlay-of-flash.dtb.o
>  ifeq ($(CONFIG_RISCV),y)
>  DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
>  endif
> +
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> +clean-files += *.dtbo *.dtbo.S .*.dtso
> diff --git a/test/self/Makefile b/test/self/Makefile
> index 4d2c0374c9c3..d55d9133be23 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -8,3 +8,6 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
>  obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
>  obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
>  obj-$(CONFIG_SELFTEST_JSON) += json.o
> +
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> +clean-files += *.dtbo *.dtbo.S .*.dtso
> -- 
> 2.38.4
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Mon, 08 Jul 2024 08:50:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQiCS-002hJ5-2c
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 08:50:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQiCS-0002U9-4O
	for lore@pengutronix.de; Mon, 08 Jul 2024 08:50:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kg3Z1M/YE69uBM9xO64h4azZt5iwTu210heH/rvVMGc=; b=iFB4XavBRCesmvBihZgE7a32UL
	6Ic63nTzTa5BB5J2UHtsfiKlZZEPfOX2c4oziD1XzLa1Xetclj2il3Bm3huI0KwrGJbT3zR6lfBOz
	t6ZxQ45MFewQCCQcGW8bl0ss4HZUc+ZgvfOlVVD+AJ1TWANQ98vXDJqPeE8ElMM2U2wNSHOEgz78A
	MH244qqCrNjYu6cVdGfwP22+KkGl0yFf6tQFdI3m7z9pLe99YYOrY4Sr7fhNLx1vmjU8+NMLrQTjE
	sNt1VCrKlsmScmIEsMpfj+ldlU8S9ifaZZAjjL67i6ptC9jgLzFUY0g936sEa9haP22FsUWKgBvPZ
	7K4py/DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQiBm-00000002vfR-2na5;
	Mon, 08 Jul 2024 06:49:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQiBi-00000002vcK-2zCO
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 06:49:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sQiBe-0002MG-Pj; Mon, 08 Jul 2024 08:49:22 +0200
Message-ID: <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de>
Date: Mon, 8 Jul 2024 08:49:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Wes Chow <wes.chow@gmail.com>, barebox@lists.infradead.org
References: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240707_234926_784997_57EBE908 
X-CRM114-Status: GOOD (  27.63  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Wes,

On 08.07.24 04:22, Wes Chow wrote:
> I am trying to better understand barebox and playing with it via
> Buildroot with Qemu. One thing I don't understand is how the state
> backend is configured. I see this:
> 
> https://github.com/barebox/barebox/blob/d74c84582591ac1f93b203d733831fcf18e6b033/common/boards/qemu-virt/qemu-virt-flash.dtso#L4
> 
> ..however I don't know how to read dts overlay files.

The device trees and device tree overlays you see in the barebox source
tree are normally compiled _into_ barebox. Board code then references
them. For Qemu's state overlay, this is being done here:

  https://github.com/barebox/barebox/blob/d74c84582591ac1f93b203d733831fcf18e6b033/common/boards/qemu-virt/board.c#L76

Normally, the barebox device tree already describes the state and
environment, but Qemu is a special case, because the device tree is
not compiled into barebox, but supplied by the virtual machine.

Thus this overlay to add some barebox specific information. As this
should happen very early, so that the environment can take effect early
on, the overlays aren't applied dynamically in this case, but compiled-in.

> Do I need to set
> up a disk with a partition scheme that matches lines 17-30? Or is it
> sufficient to just have a partition with the "barebox-state" label?

"fixed-partitions" are partitions that have a fixed offset that isn't
of any on-disk (MBR, GPT, ...etc.) partitioning. So you don't need
to do anything special with your disk, just ensure you don't place
any data you don't want clobbered into the environment/state partition.

> Also possibly of relevance, I'm starting qemu like so:
> 
> qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
> none -serial mon:stdio -kernel output/images/barebox-dt-2nd.img
> -device virtio-blk-pci,drive=hd0,disable-legacy=on -drive
> file=output/images/rootfs.ext2,if=none,format=raw,id=hd0
> 
> The rootfs.ext2 disk becomes available to barebox as /dev/virtioblk0.
> How does barebox know which disk to search for the backend?

This is described in the state device tree node. In the case of the Qemu
overlay, it's /state/backend-type = <&backend_state_flash>, which is
partition@3e00000 on the cfi-flash.

Because that flash is a fixed part of the virt machine, you should
already have functional state:

  barebox@ARM QEMU virt64:/ state
  registered state instances:
  state                (backend: raw, path: /dev/nor0.barebox-state)

Is this not the case and if not, what errors did you get?

If you got no errors at all, which defconfig did you use?
multi_v8_defconfig should have everything needed for this to just
work out of the box.

Placing the state on the Virt I/O disk is possible too in theory, but more
complicated, because there is no device tree nodes you can easily reference
in the DT. I'd suggest that you use the flash for state, even if your
rootfs is on a Virt I/O block device.

> In the target image, I installed dt-utils and so have access to the
> barebox-state command. How does the barebox-state executable know
> where to look for the state backend? Is this passed down through the
> device tree?

Yes. When the barebox state driver successfully probes, it takes care to
fix up into the kernel device tree the state description node, so dt-utils
can find it. If you are interested to see what fixups barebox is going to
apply, you can list them with (+ means take the previous arguments, but
fix it up):

  of_diff /mnt/virtioblk0/boot/my-devicetree.dtb +

Cheers,
Ahmad

> 
> Thanks,
> Wes
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




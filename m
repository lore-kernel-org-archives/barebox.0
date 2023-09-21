Delivery-date: Thu, 21 Sep 2023 10:07:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEiI-005dsG-MD
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:07:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEiG-0003AR-JL
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:07:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gViVsF2nIrOZ8hUx4MmXZt8nCRdChJGGRnpE2eXXA8o=; b=GN86QFlIrtPK/FW/cQPSaxtcDT
	N29HV8VfMbkC/2gZ3ldY3ZOEeluijBKqpV8lzYsMR/M2PpTeMTnMNMvvbqjJ9wbVFE7NyToKBIGfL
	VC/gA/RekBWnmQTW0Zm77E+X98LyREYyhYRApUWr9VRyXh1mMla41LQrWJNd4koOXcomtfYPpItv9
	RBSFAqMbhWzDvX3DkUq60t+2mpeybsncOlH91rQsBULRSSGGonadS+r5zSuSUT9m+4dBKXgRtkd32
	1O2A7pCldQMq4vJk97DWFx4UE117N6BoPF5itXD1hRJXl/8II0XwZ3+GEK3HssYQifNY22awS3SzI
	i89yJmhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEhC-005SEz-21;
	Thu, 21 Sep 2023 08:05:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEh8-005SD8-29
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:05:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEh7-0002nU-Gq; Thu, 21 Sep 2023 10:05:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEh7-007sKe-4a; Thu, 21 Sep 2023 10:05:53 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEh7-00Af9H-20; Thu, 21 Sep 2023 10:05:53 +0200
Date: Thu, 21 Sep 2023 10:05:53 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080553.GB637806@pengutronix.de>
References: <20230914132028.50261-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914132028.50261-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010554_709419_845A4081 
X-CRM114-Status: GOOD (  35.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] doc: booting-linux: improve Bootloader spec section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 14, 2023 at 03:20:28PM +0200, Roland Hieber wrote:
> Improve language and clarity of the text, and add formatting.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst | 36 ++++++++++++++--------------
>  1 file changed, 18 insertions(+), 18 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 0ba6229797cd..76883862b938 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -172,13 +172,14 @@ https://uapi-group.org/specifications/specs/boot_loader_specification/
>  
>  It follows another philosophy than the :ref:`boot_entries`. With Boot Entries
>  booting is completely configured in the bootloader. Bootloader Spec Entries
> -on the other hand the boot entries are on a boot medium. This gives a boot medium
> -the possibility to describe where a Kernel is and what parameters it needs.
> +on the other hand are part of the boot medium. This gives a boot medium
> +the possibility to describe where a kernel is located and which parameters are
> +needed to boot it.
>  
> -All Bootloader Spec Entries are in a partition on the boot medium under ``/loader/entries/*.conf``.
> -In the Bootloader Spec a boot medium has a dedicated partition to use for
> -boot entries. barebox is less strict, it accepts Bootloader Spec Entries on
> -every partition barebox can read.
> +All Bootloader Spec Entries are located in a partition on the boot medium under
> +``/loader/entries/*.conf``. According to the Bootloader Spec, a boot medium has
> +to use a dedicated partition for boot entries. barebox is less strict, it
> +accepts Bootloader Spec Entries on every partition that barebox can read.
>  
>  A Bootloader Spec Entry consists of key value pairs::
>  
> @@ -194,7 +195,7 @@ A Bootloader Spec Entry consists of key value pairs::
>  All paths are absolute paths in the partition. Bootloader Spec Entries can
>  be created manually, but there also is the ``scripts/kernel-install`` tool to
>  create/list/modify entries directly on a MMC/SD card or other media. To use
> -it create a SD card / USB memory stick with a /boot partition with type 0xea.
> +it, create an SD card / USB memory stick with a ``/boot`` partition with type ``0xea``.
>  The partition can be formatted with FAT or EXT4 filesystem. If you wish to write
>  to it from barebox later you must use FAT. The following creates a Bootloader
>  Spec Entry on a SD card:
> @@ -206,7 +207,7 @@ Spec Entry on a SD card:
>                  --kernel=/home/sha/linux/arch/arm/boot/zImage --add-root-option \
>                  --root=/dev/mmcblk0p1 -o "console=ttymxc0,115200"
>  
> -The entry can be listed with the -l option:
> +The entry can be listed with the ``-l`` option:
>  
>  .. code-block:: sh
>  
> @@ -219,23 +220,22 @@ The entry can be listed with the -l option:
>          options:    console=ttymxc0,115200 root=PARTUUID=0007CB20-01
>          linux:      11ab7c89d02c4f66a4e2474ea25b2b84.15/linux
>  
> -When on barebox the SD card shows up as ``mmc1`` then this entry can be booted with
> -``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
> +When the SD card shows up as ``mmc1`` in barebox, this entry can be booted with
> +``boot mmc1`` or by setting ``global.boot.default`` to ``mmc1``.
>  
> -``machine-id`` is an optional key. If ``global.boot.machine_id`` variable is set to
> -non-empty value, then barebox accepts only Bootloader Spec entries with ``machine-id``
> -key. In case if value of global variable and Bootloader Spec key match each other,
> -barebox will choose the boot entry for booting. All other Bootloader Spec entries will
> -be ignored.
> +``machine-id`` is an optional key. If the ``global.boot.machine_id`` variable
> +is set to a non-empty value, barebox will only boot the Bootloader Spec Entry
> +whose ``machine-id`` key matches the ``global.boot.machine_id`` variable.
> +All other Bootloader Spec entries will be ignored.
>  
> -A bootloader spec entry can also reside on an NFS server in which case a RFC2224
> -compatible NFS URI string must be passed to the boot command:
> +A bootloader spec entry can also reside on an NFS server in which case an
> +RFC2224-compatible NFS URI string must be passed to the boot command:
>  
>  .. code-block:: sh
>  
>    boot nfs://nfshost[:port]//path/
>  
> -Additionally to the options defined in the original spec barebox understands the
> +In addition to the options defined in the original spec barebox understands the
>  ``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
>  will automatically append a ``root=`` string to the Linux commandline based on the
>  device where the entry is found on. This makes it possible to use the same rootfs
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



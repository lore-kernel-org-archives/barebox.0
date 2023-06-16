Delivery-date: Fri, 16 Jun 2023 08:26:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA2uR-008m88-PE
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 08:26:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA2uO-0000to-U2
	for lore@pengutronix.de; Fri, 16 Jun 2023 08:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AtgRck5SD4hmW44NEksTpw5nY0OK4jCEyP9eSuO9BUM=; b=I4r8Z+PNztIiY+nLAUEv+APcXU
	AtKYk2qvIoni8eTdqBa7poFi126L4Pql0sMPz5h793PddKHEGoV8He0DxKAxZPeFtJtE3PPxyGKGa
	b4GgngA4QXQMJt41jx2+Bs64K9/sgVISI5HYO0PpJZTpNR546sWXI3KyknSTTa+VCwTg88TOX5+Ru
	4hOyZ1kYg8qUFv1tgHp995yEyH/3MFzA0nyta5JF7dctA+V04V4cmPUi2A6VERoKlJ8JEAYKu4HvN
	BgOEFBdsRfDyzHRHUra9yyUfY4ouKHdhI6gRPhUIP+V6W/hp9WZlKT4F+YzitM2ddSKcMrwnw+fYT
	wdXuif6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2sz-00H1jq-1c;
	Fri, 16 Jun 2023 06:24:41 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2sU-00H1UR-20
	for barebox@bombadil.infradead.org;
	Fri, 16 Jun 2023 06:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=AtgRck5SD4hmW44NEksTpw5nY0OK4jCEyP9eSuO9BUM=; b=eGjmeg2BrLm1lQcojSTYJzd+nf
	O2sLzAf9MWPQ4bBrxQwvcfFoF5+KIZEdWakXoJrxU6XL2AZwH5gcWklAaZvsLksw4KwYrjwMRFa1c
	t6Ylc0Qxm1i0/zzD0mIiu0Ng3Sg3cqF6/jkIkFSVcQ7HrHWQEX/nPhsOWADc4559wSHyfxoYkQSAi
	ONhTqD60eR3ls4dgE9C4lcZjeC6jUsafo/n/PFICFxcQJ91gF3p9cZMRcGJ4/5GGBQre8AW+6+747
	NSSyq/oL2pdrz/92hHXcGPjhTGjID6YJnGgNAVw//PKzwTcYGJenESmThvLcsrP2qdoCeLVravGki
	vU1/36KA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qA2sR-008WcI-83
	for barebox@lists.infradead.org; Fri, 16 Jun 2023 06:24:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2sQ-0000Nn-P4; Fri, 16 Jun 2023 08:24:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2sQ-0007BM-Gn; Fri, 16 Jun 2023 08:24:06 +0200
Date: Fri, 16 Jun 2023 08:24:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230616062406.GG18491@pengutronix.de>
References: <20230615133647.4115139-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230615133647.4115139-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_072407_285596_B659BDC8 
X-CRM114-Status: GOOD (  29.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: user: usb: bring up to date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 15, 2023 at 03:36:47PM +0200, Ahmad Fatoum wrote:
> The USB support got a few features since the docs were last touched.
> Document them.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 35 ++++++++++++++++++++++++++---------
>  1 file changed, 26 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index eaee342956f9..402f76d8da33 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -13,9 +13,9 @@ devices are not disconnected while barebox is running.
>  USB Networking
>  ^^^^^^^^^^^^^^
>  
> -barebox supports ASIX-compatible devices and the SMSC95xx. After
> -detection, the device shows up as eth0 and can be used like a regular network
> -device.
> +barebox supports r8152, ASIX-compatible devices and the SMSC95xx. After
> +detection, the device shows up as an extra network device (e.g. eth1) and
> +can be used like a regular network device.
>  
>  To use a USB network device together with the :ref:`command_ifup` command, add the
>  following to ``/env/network/eth0-discover``:
> @@ -26,6 +26,9 @@ following to ``/env/network/eth0-discover``:
>  
>    usb
>  
> +Alternatively, a ``detect -a`` (all) can be forced in ``ifup`` by setting
> +``global.net.ifup_force_detect=1``.
> +
>  USB mass storage
>  ^^^^^^^^^^^^^^^^
>  
> @@ -39,18 +42,21 @@ barebox supports several different USB gadget drivers:
>  
>  - Device Firmware Upgrade (DFU)
>  - Android Fastboot
> +- USB mass storage
>  - serial gadget
>  
>  The recommended way to use USB gadget is with the :ref:`command_usbgadget` command.
>  While there are individual commands for :ref:`command_dfu` and :ref:`command_usbserial`,
> -the :ref:`command_usbgadget` commands supports registering composite gadgets.
> +the :ref:`command_usbgadget` commands supports registering composite gadgets, which
> +exports multiple functions at once. This happens in the "background" without impacting
> +use of the shell.
>  
>  Partition description
>  ^^^^^^^^^^^^^^^^^^^^^
>  
> -The USB gadget commands for Android Fastboot and DFU take a partition description
> -which describes which barebox partitions are exported via USB. The partition
> -description is referred to as ``<desc>`` in the command help texts. It has
> +The USB gadget commands for Android Fastboot, DFU and the mass storage gadget
> +take a partition description which describes which barebox partitions are exported via USB.
> +The partition description is referred to as ``<desc>`` in the command help texts. It has
>  the general form ``partition(name)flags,partition(name)flags,...``.
>  
>  The **partition** field is the partition as accessible in barebox. This can be a
> @@ -65,7 +71,8 @@ Several **flags** are supported, each denoted by a single character:
>  * ``r`` Readback. The partition is allowed to be read back (DFU specific)
>  * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
>  * ``u`` The partition is a MTD device and shall be flashed with a UBI image.
> -* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped instead of aborting the initialization
> +* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped
> +        instead of aborting the initialization. This is currently only supported for fastboot.
>  
>  Example:
>  
> @@ -223,6 +230,16 @@ and initrd:
>    fi
>    timeout -k 5 3 fastboot -i 7531 oem exec -- bootm -o /devicetree -r /initrd /kernel
>  
> +USB Mass storage gadget
> +^^^^^^^^^^^^^^^^^^^^^^^
> +
> +Example exporting barebox block devices to a USB host::
> +
> +.. code-block:: sh
> +
> +  usbgadget -S /dev/mmc0(emmc),/dev/mmc1(sd)
> +
> +
>  USB Composite Multifunction Gadget
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
> @@ -244,7 +261,7 @@ after creating the gadget. The gadget can be removed with ``usbgadget -d``.
>  USB OTG support
>  ---------------
>  
> -barebox does not have USB OTG support. However, barebox supports some USB cores in
> +barebox does not have true USB OTG support. However, barebox supports some USB cores in
>  both host and device mode. If these are specified for otg in the device tree
>  (dr_mode = "otg";) barebox registers a OTG device which can be used to decide which
>  mode shall be used. The device has a ``mode`` parameter which by default has the
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



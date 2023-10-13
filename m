Delivery-date: Fri, 13 Oct 2023 11:21:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEMI-006tcY-96
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 11:21:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEMF-0004KL-Dx
	for lore@pengutronix.de; Fri, 13 Oct 2023 11:21:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DEgd8nPeNk5IQjYWdpCOD3TGeuwUwZKwkpI+aJ2TeN0=; b=TtQDkXXJq8Oh38h7NH0Hy88vFw
	RwBpphH3tfyKguTah6Gmb3iQpG5i1dQBXHy372SHj1TxB3U3VpwAmyna7N5prlXYXjy43lOqlhd+G
	f3dADVtuuAkYw3C2kbOlgYtMV5ZH4VZlV8+7/YUtNVyZRl8v/Ew3XgNAv2ERXRbfZEO5NDSkNXT/7
	KEekj/+BBfrti0eYoXnk75AABX86uoSFohrOGYnZ+q9eJjFZ5RT4sSsPi87PpOV75+XOetMHsb+yc
	mmRkqdy7JEmUUiMHB/gG0Ux07YYERN5YRzvIvWBgBxJ5QyQ53FpleOz1PsQFnJUm2tgfMoWcIFGVa
	IfFrONYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEL8-002wAE-2D;
	Fri, 13 Oct 2023 09:20:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEL5-002w9g-18
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 09:20:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEL4-00041p-5v; Fri, 13 Oct 2023 11:20:10 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEL3-001MXn-Pr; Fri, 13 Oct 2023 11:20:09 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEL3-00EFVr-NV; Fri, 13 Oct 2023 11:20:09 +0200
Date: Fri, 13 Oct 2023 11:20:09 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013092009.GS3359458@pengutronix.de>
References: <20231006092404.74601-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006092404.74601-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_022011_385156_1AC8FC1B 
X-CRM114-Status: GOOD (  34.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] doc: booting-linux: improve bootspec chapter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 06, 2023 at 11:24:05AM +0200, Roland Hieber wrote:
> * use the official name of the spec in the title
> * transform the URL to a link with title
> * mention other well-known search terms (e.g. "blspec", which is used in
>   PTXdist, and "bootspec", which is often used by my colleagues)
> * don't highlight the scripts/kernel-install output as shell code
> * keep the NFS boot paragraph near the SD boot paragraph
> * format 'machine-id' and 'linux-appendroot' explanations as definition
>   lists so they are easily found when looking for them
> * pick some more low-hanging formatting and copy editing fruits (it's
>   harvest season after all)
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst | 43 ++++++++++++++++------------
>  1 file changed, 24 insertions(+), 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 76883862b938..b26ada943a59 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -163,12 +163,12 @@ setting the ``global.boot.default`` variable to ``mmc`` and then calling
>  
>  .. _bootloader_spec:
>  
> -Bootloader Spec
> -^^^^^^^^^^^^^^^
> +Boot Loader Specification
> +^^^^^^^^^^^^^^^^^^^^^^^^^
>  
> -barebox supports booting according to the bootloader spec:
> -
> -https://uapi-group.org/specifications/specs/boot_loader_specification/
> +barebox supports booting according to the `Boot Loader Specification
> +<https://uapi-group.org/specifications/specs/boot_loader_specification/>`__
> +(sometimes also known as *Bootloader Spec*, *bootspec* or *blspec*).
>  
>  It follows another philosophy than the :ref:`boot_entries`. With Boot Entries
>  booting is completely configured in the bootloader. Bootloader Spec Entries
> @@ -209,7 +209,7 @@ Spec Entry on a SD card:
>  
>  The entry can be listed with the ``-l`` option:
>  
> -.. code-block:: sh
> +.. code-block:: none
>  
>    scripts/kernel-install --device=/dev/mmcblk0 -l
>  
> @@ -223,24 +223,29 @@ The entry can be listed with the ``-l`` option:
>  When the SD card shows up as ``mmc1`` in barebox, this entry can be booted with
>  ``boot mmc1`` or by setting ``global.boot.default`` to ``mmc1``.
>  
> -``machine-id`` is an optional key. If the ``global.boot.machine_id`` variable
> -is set to a non-empty value, barebox will only boot the Bootloader Spec Entry
> -whose ``machine-id`` key matches the ``global.boot.machine_id`` variable.
> -All other Bootloader Spec entries will be ignored.
> -
> -A bootloader spec entry can also reside on an NFS server in which case an
> -RFC2224-compatible NFS URI string must be passed to the boot command:
> +A bootloader spec entry can also reside on an NFS server, in which case an
> +`RFC 2224 <https://datatracker.ietf.org/doc/html/rfc2224>`__-compatible NFS URI
> +must be passed to the boot command:
>  
>  .. code-block:: sh
>  
>    boot nfs://nfshost[:port]//path/
>  
> -In addition to the options defined in the original spec barebox understands the
> -``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
> -will automatically append a ``root=`` string to the Linux commandline based on the
> -device where the entry is found on. This makes it possible to use the same rootfs
> -image on different devices without having to specify a different root= option each
> -time.
> +Additional notes about keys in the bootloader spec entries:
> +
> +``machine-id``
> +   This key is optional. If the ``global.boot.machine_id`` variable is set to a
> +   non-empty value, barebox will only boot the Bootloader Spec Entry whose
> +   ``machine-id`` key matches the ``global.boot.machine_id`` variable.  All
> +   other Bootloader Spec entries will be ignored.
> +
> +``linux-appendroot``
> +   This boolean option is understood by Barebox although it is not part of the
> +   original specification. If set to ``true``, barebox will automatically append
> +   a ``root=`` string to the Linux commandline based on the device where the
> +   entry is found on. This makes it possible to use the same rootfs image on
> +   different devices without having to specify a different ``root=`` option each
> +   time.
>  
>  .. _booting_linux_net:
>  
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



Delivery-date: Fri, 10 Feb 2023 18:33:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQXHO-003KFG-QZ
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 18:33:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQXHL-000767-Si
	for lore@pengutronix.de; Fri, 10 Feb 2023 18:33:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=snJJm5Pqwtszr6JxQIF1CMAlED0wEJplKpfgO3ElISA=; b=LJBiNDrTKgADjHb3n8STebaZ3u
	tz4wD2UovrtDfeCZcd2nXMBy+vb+7GsywDmCCPIAXerSEoPAysyPT9JRiFHw4lFxvtAnjSKruepTt
	vgRLTev/cBxoWheyFg1vf0j0+J/p8Q3TNIRW4gzT8/9ytaWvZ8/Lc6Mnbx5NUOofDEK7/CmKEz/lN
	O7gNQUQmjd/6fisMS/w8xpc5tXGiUgKP0n6cRSVnTg2LU21YEW7KeXGxtnjAQDWNcsunGoZjVaP/x
	D3HESb87oPbXfbAh/2KDmKDFX/4qftOt+vaG/SZotv2rcDhdOQ8OEgnRQP2M3xiUU34M0vRImCv5/
	/Dyi7mOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQXFr-006jhm-Vk; Fri, 10 Feb 2023 17:32:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQXFn-006jgn-FK
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 17:32:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1pQXFk-0006xT-BW; Fri, 10 Feb 2023 18:32:04 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1pQXFi-0042TI-H0; Fri, 10 Feb 2023 18:32:03 +0100
Received: from localhost ([127.0.0.1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1pQXFi-002UBS-Ub; Fri, 10 Feb 2023 18:32:03 +0100
Message-ID: <7b2f722fa5b1009235ff25fe8e0c785f6b4f8173.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 18:32:02 +0100
In-Reply-To: <20230210165353.3601175-4-a.fatoum@pengutronix.de>
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
	 <20230210165353.3601175-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (by Flathub.org) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_093207_534450_516A3E44 
X-CRM114-Status: GOOD (  22.25  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 2023-02-10 at 17:53 +0100, Ahmad Fatoum wrote:
> FIT public key is usually passed in via board DT. Usual way to use
> barebox with QEMU Virt however is to use DT supplied by Qemu and apply
> overlay to it. mkimage doesn't generate overlay DTB though. To make
> barbebox Qemu Virt behave like other boards, let's define a dummy DT
> that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
> barebox live device tree.
>=20
> Suggested-by: Jan L=C3=BCbbe <jlu@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

For the whole series:

Tested-by: Jan L=C3=BCbbe <jlu@pengutronix.de>

> ---
> v1 -> v2:
>   - no changes
> ---
>  common/boards/qemu-virt/Makefile            | 2 +-
>  common/boards/qemu-virt/board.c             | 7 ++++++-
>  common/boards/qemu-virt/fitimage-pubkey.dts | 7 +++++++
>  3 files changed, 14 insertions(+), 2 deletions(-)
>  create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
>=20
> diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/M=
akefile
> index 88184e9a7969..00bfdfbda696 100644
> --- a/common/boards/qemu-virt/Makefile
> +++ b/common/boards/qemu-virt/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> =20
>  obj-y +=3D board.o
> -obj-y +=3D overlay-of-flash.dtb.o
> +obj-y +=3D overlay-of-flash.dtb.o fitimage-pubkey.dtb.o
>  ifeq ($(CONFIG_RISCV),y)
>  DTC_CPP_FLAGS_overlay-of-flash.dtb :=3D -DRISCV_VIRT=3D1
>  endif
> diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/bo=
ard.c
> index ec92ae94aec9..2669e9de5a2a 100644
> --- a/common/boards/qemu-virt/board.c
> +++ b/common/boards/qemu-virt/board.c
> @@ -35,10 +35,11 @@ static inline void arm_virt_init(void) {}
>  #endif
> =20
>  extern char __dtb_overlay_of_flash_start[];
> +extern char __dtb_fitimage_pubkey_start[];
> =20
>  static int virt_probe(struct device *dev)
>  {
> -	struct device_node *overlay;
> +	struct device_node *overlay, *pubkey;
>  	void (*init)(void);
> =20
>  	init =3D device_get_match_data(dev);
> @@ -47,6 +48,10 @@ static int virt_probe(struct device *dev)
> =20
>  	overlay =3D of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
>  	of_overlay_apply_tree(dev->of_node, overlay);
> +
> +	pubkey =3D of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
> +	of_merge_nodes(dev->of_node, pubkey);
> +
>  	/* of_probe() will happen later at of_populate_initcall */
> =20
>  	return 0;
> diff --git a/common/boards/qemu-virt/fitimage-pubkey.dts b/common/boards/=
qemu-virt/fitimage-pubkey.dts
> new file mode 100644
> index 000000000000..497799fa4b60
> --- /dev/null
> +++ b/common/boards/qemu-virt/fitimage-pubkey.dts
> @@ -0,0 +1,7 @@
> +/dts-v1/;
> +
> +#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#include CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#endif
> +
> +/{ };

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



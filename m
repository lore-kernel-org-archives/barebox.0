Delivery-date: Thu, 21 May 2026 14:28:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ2Vt-002Eeu-2y
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 14:28:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ2Vt-0006rv-7e
	for lore@pengutronix.de; Thu, 21 May 2026 14:28:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=DXyJ+b3ifsvMon11tTzKQv/aG5C83cTXRIvVWBXU08k=; b=UPkceJQ4tqnWntF9JL+4grfiER
	mDQZpfWX6dhH9Alw8lYlhwOFh7Z+9cUJQ747970CEV6gzE/I5YXjxkznJQoIey+B6C5eKcu0QkPq4
	6Eea3WtuzKDVusNyMzp2IfVfgZgWvfsJpAg3LjyQ+e2Y+8yhJeQsZjZ/fuxjz5KeoLkLqfah09xuF
	/s6R0l+DaeMlduoZDf9GJdWqEhDx3nUUr5zzI4K5x6icCZhShDdezBmbQW0eX9VGWVnkkGuCvznX4
	2K8DtDN2AfpXCcIDh8Q9Ea04tcevQIz/HrQS0SMjisiyGnobOfKEDTPflsPqYVuOCe4uwAt/V/7Am
	7/mjuaCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2Ue-00000007j5K-3Eyh;
	Thu, 21 May 2026 12:27:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2Uc-00000007j4U-3RLB
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 12:27:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ2Ub-0006e1-65; Thu, 21 May 2026 14:27:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ2Ua-0016Np-1p;
	Thu, 21 May 2026 14:27:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ2Ub-00000004VNh-09rq;
	Thu, 21 May 2026 14:27:13 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Fabian Pfitzner" <f.pfitzner@pengutronix.de>
In-Reply-To: <20260520-fpf-bootsource-instance-index-v1-2-29942f0e8f2f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 12:27:12 +0000
Message-Id: <E1wQ2Ub-00000004VNh-09rq@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_052714_861248_A1413A73 
X-CRM114-Status: GOOD (  21.86  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Fabian
 Pfitzner <f.pfitzner@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] arch: arm: imx: detect secondary boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-20 10:33, Fabian Pfitzner wrote:
> Integrate support to detect secondary boot on imx machines.
> Copy the logic for detection from the uboot-imx project[1].
>=20
> The information will be stored in the `bootsource_instance_index`
> variable.
>=20
> [1] https://github.com/nxp-imx/uboot-imx/blob/99518e6b6f20cb6a2bf19115e35=
5db9f58100af8/arch/arm/mach-imx/imx8m/soc.c#L792
>=20
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c | 52 ++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 52 insertions(+)
>=20
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 3fea22d05f3bfdf2fe9caa6767e1c7c5ea3ced00..a35a1acc2e71231236d3dd500=
8523f6c66912000 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -26,6 +26,8 @@
> =20
>  #include <soc/fsl/fsl_udc.h>
> =20
> +int imx8m_detect_secondary_image_boot(void);

It should be either static without forward declaration or exported with
the declaration in a header file.

> +
>  static void
>  imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
>  {
> @@ -35,6 +37,10 @@ imx_boot_save_loc(void (*get_boot_source)(enum bootsou=
rce *, int *))
>  	get_boot_source(&src, &instance);
> =20
>  	bootsource_set(src, instance);
> +
> +	int index =3D imx8m_detect_secondary_image_boot();

You assume you are running on i.MX8M here which is not necessarily the
case.

> +
> +	bootsource_set_instance_index(index);
>  }
> =20
> =20
> @@ -756,3 +762,49 @@ void imx8mn_get_boot_source(enum bootsource *src, in=
t *instance)
> =20
>  void imx8mn_boot_save_loc(void)
>  	__alias(imx8mp_boot_save_loc);
> +
> +int imx8m_detect_secondary_image_boot(void)
> +{
> +	u32 *rom_log_addr =3D (u32 *)0x9e0;
> +	u32 *rom_log;
> +	u8 event_id;
> +	int i, boot_secondary =3D 0;
> +
> +	/* If the ROM event log pointer is not valid. */
> +	if (*rom_log_addr < 0x900000 || *rom_log_addr >=3D 0xb00000 ||
> +	    *rom_log_addr & 0x3)
> +		return -EINVAL;

We have imx8m_get_bootrom_log() which handles different cases like we
are in PBL/EL3 or in barebox proper. Why not use it here?

I wonder how this works at all because you are derefencing the ROM which
is inside the faulting zero page. I would assume barebox crashes here
when this is called from barebox proper.

> +
> +	/* Parse the ROM event ID version 2 log */
> +	rom_log =3D (u32 *)(uintptr_t)(*rom_log_addr);
> +	for (i =3D 0; i < 128; i++) {
> +		event_id =3D rom_log[i] >> 24;

We already have defines for this, see arch/arm/mach-imx/bootrom-cmd.c

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



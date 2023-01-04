Delivery-date: Wed, 04 Jan 2023 08:07:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCxsP-001ClD-9O
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 08:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCxsN-0004Sj-AF
	for lore@pengutronix.de; Wed, 04 Jan 2023 08:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rPfkARmdlB2ViXZwKpOEDX+sFsZh783uIEH+B1kA+yE=; b=EQXHcBLZy1DAQTO+0lmTu78hNi
	IXTgakC2NNruHB1YW6EtCSBQI/07jqKYfe26goVhUQ6UvGGMOex3nuRjz8HtfySUQx6wEkZNvlA+C
	FxHn6y7lrfceoLhXPWtJwSFv3sGJBDsnm+/JI6lyjcMDDJ5WTr1pGKowafp0v9bckrTT1LyKChFfF
	LsJyZ7tRCKTqnCWt9J9LriuxsvYaFx/dBIKU8FuQaeaWV8O92fcTjfXcevvZ7WYLashmaw4zH0hth
	dPMzRBxq3lMugOkZkwk79kyWnvjw5v7hUxrYaF8ye3tDKZFciCkBe2iWkcQCtzHfRBfX0JwipFc9F
	dSLNIjSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCxqC-007JR6-HF; Wed, 04 Jan 2023 07:05:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCxp9-007JHc-D5
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 07:04:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1pCxp3-0003yO-OZ; Wed, 04 Jan 2023 08:04:25 +0100
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1pCxp3-003KM8-1t; Wed, 04 Jan 2023 08:04:25 +0100
References: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAUER Bernd <bernd.bauer@ses-imagotag.com>, barebox@lists.infradead.org
Date: Wed, 04 Jan 2023 08:00:52 +0100
In-reply-to: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
Message-ID: <6rlemi6arq.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_230431_516131_D5DF60C7 
X-CRM114-Status: GOOD (  28.86  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: i.MX8M: add EVK barebox installation
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

just a small copied'n'pasted typo:

On Tue, Jan 03 2023 at 22:54 +0100, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> The barebox i.MX images have a preamble that pads the i.MX header to the
> offset expected by the BootROM. This allows writing barebox images
> directly to offset 0 on SD-Cards and eMMC user area. For some i.MX8M,
> these images can't be directly written to eMMC boot partitions and
> instead require special handling. Add a note about this to the
> documentation.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/imx/nxp-imx8mm-evk.rst | 18 ++++++++++++++++
>  Documentation/boards/imx/nxp-imx8mn-evk.rst | 24 +++++++++++++++++++++
>  Documentation/boards/imx/nxp-imx8mp-evk.rst | 24 +++++++++++++++++++++
>  3 files changed, 66 insertions(+)
>
> diff --git a/Documentation/boards/imx/nxp-imx8mm-evk.rst b/Documentation/=
boards/imx/nxp-imx8mm-evk.rst
> index c3cd35ae38a2..7ed7459c08a6 100644
> --- a/Documentation/boards/imx/nxp-imx8mm-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mm-evk.rst
> @@ -69,3 +69,21 @@ board for serial download mode as printed on the PCB. =
You can start barebox with
>  the imx-usb-loader tool that comes with barebox like this:
>=20=20
>  ./scripts/imx/imx-usb-loader images/barebox-nxp-imx8mm-evk.img
> +
> +Installing barebox
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
> +consult the eMMC ext_csd register to determine whether to boot
> +from the active eMMC boot partition or from the user area.
> +
> +The same barebox image written to the start of the SD-Card can
> +be written to the start of the eMMC user area. Power-fail installation
> +to the eMMC boot partition requires special handling:
> +
> +  - The barebox image must be written to the inactive boot partition,
> +    then afterwards, the newly written boot partition is activated
> +    (This is controlled by the barebox ``mmcX.boot`` variable).
> +
> +The ``barebox_update`` command takes care of this and need just be
> +supplied a barebox image as argument.
> diff --git a/Documentation/boards/imx/nxp-imx8mn-evk.rst b/Documentation/=
boards/imx/nxp-imx8mn-evk.rst
> index b920e22d33e9..4c07b949dafb 100644
> --- a/Documentation/boards/imx/nxp-imx8mn-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mn-evk.rst
> @@ -58,3 +58,27 @@ Build barebox
>=20=20
>   make imx_v8_defconfig
>   make
> +
> +Installing barebox
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
> +consult the eMMC ext_csd register to determine whether to boot
> +from the active eMMC boot partition or from the user area.
> +
> +The same barebox image written to the start of the SD-Card can
> +be written to the start of the eMMC user area. Power-fail installation
> +to the eMMC boot partition requires special handling:
> +
> +  - The barebox image must be written to the inactive boot partition,
> +    then afterwards, the newly written boot partition is activated
> +    (This is controlled by the barebox ``mmcX.boot`` variable).
> +
> +  - The barebox image includes a 32KiB preamble that allows the image
> +    to be directly writable to the start of the SD-Card or eMMC user are=
a.
> +    Unlike older i.MX8M, the i.MX8MN BootROM expects the bootloader to n=
ot
> +    start as an offset when booting from eMMC boot partitions, thus the =
first

s/start as an offset/start at an offset/

> +    32KiB must be stripped.
> +
> +The ``barebox_update`` command takes care of this and need just be
> +supplied a barebox image as argument.
> diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/=
boards/imx/nxp-imx8mp-evk.rst
> index 1074992f2f88..60e9f9eaea5d 100644
> --- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
> @@ -66,3 +66,27 @@ Boot Configuration
>  The NXP i.MX8MP-EVK board has four switches responsible for configuring
>  bootsource/boot mode. The settings for the different boot sources are
>  printed on the board.
> +
> +Installing barebox
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +When the EVK is strapped to boot from eMMC, the i.MX8M bootrom will
> +consult the eMMC ext_csd register to determine whether to boot
> +from the active eMMC boot partition or from the user area.
> +
> +The same barebox image written to the start of the SD-Card can
> +be written to the start of the eMMC user area. Power-fail installation
> +to the eMMC boot partition requires special handling:
> +
> +  - The barebox image must be written to the inactive boot partition,
> +    then afterwards, the newly written boot partition is activated
> +    (This is controlled by the barebox ``mmcX.boot`` variable).
> +
> +  - The barebox image includes a 32KiB preamble that allows the image
> +    to be directly writable to the start of the SD-Card or eMMC user are=
a.
> +    Unlike older i.MX8M, the i.MX8MP BootROM expects the bootloader to n=
ot
> +    start as an offset when booting from eMMC boot partitions, thus the =
first

s/start as an offset/start at an offset/

Best regards
Ulrich


> +    32KiB must be stripped.
> +
> +The ``barebox_update`` command takes care of this and need just be
> +supplied a barebox image as argument.
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



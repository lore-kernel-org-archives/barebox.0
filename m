Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuVF-0002pD-TB
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 12:35:10 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M3u86-1d6lpk2Jpi-00rVYE for
 <barebox@lists.infradead.org>; Fri, 29 Sep 2017 14:29:26 +0200
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-9-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <a483bc68-8d0a-7d27-377e-e1941ddc4161@rempel-privat.de>
Date: Fri, 29 Sep 2017 14:29:21 +0200
MIME-Version: 1.0
In-Reply-To: <20170928231249.4158-9-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1417229425775890872=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 08/10] RISC-V: add erizo_generic_defconfig
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1417229425775890872==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UUjJsCbiqdlqBv69stQaB2MclCtsVHrh1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UUjJsCbiqdlqBv69stQaB2MclCtsVHrh1
Content-Type: multipart/mixed; boundary="aI3311qBVOPiH1QSNoe7MqCOJX2HoarrC";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <a483bc68-8d0a-7d27-377e-e1941ddc4161@rempel-privat.de>
Subject: Re: [RFC v4 08/10] RISC-V: add erizo_generic_defconfig
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-9-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-9-antonynpavlov@gmail.com>

--aI3311qBVOPiH1QSNoe7MqCOJX2HoarrC
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/configs/erizo_generic_defconfig | 55 ++++++++++++++++++++++=
++++++++
>  1 file changed, 55 insertions(+)
>=20
> diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/co=
nfigs/erizo_generic_defconfig
> new file mode 100644
> index 000000000..8ccad8934
> --- /dev/null
> +++ b/arch/riscv/configs/erizo_generic_defconfig
> @@ -0,0 +1,55 @@
> +CONFIG_32BIT=3Dy
> +CONFIG_BUILTIN_DTB=3Dy
> +CONFIG_BUILTIN_DTB_NAME=3D"erizo_generic"
> +# CONFIG_GLOBALVAR is not set
> +CONFIG_TEXT_BASE=3D0x80000000
> +CONFIG_MEMORY_LAYOUT_FIXED=3Dy
> +CONFIG_STACK_BASE=3D0x800e0000
> +CONFIG_STACK_SIZE=3D0x20000
> +CONFIG_MALLOC_BASE=3D0x80100000
> +CONFIG_MALLOC_SIZE=3D0x100000
> +CONFIG_MALLOC_TLSF=3Dy
> +CONFIG_PANIC_HANG=3Dy
> +CONFIG_HUSH_FANCY_PROMPT=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +# CONFIG_ERRNO_MESSAGES is not set
> +# CONFIG_TIMESTAMP is not set
> +# CONFIG_BOOTM is not set
> +# CONFIG_ENV_HANDLING is not set
> +CONFIG_POLLER=3Dy
> +CONFIG_DEBUG_LL=3Dy
> +CONFIG_LONGHELP=3Dy
> +CONFIG_CMD_IOMEM=3Dy
> +CONFIG_CMD_IMD=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_LOADY=3Dy
> +CONFIG_CMD_CMP=3Dy
> +CONFIG_CMD_MD5SUM=3Dy
> +CONFIG_CMD_SHA1SUM=3Dy
> +CONFIG_CMD_MSLEEP=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_MEMTEST=3Dy
> +CONFIG_CMD_MM=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_CMD_I2C=3Dy
> +CONFIG_CMD_SPI=3Dy
> +CONFIG_CMD_OF_DUMP=3Dy
> +CONFIG_CMD_TIME=3Dy
> +CONFIG_CMD_DHRYSTONE=3Dy
> +CONFIG_OFDEVICE=3Dy
> +CONFIG_DRIVER_SERIAL_NS16550=3Dy
> +CONFIG_DRIVER_SPI_GPIO=3Dy
> +CONFIG_I2C=3Dy
> +CONFIG_I2C_GPIO=3Dy
> +CONFIG_MTD=3Dy
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_M25P80=3Dy
> +CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
> +CONFIG_EEPROM_AT25=3Dy
> +CONFIG_EEPROM_AT24=3Dy

hm... none of it seems to be in devicetree. Do you need this eeproms?

> +CONFIG_GPIO_GENERIC_PLATFORM=3Dy
> +# CONFIG_PINCTRL is not set
> +CONFIG_DIGEST_CRC32_GENERIC=3Dy
>=20


--=20
Regards,
Oleksij


--aI3311qBVOPiH1QSNoe7MqCOJX2HoarrC--

--UUjJsCbiqdlqBv69stQaB2MclCtsVHrh1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnOPKEACgkQHwImuRkmbWlAYQEAjwffnnUyLlbafKzFFZW/T/XG
6XCYfZ2TNFBM7/1UYfEBAIUCpeIiD6G0NMJZnUG+KmFOM32wuySlSBrZCAFdQzbT
=o4Yb
-----END PGP SIGNATURE-----

--UUjJsCbiqdlqBv69stQaB2MclCtsVHrh1--


--===============1417229425775890872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1417229425775890872==--

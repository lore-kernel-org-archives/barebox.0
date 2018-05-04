Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEXPh-00010Z-NT
 for barebox@lists.infradead.org; Fri, 04 May 2018 09:54:08 +0000
References: <20180429130907.20506-1-linux@rempel-privat.de>
 <20180429130907.20506-4-linux@rempel-privat.de>
 <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
 <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <c55d956a-84e3-0a6c-0505-c5f0d722a9ae@rempel-privat.de>
Date: Fri, 4 May 2018 11:53:48 +0200
MIME-Version: 1.0
In-Reply-To: <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5490061872632588942=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 3/7] bootm: add kexec ELF support
To: Antony Pavlov <antonynpavlov@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5490061872632588942==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="dyt0IowS97OaMeLQDRgWLwM8ph3ihlpWI"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dyt0IowS97OaMeLQDRgWLwM8ph3ihlpWI
Content-Type: multipart/mixed; boundary="WwZ8u1TOP1DalJtdYdk6uOjNd2Y1tdYON";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <c55d956a-84e3-0a6c-0505-c5f0d722a9ae@rempel-privat.de>
Subject: Re: [RFC PATCH 3/7] bootm: add kexec ELF support
References: <20180429130907.20506-1-linux@rempel-privat.de>
 <20180429130907.20506-4-linux@rempel-privat.de>
 <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
 <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>
In-Reply-To: <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>

--WwZ8u1TOP1DalJtdYdk6uOjNd2Y1tdYON
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 04.05.2018 um 12:08 schrieb Antony Pavlov:
> On Fri, 4 May 2018 07:54:08 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>=20
>> On Sun, Apr 29, 2018 at 03:09:03PM +0200, Oleksij Rempel wrote:
>>> +static int do_bootm_elf(struct image_data *data)
>>> +{
>>> +	kexec_load_bootm_data(data);
>>> +
>>> +	reboot(LINUX_REBOOT_CMD_KEXEC, data);
>>> +
>>> +	return -ERESTARTSYS;
>>> +}
>>> +
>>
>> I can't really judge this series. This is the only thing I stumbled
>> upon: I see no reason to name the architecture specific kexec function=

>> 'reboot'. I would expect some kexec specific name, like arch_kexec or
>> similar.
>>
>=20
> This reboot function is copy-n-paste from linux kernel reboot syscall (=
see linux/kernel/reboot.c
> for details).
> At the moment there is only one constant for reboot()'s first argument =
(LINUX_REBOOT_CMD_KEXEC),
> so it's reasonable to elimenate this first argument and rename function=
 to kexec_reboot().

amy be better to rename it to kexec_arch or kexec_mach. kexec_reboot is
kind if misleading

--=20
Regards,
Oleksij


--WwZ8u1TOP1DalJtdYdk6uOjNd2Y1tdYON--

--dyt0IowS97OaMeLQDRgWLwM8ph3ihlpWI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlrsLa0ACgkQHwImuRkmbWkI0gD/Z9YeVPKvlH6z7Yt9aY1IVmXF
t8WtJp/j8vATh7H1n/0A/0VNj7hEo+FnRZwjGq+jBGx/K6I8x8nZ7DoNC2vmfJnn
=LLcY
-----END PGP SIGNATURE-----

--dyt0IowS97OaMeLQDRgWLwM8ph3ihlpWI--


--===============5490061872632588942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5490061872632588942==--

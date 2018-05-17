Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJFtz-0002E9-1y
 for barebox@lists.infradead.org; Thu, 17 May 2018 10:12:52 +0000
References: <20180516164233.27581-1-linux@rempel-privat.de>
 <20180516164233.27581-6-linux@rempel-privat.de>
 <20180517095603.rmr3gdh2kgjkqkgz@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <57e4a17b-9d1e-ae10-9985-6b0e9eacba7e@rempel-privat.de>
Date: Thu, 17 May 2018 12:07:29 +0200
MIME-Version: 1.0
In-Reply-To: <20180517095603.rmr3gdh2kgjkqkgz@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3158975239856689017=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 05/10] MIPS: add kexec ELF loading support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3158975239856689017==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B8zC1YQ7IPdx0rT1qlRkPjLfcsaTQIRC1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--B8zC1YQ7IPdx0rT1qlRkPjLfcsaTQIRC1
Content-Type: multipart/mixed; boundary="0yfcUt6PqOnBWA2wTQLgEjzv9iFckqcb9";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>
Message-ID: <57e4a17b-9d1e-ae10-9985-6b0e9eacba7e@rempel-privat.de>
Subject: Re: [PATCH v1 05/10] MIPS: add kexec ELF loading support
References: <20180516164233.27581-1-linux@rempel-privat.de>
 <20180516164233.27581-6-linux@rempel-privat.de>
 <20180517095603.rmr3gdh2kgjkqkgz@pengutronix.de>
In-Reply-To: <20180517095603.rmr3gdh2kgjkqkgz@pengutronix.de>

--0yfcUt6PqOnBWA2wTQLgEjzv9iFckqcb9
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 17.05.2018 um 11:56 schrieb Sascha Hauer:
> On Wed, May 16, 2018 at 06:42:28PM +0200, Oleksij Rempel wrote:
>> From: Antony Pavlov <antonynpavlov@gmail.com>
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
>> ---
>>  arch/mips/include/asm/elf.h        |   8 +-
>>  arch/mips/lib/Makefile             |   4 +
>>  arch/mips/lib/kexec-mach-generic.c |  21 +++
>>  arch/mips/lib/kexec-mips.c         | 307 ++++++++++++++++++++++++++++=
+++++++++
>>  arch/mips/lib/machine_kexec.h      |  21 +++
>>  arch/mips/lib/relocate_kernel.S    | 108 +++++++++++++
>>  6 files changed, 468 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/mips/lib/kexec-mach-generic.c
>>  create mode 100644 arch/mips/lib/kexec-mips.c
>>  create mode 100644 arch/mips/lib/machine_kexec.h
>>  create mode 100644 arch/mips/lib/relocate_kernel.S
>>
>> +int kexec_load(struct image_data *data, void *entry,
>> +	       unsigned long nr_segments,
>> +	       struct kexec_segment *segments)
>> +{
>> +	int i;
>> +	struct resource *elf;
>> +	resource_size_t start;
>> +	LIST_HEAD(elf_segments);
>> +
>> +	for (i =3D 0; i < nr_segments; i++) {
>> +		resource_size_t mem =3D (resource_size_t)segments[i].mem;
>> +
>> +		elf =3D create_resource("elf segment",
>> +			mem, mem + segments[i].memsz - 1);
>> +
>> +		list_add_used_region(&elf->sibling, &elf_segments);
>> +	}
>> +
>> +	if (check_room_for_elf(&elf_segments)) {
>> +		pr_err("ELF can't be loaded!\n");
>> +		return -ENOSPC;
>> +	}
>> +
>> +	start =3D dcheck_res(&elf_segments);
>> +
>> +	/* relocate_new_kernel() copy by register (4 or 8 bytes)
>> +	   so start address must be aligned to 4/8 */
>> +	start =3D (start + 15) & 0xfffffff0;
>> +
>> +	for (i =3D 0; i < nr_segments; i++) {
>> +		segments[i].mem =3D (void *)(phys_to_virt((unsigned long)segments[i=
].mem));
>> +		memcpy(phys_to_virt(start), segments[i].buf, segments[i].bufsz);
>> +		request_sdram_region("kexec relocatable segment",
>> +			(unsigned long)phys_to_virt(start),
>> +			(unsigned long)segments[i].bufsz);
>=20
> The return value of request_sdram_region should be checked and of cours=
e
> the resource should be used after having checked the return value, not
> before. Same for the other calls to request_sdram_region.

Will it be enough for initial inclusion?

--=20
Regards,
Oleksij


--0yfcUt6PqOnBWA2wTQLgEjzv9iFckqcb9--

--B8zC1YQ7IPdx0rT1qlRkPjLfcsaTQIRC1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJa/VRhAAoJEHUDokh1SO+0D4kIAI+hb8B7Sh7v5evkZ1y1JoQY
fouOl3s2TRv8Ess/bSqLoFR5iKaAmv8DnjFl24J3COlvZSovvou663yxEPsQtgev
f4lNd8y11IEucTjxKsESaqFewgga/od5OLmmT0ZHYVLDSm4eVcDJsZbROZpLXvl8
VG92aY3HSl+MjB+qbs6MwJMoekkWDdiyXrfTFclH9hUY4MkGOts8hym0XkypnmjP
+RwTC+4gkpVVtmk8qO0S/Fs6VzPol8FHVKj8P5l2ieISK5U8jARFCIUU/en0ojMY
OUplQAJNGBDQbi8rE6WYs0BwbyoPALs+l3wpj+6pfijvodo4XNSPyf/1RvTSChc=
=8lGG
-----END PGP SIGNATURE-----

--B8zC1YQ7IPdx0rT1qlRkPjLfcsaTQIRC1--


--===============3158975239856689017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3158975239856689017==--

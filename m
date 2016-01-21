Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arcturus.kleine-koenig.org ([78.47.169.190])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMCFG-0002wU-5b
 for barebox@lists.infradead.org; Thu, 21 Jan 2016 10:13:39 +0000
References: <1453277701-10367-1-git-send-email-uwe@kleine-koenig.org>
 <1453318040.4474.287.camel@rtred1test09.kymeta.local>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Message-ID: <56A0AF31.3040904@kleine-koenig.org>
Date: Thu, 21 Jan 2016 11:13:05 +0100
MIME-Version: 1.0
In-Reply-To: <1453318040.4474.287.camel@rtred1test09.kymeta.local>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5769803373512583160=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] kwboot: do a filetype check before sending the image
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5769803373512583160==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="rVPfk2MONQnMb02G8GlUFCK2VLlG4aP21"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--rVPfk2MONQnMb02G8GlUFCK2VLlG4aP21
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Trent,

On 01/20/2016 08:27 PM, Trent Piepho wrote:
> On Wed, 2016-01-20 at 09:15 +0100, Uwe Kleine-K=C3=B6nig wrote:
>> The images that can be sent to a Marvell CPU have a fixed format. Do
>> some sanity checks before actually sending an image for easier diagnos=
is
>> of broken files.
>>
>> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
>> ---
>> Changes since (implicit) v1, sent with
>> Message-Id: 1453276010-4669-1-git-send-email-uwe@kleine-koenig.org:
>>
>>  - whitespace fix
>>  - error out if a problem is detected
>>  - add a commit log
>>
>>  scripts/kwboot.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>>  1 file changed, 55 insertions(+)
>>
>> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
>> index 46328d8ed006..06e58f6a7e3b 100644
>> --- a/scripts/kwboot.c
>> +++ b/scripts/kwboot.c
>> @@ -546,6 +546,59 @@ out:
>>  	return rc;
>>  }
>> =20
>> +static int
>> +kwboot_check_image(unsigned char *img, size_t size)
>=20
> Make it const unsigned char?

sure

>> +{
>> +	size_t i;
>> +	size_t header_size, image_size;
>> +	unsigned char csum =3D 0;
>> +
>> +	switch (img[0x0]) {
>> +		case 0x5a: /* SPI/NOR */
>> +		case 0x69: /* UART0 */
>> +		case 0x78: /* SATA */
>> +		case 0x8b: /* NAND */
>> +		case 0x9c: /* PCIe */
>> +			break;
>> +		default:
>> +			printf("Unknown boot source: 0x%hhx\n", img[0x0]);
>> +			goto err;
>> +	}
>> +
>> +	if (img[0x8] !=3D 1) {
>> +		printf("Unknown version: 0x%hhx\n", img[0x8]);
>> +		goto err;
>> +	}
>=20
> If you're verifying the image, maybe also check that size > 8 before
> reading img[0x8]?  Otherwise you could crash instead of rejecting a too=

> small image.

good catch

> And having compared the version tag to 1, couldn't you then cast img
> into a struct main_hdr_v1 *?  That would avoid all the hard coded magic=

> offsets in the rest of the code.  Unless img isn't aligned?

=2E.. or the build machine is big endian. (Note in this case kwbimage is
broken, too. And given that catching such an error independently is IMHO
a feature.) I'd prefer to keep it as is at least for now for a few
reasons (endianess, alignment, bigger reshuffling of code because said
struct is defined in a different .c file)

>> +
>> +	image_size =3D img[0x4] | (img[0x5] << 8) |
>> +		(img[0x6] << 16) | (img[0x7] << 24);
>=20
> struct main_hdr_v1 *hdr =3D (const struct main_hdr
> image_size =3D le32_to_cpu(hdr->blocksize);
> or if unaligned:
> image_size =3D get_unaligned_le32(&img[0x4]);

Of the three offered versions I'd prefer mine ... It's simple and easy
to verify when comparing to the reference manual.

>> +
>> +	header_size =3D (img[0x9] << 16) | img[0xa] | (img[0xb] << 8);
>=20
> header_size =3D hdr->headersz_msb << 16 | le16_to_cpu(hdr->headersz_lsb=
);
>=20
>> +
>> +	if (header_size + image_size !=3D size) {
>> +		printf("Size mismatch (%zu + %zu !=3D %zu)\n",
>> +		       header_size, image_size, size);
>> +		goto err;
>> +	} else {
>=20
> Don't really need the else block here since the failure above exits,
> just like the two failure checks before this one.

right, this is a relict of v1 where I didn't jump in the first block.

>> +		for (i =3D 0; i < header_size; ++i)
>> +			csum +=3D img[i];
>=20
> csum =3D image_checksum8(img, header_size)

This is again in kwbimage.c

Best regards
Uwe


--rVPfk2MONQnMb02G8GlUFCK2VLlG4aP21
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWoK81AAoJEMH8FHityuwJpsgH/1pX4EZF03jgEYT0/Qn2YhwE
sJ1KCS8/Pw6AIiI0uxJEg2mgFkAhoEtavkusJ+oqpVttiF2xyZp9+1CgDT4gvg0Y
Z1oriQK+ysCIcbGR1hf1w1Xy4O6f2UxB3jU14mfgQlH0Twe3xSB+5nT09HYnEY/n
Dr5NX7eBCPZWo3e8Rez3O/ERxJQFsL6BbQfZFqRPlqZBq1kr9tQeflfW2LtzHRC/
+bylo8i3yaU/J3EIFQlTqx43CKscJFmUa72ZjxcMxings36XzSntnQdBkoYAuRI+
zSvidMPVzgunlr9sjO3KJsvZpYpTZEvsR1xqdkQHBZ6I9dU7IFv5ukq/HmKxEWU=
=a/DW
-----END PGP SIGNATURE-----

--rVPfk2MONQnMb02G8GlUFCK2VLlG4aP21--


--===============5769803373512583160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5769803373512583160==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGqVE-0006SW-Fv
	for barebox@lists.infradead.org; Tue, 25 May 2010 09:32:49 +0000
Message-ID: <4BFB9938.5020001@pengutronix.de>
Date: Tue, 25 May 2010 11:32:40 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1274776657-6117-1-git-send-email-eric@eukrea.com>	<1274776657-6117-2-git-send-email-eric@eukrea.com>
	<1274776657-6117-3-git-send-email-eric@eukrea.com>
	<4BFB9224.9030507@pengutronix.de> <4BFB95C3.5090802@eukrea.com>
In-Reply-To: <4BFB95C3.5090802@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0040192412=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 3/6] commands: add i2c commands
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0040192412==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigEDB2BB5F839786FE0E51A07F"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigEDB2BB5F839786FE0E51A07F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey,

Eric B=C3=A9nard wrote:
> Le 25/05/2010 11:02, Marc Kleine-Budde a =C3=A9crit :
>>> +        case 'b':
>>> +            adapter =3D i2c_get_adapter(simple_strtoul(optarg, NULL,=
 0));
>>
>> I'd just save the optarg in a variable...
>>
>>> +            break;
>>> +        case 'v':
>>> +            verbose =3D 1;
>>> +            break;
>>> +        }
>>> +    }
>>> +
>>> +    count =3D argc - optind;
>>> +
>>> +    if ((addr<  0) || (reg<  0) || (count =3D=3D 0) || (addr>  0x7F)=
)
>>> +        return COMMAND_ERROR_USAGE;
>>> +
>>> +    if (!adapter)
>>> +        adapter =3D i2c_get_adapter(0);
>>
>> and use it here. Because if you specify an invalid adapter number,
>> adapter 0 will be used silently (if it exists).
>>
> you're right, in fact I should exit in the case 'b' handling if the
> adapter doesn't exist, that will be simpler.

ACK, I'd do that here.....

int adapter_number =3D 0;

=2E..

	case 'b':
		adapter_number =3D simple_strtoul(optarg, NULL, 0);
		break;
=2E..

adapter =3D i2c_get_adapter(adapter_number);
if (!adapter) {
	printf("adapter %d not found\n", adapter_number);
	return -ENODEV
}

>>> +    if (!adapter)
>>> +        return -ENODEV;
>>> +
>>> +    client.adapter =3D adapter;
>>> +    client.addr =3D addr;
>>> +
>>> +    buf =3D xmalloc(count);
>>> +    for (i =3D 0; i<  count; i++)
>>> +        *(buf + i) =3D (char) simple_strtol(argv[optind+i], NULL, 16=
);

codingstyle...no space after the cast, but before and after the "+"

(char)simple_strtol(argv[optind + i], NULL, 16);

>>> +
>>> +    ret =3D i2c_write_reg(&client, reg, buf, count);
>>> +    if (ret !=3D count)
>>> +        goto out;
>>
>> better set a return value indicating an error here...
> ret should already be set by i2c_write_reg so it there is no error, I
> can simply set ret to 0.

ACK

>>
>>> +
>>> +    if (verbose) {
>>> +        printf("wrote %i bytes starting at reg 0x%02x to i2cdev
>>> 0x%02x on bus %i\n",
>>> +            count, reg, addr, adapter->nr);
>>> +        for (i =3D 0; i<  count; i++)
>>> +            printf("0x%02x ", *(buf + i));
>>> +        printf("\n");
>>> +    }
>>> +
>>> +out:
>>> +    free(buf);
>>> +    return 0;
>>
>> ... and return it here.
>=20
> yes, that should be return ret
>=20
> Eric

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigEDB2BB5F839786FE0E51A07F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkv7mT0ACgkQjTAFq1RaXHMCcgCfdHyka2pskikX8qKTQ0FNmtHS
8/sAniUQQY3PJnMo5kbswpnJ+TNHP4yL
=5KjR
-----END PGP SIGNATURE-----

--------------enigEDB2BB5F839786FE0E51A07F--


--===============0040192412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0040192412==--

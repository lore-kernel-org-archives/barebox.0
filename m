Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmlDc-0001cI-L2
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 19:31:06 +0000
References: <479189478.116665.1533036012752@mail.vodafone.de>
 <20180806181528.c5f7rsa2sclth3ww@pengutronix.de>
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <34f2c034-7f30-de15-93de-54f9a86e93a0@arcor.de>
Date: Mon, 6 Aug 2018 21:30:30 +0200
MIME-Version: 1.0
In-Reply-To: <20180806181528.c5f7rsa2sclth3ww@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3724743332298088856=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: root= kernel cmdline parameter
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3724743332298088856==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="f8IFDxof3mDT2T9N33PmXUIpI3I0rtgtj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--f8IFDxof3mDT2T9N33PmXUIpI3I0rtgtj
Content-Type: multipart/mixed; boundary="QrBIgmvt7v63BcNUHVenEZXAmB1MzBoq6";
 protected-headers="v1"
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <34f2c034-7f30-de15-93de-54f9a86e93a0@arcor.de>
Subject: Re: root= kernel cmdline parameter
References: <479189478.116665.1533036012752@mail.vodafone.de>
 <20180806181528.c5f7rsa2sclth3ww@pengutronix.de>
In-Reply-To: <20180806181528.c5f7rsa2sclth3ww@pengutronix.de>

--QrBIgmvt7v63BcNUHVenEZXAmB1MzBoq6
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 08/06/2018 08:15 PM, Uwe Kleine-K=C3=B6nig wrote:
> On Tue, Jul 31, 2018 at 01:20:12PM +0200, Giorgio Dal Molin wrote:
>> Hi all,
>>
>> I'm trying to find out the best method to define the root=3D
>> parameter when booting the linux kernel from barebox.
>>
>> My system boots from an sd card partitioned with a GPT.
>> The sd card has two independent set of partitions with
>> the following labels:
>>
>> 1)   boot_1 + rootfs_1
>> 2)   boot_2 + rootfs_2
>>
>> for redondance in case one set gets damaged while updating.
>>
>> 'boot_1' is formatted with ext4 and contains the kernel + dtb images
>> for the userland in 'rootfs_1'; and the same for 'boot_2' and 'rootfs_=
2'.
>>
>> Currently I hardcode the 'root' parameter to '/dev/mmcblk0p3' or
>> '/dev/mmcblk0p4' corresponding to the kernel in 'boot_1' or
>> 'boot_2' and it actually works but is there a better way to do
>> this ?
>>
>> Using the global var. 'bootm.appendroot' does not work because the
>> userland image is not in the same partition as the kernel.
>=20
> What is the blocker to put kernel and dtb in rootfs_X?
>=20
> Best regards
> Uwe
>=20
Hi,

thank you for answering.

I would like to keep kernel and userland separate to be flexible about
how to pack the userland. The kernel supports more filesystems as the
bootloader so I prefer to keep kernel+dtb in a small ext? partition and
the rest in a separate part.

giorgio


--QrBIgmvt7v63BcNUHVenEZXAmB1MzBoq6--

--f8IFDxof3mDT2T9N33PmXUIpI3I0rtgtj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - https://www.enigmail.net/

iQIzBAEBCAAdFiEE9QinPTH0TNNuN3rvP2UgThicmOcFAltood8ACgkQP2UgThic
mOeldhAAv9oD4iHDbObMcIT67xInjDx4yM7wnDkvSE4A+3CLUeqi2hB4gMI1w29q
fOErv+iTyen/J8swVvpQxm06jdjzpyiq36N/P5GXblxmCiuxkgFHVLpQWVbv7qO4
cRFx8o0k/dDDxiWrHc4OGRAgsjfNOFr79gSL+1cLHykWZAYe3prBxEAiVLCT3ZHV
RITQ6M74r5nWifiGnyvwTPHdLG0v6UdhgzO0u3qJ0lMBkaQbCA5OItRnIsTgvOu9
3OqhT/zebrTEtELINDY1o2an23SQ/ZkSx76e4tAV17bOOHPLNHJXQXOwNmHy18sI
1eGWJYNQHAWKmVUrT1ttWNQVQVcOWOvODr32JHBawQ1mR9kcOL7LjxYnlJR06hGX
XQOMHlEkZxRviEwRjkUPicEcZAQm/nHRPLa+xC8DZsChHr/1SFuYpjkkWhhBPKPH
rgskNeUMfL4VvYOnXwkDqBcqO36pgaGi0bI8jwFdm+C6wylw/IhgrM+qdF6O/khC
XOYowf7C0S0w6iTH+1HP5sAZje1e/FHBNahrQtvz1P7/AxOUSrW6I+EEk0MKktDn
LulDegLOTR2juZvykciZhu4fJiQPWscYZTF7Kr20OlxbT87CpGDBxAD/PqQXpBM7
dZi/m875dp2oOmSDfjghOGwIZ/Fi5434ipqDd3RdCm6mQI3ITxM=
=lkUR
-----END PGP SIGNATURE-----

--f8IFDxof3mDT2T9N33PmXUIpI3I0rtgtj--


--===============3724743332298088856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3724743332298088856==--

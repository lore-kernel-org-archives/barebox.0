Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTaD2-0007gW-DU
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 14:23:29 +0000
Message-ID: <4ECE5356.5060904@pengutronix.de>
Date: Thu, 24 Nov 2011 15:23:18 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
In-Reply-To: <20111124120400.GC27267@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8975592248379669040=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM, MMU and IO space mapping
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============8975592248379669040==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE485C04DD97019BF9720461C"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE485C04DD97019BF9720461C
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/24/2011 01:04 PM, Sascha Hauer wrote:
> On Thu, Nov 24, 2011 at 12:24:55PM +0100, Robert Jarzmik wrote:
>> Hi,
>>
>> I was wandering in the MMU arm implementation and I'm wondering if any=
body is
>> using it and accessing some IO mapped space.
>>
>> My trouble is that mmu_init() only maps the RAM space (and with cachea=
ble memory
>> type). For the PXA, I would need a non-cacheable non-bufferable memory=
 type,
>> which could be allocated either :
>>  - through dev_request_mem_region(), which would be amended for the MM=
U case
>>  - or through a dedicated ioremap() function, which will be empty in n=
o MMU case
>>
>> The current issue I'm facing is that when I launch barebox with MMU en=
abled, the
>> UDC device doesn't work (I presume because the IO space is not mapped =
into the
>> MMU). This prevents me from using barebox in MMU context (and therefor=
e I have
>> no D-Cache).
>>
>> Would the evolution of dev_request_mem_region() be acceptable, or shou=
ld I
>> consider another way ?
>=20
> The generic arm code sets up a flat 1:1 noncached mapping. Then it
> remaps the SDRAM cacheable/bufferable. So a normal driver can just
> access the registers without worrying about ioremap() since they are
> outside of the SDRAM. What you need in your udc driver is either
> dma_alloc_coherent which allocates a chunk of SDRAM and remaps it
> uncacheable/unbufferable or you have to sync manually using
> dma_clean_range/dma_flush_range. See drivers/usb/gadget/fsl_udc.c or
> drivers/net/fec_imx.c for examples.
>=20
> I remember Marc had some trouble with the mmu/cache implementation on
> PXA. I don't know the details though. Maybe you have to dig through
> the manuals/kernel code to find out the differences between the normal
> arm v5 and pxa.

I had some troubles with the cache setup, but it was before Sascha fixed
a problem with the v5 chache handling. IIRC loading the environment form
NOR sometimes failed with enabled caches.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE485C04DD97019BF9720461C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7OU1gACgkQjTAFq1RaXHOdHACeIttCjmBusQEmrIqCsI+/eCvS
ak4AnRMsOqqL6yt45SQnHtjN8Cm0Y91H
=Qeya
-----END PGP SIGNATURE-----

--------------enigE485C04DD97019BF9720461C--


--===============8975592248379669040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8975592248379669040==--

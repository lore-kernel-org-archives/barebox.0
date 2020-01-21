Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itte2-0004IG-Fw
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 13:32:41 +0000
Date: Tue, 21 Jan 2020 14:32:34 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200121133234.2jjfukr44glptil4@pengutronix.de>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
 <20200114142704.3t7vra5wlrzivi3n@pengutronix.de>
 <20200114171226.evt4nvuxe7gdc5bb@tellis.lin.mbt.kalray.eu>
 <20200116065027.psohiqog4awxye4h@pengutronix.de>
 <20200116172508.eqeomvadqvjl5nvj@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
In-Reply-To: <20200116172508.eqeomvadqvjl5nvj@tellis.lin.mbt.kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2223382404050430163=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 0/7] usb: dwc2 host driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>, Matthias Mann <m.mann@arkona-technologies.de>


--===============2223382404050430163==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z5vlp7dbtfuu5f2p"
Content-Disposition: inline


--z5vlp7dbtfuu5f2p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jules,

On Thu, Jan 16, 2020 at 06:25:08PM +0100, Jules Maselbas wrote:
> On Thu, Jan 16, 2020 at 07:50:27AM +0100, Sascha Hauer wrote:
> >=20
> > Well, USB gadget support would be a strong argument for your version ;)
> I am going to send a new version for the host driver alongside the gadget
> support. I've made few cleanup (in both host and gadget driver). Although
> there is still some stub functions in the gadget driver, I think is this
> a good start.

I did not get this conversation and also started the gadget support on
dwc2. My target machine is stm32, so my work includes also the internal
stm32 phy and some regulators, to get this done. I could rework this on
top of your patches, if you send them on the list.

Regards,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--z5vlp7dbtfuu5f2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl4m/W8ACgkQC+njFXoe
LGRrGQ/+KTH13VXTTFW8cMy/C1juNZXR7+cGBg46frKNagqHh4EceOg+xDO9b/Z9
lSnZqqR9Bkwzj/2ZMD5HQsv66R6sufqWR1g/x10ds3mpMGn93XLyMvm8AIATMIuC
iTXN67Cnhpf2Hpstlkc5wxig9fVPP3tcgBihTXOk4Li5C9bEowYogkyY/FVOA4x1
Riuhb/r5t5JrY4h3fTF7t86Vb2wttbwUnU8TBoRKbXcRKBxErhd7so+hCzO5SLDC
ma23FhaMg5G4vKdka3FTL1/WVCg13yd9V+gI5XsvXlMLvwBFq7acuBVVp0PWsNwi
0EVo1JskPQaxTFcV7/T9goCVBAiZ4NG4njDEl4U0ZAI7Z38HakghF7t/IWnZmbTN
0vYgnXSrzk0LHsz2KOc0aXgjkoazG1M/mKT0qurLtJu4dKz5sNqN2gSVDe54Pg7T
Ce8CzoM08SeulfQrMetCrO4Px0Idf8b0K9WBSUdCKpKv5xeS7AReMumbAdWRGmI7
45jKqlc5pRwc317DJ1uNu92VDLtdsmk/s5CxBch0UgFavbmJTmxRM9Wk5acPbYAN
4zs4hS7jWBIOFTwi8uzZAZDzkulkgyGNw4cEG++xXZVvYhcSqAgm1Y+/59eERA5s
ucbxeBLW403wWIZ2ZMMtKjWCzN2vybpuTMUXGtEXtnUAIlfH0rc=
=yXLb
-----END PGP SIGNATURE-----

--z5vlp7dbtfuu5f2p--


--===============2223382404050430163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2223382404050430163==--

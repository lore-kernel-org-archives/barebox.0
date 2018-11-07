Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKImR-0004tv-Ku
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 08:01:41 +0000
Date: Wed, 7 Nov 2018 09:01:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181107080126.k37o63mf6qrnmx4t@pengutronix.de>
References: <1541171808732.30346@mixed-mode.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1541171808732.30346@mixed-mode.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: issues verifying FIT image signature
To: Kai Che <Kai.Che@mixed-mode.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Kai,

On Fri, Nov 02, 2018 at 03:16:44PM +0000, Kai Che wrote:
> Hi all,
> =

> I'm trying to verify the signature of a FIT image in barebox. =

> =

> I created the FIT image with the following .its file:
> =

> ...
> configurations {
> =A0=A0 =A0=A0=A0 =A0default =3D "config@1";
> =A0=A0 =A0=A0=A0 =A0config@1 {
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0description =3D "Boot Raspian kernel";
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0kernel =3D "kernel";
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0fdt =3D "fdt-1";
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0signature@1 {
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0algo =3D "sha256,rsa2048";
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0key-name-hint =3D "dev";
> =A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0sign-images =3D "fdt", "kernel";
> ...
> =

> Verifying the Hashes for the kernel and fdt-1 works fine ("hash OK"
> for both images) , but when I try to verify the signature I get the
> follwoing error:
> =

> ERROR: FIT: hashed-strings start not found in /configurations/config@1/si=
gnature@1
> =

> I could follow the error back to the fit_verify_signature function in
> /common/image-fit.c file, but I don't understand what is causing the
> error.
> =

> Is the function looking for a string called "hashed-strings" in the
> FIT image file? I checked the .fit file (with hexdump) and I could
> only find the string "hash@1" which barebox uses to verify the
> signature.

No idea what went wrong. Which options did you pass to mkimage?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

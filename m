Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailgate.pixel-group.de ([145.253.133.146])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIbC3-0001Jc-0E
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 15:17:05 +0000
Received: from mail.pixel.de (unknown [10.63.25.81])
 by mailgate.pixel-group.de (Postfix) with ESMTP id 46D6E5E0E8
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2018 16:16:46 +0100 (CET)
Received: from tragicomix (localhost [127.0.0.1])
 by mail.pixel.de (Postfix) with ESMTP id 4EAE31A1C8
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2018 16:16:45 +0100 (CET)
From: Kai Che <Kai.Che@mixed-mode.de>
Date: Fri, 2 Nov 2018 15:16:44 +0000
Message-ID: <1541171808732.30346@mixed-mode.de>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: issues verifying FIT image signature
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I'm trying to verify the signature of a FIT image in barebox. =


I created the FIT image with the following .its file:

...
configurations {
=A0=A0 =A0=A0=A0 =A0default =3D "config@1";
=A0=A0 =A0=A0=A0 =A0config@1 {
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0description =3D "Boot Raspian kernel";
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0kernel =3D "kernel";
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0fdt =3D "fdt-1";
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0signature@1 {
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0algo =3D "sha256,rsa2048";
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0key-name-hint =3D "dev";
=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0sign-images =3D "fdt", "kernel";
...

Verifying the Hashes for the kernel and fdt-1 works fine ("hash OK" for bot=
h images) , but when I try to verify the signature I get the follwoing erro=
r:

ERROR: FIT: hashed-strings start not found in /configurations/config@1/sign=
ature@1

I could follow the error back to the fit_verify_signature function in /comm=
on/image-fit.c file, but I don't understand what is causing the error.

Is the function looking for a string called "hashed-strings" in the FIT ima=
ge file? I checked the .fit file (with hexdump) and I could only find the s=
tring "hash@1" which barebox uses to verify the signature.

Best regards

Kai


   =

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

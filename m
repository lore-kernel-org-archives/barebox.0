Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eu2.fugro.com ([46.34.88.152])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WS1T0-0000wj-LU
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 09:46:51 +0000
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 24 Mar 2014 10:37:48 +0100
Message-ID: <C89EFD3CD56F64468D3D206D683A8D2203154121@ldam-msx2.fugro-nl.local>
From: "Stam, Michel [FINT]" <M.Stam@fugro.nl>
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
Subject: RE: Barebox x86 IDE support
To: barebox@lists.infradead.org

Hello maintainers,

I was wondering if one of you has had time to verify these patches and appl=
y them to trunk?

Kind regards,

Michel Stam

--

From: Stam, Michel [FINT] =

Sent: Friday, March 14, 2014 17:31 PM
To: 'barebox@lists.infradead.org'
Subject: Barebox x86 IDE support

Dear list,

While working on barebox recently, I decided to port a couple of patches =
=A0I made to an old barebox tree a few years ago, to fix the IDE ports on t=
he x86 platform.

I had to work on the resource allocation a bit, as the current GIT reposito=
ry does not allow IORESOURCE_IO type to be passed to dev_request_region( ) =
and friends. I tried to keep the interface the same as much as possible by =
using macros etc.
Please find that attached in 0001-common-driver-Allow-for-I-O-mapped-I-O-in=
-resource-r.patch. =


Next, I added support to the platform IDE interface to use I/O-mapped I/O, =
and added the necessary allocation to the generic_pc board.

I did have to add a call to ata_port_detect( ) to ide_port_register to actu=
ally get the drives to be probed. Without it the interface seems to be stuc=
k in some sort of limbo. This patch is in 0002-x86-Add-support-for-IDE-on-t=
he-legacy-I-O-ports.patch.

Lastly, I added an extra serial port to the generic_pc board. Most (legacy)=
 PCs have support for 2 serial ports, it seemed useful to me.

What does puzzle me is that the arch/x86/boot/Kconfig mentions X86_VESA and=
 X86_VGA support, but the files (console_vga.c and console_vesa.c) do not n=
or have ever existed. Is this a remnant from U-boot v1?

Best regards,

Michel Stam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

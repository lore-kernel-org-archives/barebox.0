Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFRqv-0000S3-H5
 for barebox@lists.infradead.org; Sun, 25 Jan 2015 18:24:06 +0000
Received: by mail-lb0-f179.google.com with SMTP id 10so4559198lbg.10
 for <barebox@lists.infradead.org>; Sun, 25 Jan 2015 10:23:43 -0800 (PST)
Date: Sun, 25 Jan 2015 22:26:29 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150125222629.c52501c7d776cabf4317c82f@gmail.com>
Mime-Version: 1.0
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
Subject: picopng does not support big-endian CPUs
To: barebox@lists.infradead.org

Hi All!

Current lib/gui/picopng.c has problems on big-endian CPUs.

Here are two examples from PNG_readPngHeader():

	if (*(uint64_t *) in !=3D PNG_SIGNATURE) {
...
	if (*(uint32_t *) &in[12] !=3D CHUNK_IHDR) {


Using memcmp in this situation is much better, e.g.

+	uint8_t png_signature[8] =3D {137, 80, 78, 71, 13, 10, 26, 10};
...
+	if (memcmp(in, png_signature, 8)) {


+	uint8_t chunk_header[4] =3D {0x49, 0x48, 0x44, 0x52};
...
+	if (memcmp(&in[12], chunk_header, 4)) {


Current lodepng works fine on big-endian, but can we disable picopng
in Kconfig for big-endian CPUs?

On mips I have CPU_BIG_ENDIAN option, so I can add
'depends on !CPU_BIG_ENDIAN' to lib/gui/Kconfig, e.g.

 config PICOPNG
+	depends on !CPU_BIG_ENDIAN
 	bool "picoPNG"

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

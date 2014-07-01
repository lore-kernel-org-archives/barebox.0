Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f54.google.com ([209.85.215.54])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X21SU-0006Yc-Uf
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 17:03:07 +0000
Received: by mail-la0-f54.google.com with SMTP id mc6so6189290lab.13
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 10:02:41 -0700 (PDT)
Date: Tue, 1 Jul 2014 21:14:47 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140701211447.9e543b8e172d37c32d630091@gmail.com>
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
Subject: md5sum arguments
To: barebox@lists.infradead.org

Hi All!

Current 'md5sum' command gets FILE|AREA argument, e.g.


  barebox:/ help md5sum =


  md5sum - calculate MD5 checksum

  Usage: md5sum FILE|AREA...

  Calculate a MD5 digest over a FILE or a memory area.

The *nix 'md5sum' gets [FILE]... argument.
This behavour can be misleading. E.g. today I have tryed this command seque=
nce on
my qemu-malta machine:

  barebox:/ memcpy -s /dev/zero -d 1M 0 0 0x100000
  barebox:/ md5sum 1M

md5sum just hangs!


But this command sequence works fine:

  barebox:/ memcpy -s /dev/zero -d zeros 0 0 0x100000
  barebox:/ md5sum zeros                             =

  b6d81b360a5672d80c27430f39153e2c  zeros 0x00000000 ... 0xffffffffffffffff


Do we really need this?

We can use 'addpart' on /dev/memory for creating partial memory device and =
run md5sum on it.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

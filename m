Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sk0fH-0003uh-JT
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 22:24:48 +0000
Received: by ggcs5 with SMTP id s5so1456493ggc.36
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2012 15:24:44 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 28 Jun 2012 02:24:44 +0400
Message-ID: <CAA4bVAE5A5jgk=zwV1PfNcQVyXydDmXLL_VhwAqiYpYOdawLmQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: byteorder problem
To: barebox <barebox@lists.infradead.org>

Hi!

Yesterday I have investigated strange clocksource behaviour of JZ4755
MIPS CPU: the function cyc2ns() works wrong.

The problem was in realisation of the '>>' u64 operation (see __lshrdi3()).

In include/linux/byteorder/generic.h we have

#ifndef __LITTLE_ENDIAN
#define __LITTLE_ENDIAN        1234
#endif
#ifndef __BIG_ENDIAN
#define __BIG_ENDIAN   4321
#endif

so after including this file we will have __BIG_ENDIAN and
__LITTLE_ENDIAN both defined.

On the other hand in arch/mips/lib/libgcc.h we have

#ifdef __BIG_ENDIAN
struct DWstruct {
        int high, low;
};
#elif defined(__LITTLE_ENDIAN)
struct DWstruct {
        int low, high;
};
#else
#error I feel sick.
#endif

In any case we will got big-endian DWstruct, so on little-endian MIPS
machines we will have wrong result of the '>>' u64 operation (the low
and high parts of 64-bit word will be swapped).

The problem can be solved by this patch:

--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -78,13 +78,6 @@
  *
  */

-#ifndef __LITTLE_ENDIAN
-#define __LITTLE_ENDIAN        1234
-#endif
-#ifndef __BIG_ENDIAN
-#define __BIG_ENDIAN   4321
-#endif
-

But in several places we have something like this:

#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
...
#elif __BYTE_ORDER =3D=3D __BIG_ENDIAN

and we will get the warnings from compiler (e.g. warning:
"__BIG_ENDIAN" is not defined). So we need addition changes like this

-#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
...
-#elif __BYTE_ORDER =3D=3D __BIG_ENDIAN
+#elif defined(__BIG_ENDIAN)

There is another solution. We can change arch/mips/lib/libgcc.h:

-#ifdef __LITTLE_ENDIAN
+#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
...
-#elif defined(__BIG_ENDIAN)
+#elif __BYTE_ORDER =3D=3D __BIG_ENDIAN

But this solution is not linux-compatible because __LITTLE_ENDIAN and
__BIG_ENDIAN can be defined simultaneously.

Please comment this message.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

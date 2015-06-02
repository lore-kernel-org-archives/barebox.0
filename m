Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzhcB-0005C0-SY
 for barebox@lists.infradead.org; Tue, 02 Jun 2015 08:32:04 +0000
Received: by laei3 with SMTP id i3so32030781lae.3
 for <barebox@lists.infradead.org>; Tue, 02 Jun 2015 01:31:41 -0700 (PDT)
Date: Tue, 2 Jun 2015 11:37:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150602113736.07b93fb60300ecf8754272a7@gmail.com>
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
Subject: building sandbox barebox: too many '"BITS_PER_LONG" redefined'
 warnings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sascha!

I have tried to build sandbox barebox from latest next on amd64 debian linu=
x host.

I see very many '"BITS_PER_LONG" redefined' warnings, e.g.

  CC      common/misc.o
In file included from /home/antony/barebog.git/arch/sandbox/include/asm/typ=
es.h:57:0,
                 from include/linux/types.h:5,
                 from include/param.h:5,
                 from include/console.h:23,
                 from include/stdio.h:5,
                 from include/common.h:23,
                 from common/misc.c:19:
include/asm-generic/bitsperlong.h:7:0: warning: "BITS_PER_LONG" redefined
 #define BITS_PER_LONG 32
 ^
In file included from include/asm-generic/posix_types.h:4:0,
                 from /home/antony/barebog.git/arch/sandbox/include/asm/pos=
ix_types.h:1,
                 from include/linux/posix_types.h:46,
                 from include/linux/types.h:4,
                 from include/param.h:5,
                 from include/console.h:23,
                 from include/stdio.h:5,
                 from include/common.h:23,
                 from common/misc.c:19:
/home/antony/barebog.git/arch/sandbox/include/asm/bitsperlong.h:5:0: note: =
this is the location of the previous definition
 #define BITS_PER_LONG 64
 ^

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAWch-0000yy-CU
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 05:01:21 +0000
Received: by lagc2 with SMTP id c2so53472282lag.3
 for <barebox@lists.infradead.org>; Wed, 01 Jul 2015 22:00:57 -0700 (PDT)
Date: Thu, 2 Jul 2015 08:07:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150702080733.ba99c058b69ad76948f7e8c4@gmail.com>
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
Subject: should we change 'extern inline' to 'static inline'?
To: Renaud Barbier <renaud.barbier@ge.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

It looks like 'extern inline' breaks gcc-5.x build.

Here is U-Boot patch https://patchwork.ozlabs.org/patch/490178/

In barebox we have several 'extern inline' functions in arch/blackfin and a=
rch/ppc:

arch/blackfin/include/asm/io.h
arch/blackfin/include/asm/processor.h
arch/ppc/include/asm/atomic.h
arch/ppc/include/asm/bitops.h
arch/ppc/include/asm/io.h

I can't fix it by myself because I have neither blackfin nor ppc cross-comp=
iler to check result.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz7Nt-0008Es-5V
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 15:41:50 +0000
Received: by mail-lb0-f170.google.com with SMTP id t13so720244lbd.29
 for <barebox@lists.infradead.org>; Tue, 16 Jul 2013 08:41:27 -0700 (PDT)
Date: Tue, 16 Jul 2013 19:39:36 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130716193936.49949f12c31c8145965c1c74@gmail.com>
In-Reply-To: <20130716062532.GV14452@pengutronix.de>
References: <20130715100958.GG19197@ns203013.ovh.net>
 <20130716062532.GV14452@pengutronix.de>
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
Subject: Re: [PATCH 0/3 v2] pbl: add lz4 compression support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 16 Jul 2013 08:25:32 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jul 15, 2013 at 12:09:58PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > Hi,
> > =

> > 	v2:
> > 	keep lzo as default
> > =

> > 	The following patch serie add the lz4 support to the pbl
> > =

> > Jean-Christophe PLAGNIOL-VILLARD (1):
> >       pbl: add lz4 support
> > =

> > Kyungsik Lee (2):
> >       decompressor: Add LZ4 decompressor module
> >       lib: Add support for LZ4-compressed kernel
> =

> Applied, thanks
> =

> Sascha

LZ4 decompressor work fine on MIPS but I have got a warning:

...
rm arch/mips/dts/qemu-malta.dtb.S arch/mips/dts/qemu-malta.dtb
   LD      pbl/built-in.o
   PBLCC   pbl/pbl-decomp.o
 In file included from pbl/decomp.c:14:
 /home/antony/barebox.git.rebased.isp/arch/mips/include/../../../lib/dec om=
press_unlz4.c:185: warning: no previous prototype for 'decompress_unl z4'
   PBLCC   pbl/pbl-misc.o
   PBLCC   pbl/pbl-string.o
   PBLLD   pbl/built-in-pbl.o
...

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

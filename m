Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdugm-0008Qq-IS
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 06:35:01 +0000
Received: by lamp12 with SMTP id p12so60795842lam.0
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 23:34:38 -0700 (PDT)
Date: Mon, 21 Sep 2015 09:56:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150921095651.6d733d2d468b225fcb4bd702@gmail.com>
In-Reply-To: <20150921062208.GE7858@pengutronix.de>
References: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
 <20150921062208.GE7858@pengutronix.de>
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
Subject: Re: [PATCH 0/3] misc MIPS patches
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 21 Sep 2015 08:22:08 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Sep 21, 2015 at 01:50:42AM +0300, Antony Pavlov wrote:
> > Antony Pavlov (3):
> >   MIPS: mach-ath79: make ar71xx_regs.h assembler-tolerant
> >   MIPS: PBL: Add missing pieces for xz compressed PBL image


Sorry, I have mistyped here:

> >   MIPS: refactor SPL start.S code
                     ^^^  =

                         SPL -> SBL (Secondary Bootloader).

> =

> Applied, thanks
> =

> Sascha
> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

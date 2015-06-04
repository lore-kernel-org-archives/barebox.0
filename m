Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0PYB-0003kF-4m
 for barebox@lists.infradead.org; Thu, 04 Jun 2015 07:26:52 +0000
Received: by labpy14 with SMTP id py14so25384588lab.0
 for <barebox@lists.infradead.org>; Thu, 04 Jun 2015 00:26:28 -0700 (PDT)
Date: Thu, 4 Jun 2015 10:32:25 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150604103225.c7bbd5fb909a6e0f786fa745@gmail.com>
In-Reply-To: <20150604070436.GU6325@pengutronix.de>
References: <1433320331-31720-1-git-send-email-antonynpavlov@gmail.com>
 <20150604070436.GU6325@pengutronix.de>
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
Subject: Re: [PATCH] PPC: asm/bitops.h: drp unused ext2* and minix* stuff
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 4 Jun 2015 09:04:36 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Jun 03, 2015 at 11:32:11AM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/ppc/include/asm/bitops.h | 63 -----------------------------------=
--------
> >  1 file changed, 63 deletions(-)
> =

> Applied, thanks

Sascha, please change "drp" -> "drop" in the patch's subject line.
I have supplied RESEND version of the patch just for this purpose. =


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

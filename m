Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTU3B-00008N-Sq
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 10:30:14 +0000
Received: by mail-la0-f46.google.com with SMTP id hr17so3527737lab.19
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 03:29:49 -0700 (PDT)
Date: Fri, 28 Mar 2014 14:39:38 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140328143938.ad5b84aba01edb62beb60181@gmail.com>
In-Reply-To: <20140328093844.GF17250@pengutronix.de>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
 <20140328132811.ee85068f4bd2ee0f623c6be2@gmail.com>
 <20140328093844.GF17250@pengutronix.de>
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
Subject: Re: [PATCH 0/9] MIPS: add Atheros AR933x SoC & TP-LINK MR3020 board
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 28 Mar 2014 10:38:44 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Mar 28, 2014 at 01:28:11PM +0400, Antony Pavlov wrote:
> > On Fri, 28 Mar 2014 01:26:35 +0400
> > Antony Pavlov <antonynpavlov@gmail.com> wrote:
> > =

> > Your latest clk-related changes break build of this patchseries.
> > =

> > I'll resend this series soon.
> =

> I can fold in a fixup into the merge commit which brings together my clk
> changes and your mips tree for you, don't worry. I assume you want to have
> the CLK_SET_RATE_PARENT flag passed into clk_fixed_factor, right?
> =

> I get this when compiling:
> =

> drivers/clk/clk-ar933x.c: In function 'ar933x_ref_clk_init':
> drivers/clk/clk-ar933x.c:108: warning: unused variable 'err'
> drivers/clk/clk-ar933x.c:107: warning: unused variable 'clk'

Agghhh.

I had used very old mips-linux-gcc 3.4.6 compiler most of time --- it does =
not show the warnings.

I have just checked with codesourcery mips-2013.11 --- it gives me the warn=
ings.

> I have a fix for this locally now. I'll have a look over the patches.
> Should they be fine there's nothing to do for you (except checking the
> result when I merged it)

I have just checked next branch on my MR3020 board --- all works fine!

Thanks a lot for all!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

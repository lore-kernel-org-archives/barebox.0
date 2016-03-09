Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x242.google.com ([2a00:1450:4010:c04::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adb33-0005RZ-GP
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:09:01 +0000
Received: by mail-lb0-x242.google.com with SMTP id bc4so4442700lbc.0
 for <barebox@lists.infradead.org>; Wed, 09 Mar 2016 02:08:36 -0800 (PST)
Date: Wed, 9 Mar 2016 13:34:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160309133448.6640fb77cd9ce6182fb00699@gmail.com>
In-Reply-To: <CAGm1_ktH2vq-kdNiKKUyAHQeK1tosaoB_2OmjUc08nV9=mLFeg@mail.gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
 <20160309073141.GB30994@pengutronix.de>
 <CAGm1_ktH2vq-kdNiKKUyAHQeK1tosaoB_2OmjUc08nV9=mLFeg@mail.gmail.com>
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
Subject: Re: [PATCH 00/15] MIPS: ar9331: use cache and fix gpio
To: Sascha Hauer <s.hauer@pengutronix.de>, Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, 9 Mar 2016 09:45:11 +0100
Yegor Yefremov <yegorslists@googlemail.com> wrote:

> On Wed, Mar 9, 2016 at 8:31 AM, Sascha Hauer <s.hauer@pengutronix.de> wro=
te:
> > Hi Antony,
> >
> > On Mon, Mar 07, 2016 at 04:30:11PM +0300, Antony Pavlov wrote:
> >> This patchseries introduces initial MIPS cache support.
> >> Though the cache code is usable for many MIPS-based chips
> >> at the moment the code is tested mostly on AR9331 SoC.
> >> So I have decided to submit only AR9331-related cache
> >> patches and add AR9331 GPIO-related patches to the series.
> >
> > This series probably deserves a better review than I have given it, but
> > my knowledge of Mips is nearly not existent. I just applied it.
> =

> I haven't got my hands on this series, but I have used the previous
> one. SquashFS patches were developed using the previous version
> (Antony's GItHub branch).

Actually there are only very few cosmetic differences between the maillist =
series and my github branch.
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

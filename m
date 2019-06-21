Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heD9Z-0006x9-Ho
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 06:36:06 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so4139543lfh.13
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 23:36:05 -0700 (PDT)
Date: Fri, 21 Jun 2019 09:36:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190621093601.6629865ed124a00ad440d4c7@gmail.com>
In-Reply-To: <fe8306a3-59bf-2fed-2e92-aec546b15fdd@rempel-privat.de>
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
 <20190621052138.12246-5-antonynpavlov@gmail.com>
 <fe8306a3-59bf-2fed-2e92-aec546b15fdd@rempel-privat.de>
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
Subject: Re: [PATCH 4/4] MIPS: dts: tplink-mr3020: add missing stdout-path
 property
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 21 Jun 2019 08:06:53 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Hi Antony,
> =

> since you are playing with MR3020, you probably wont to test this kernel
> with nfs boot:
> https://github.com/olerem/linux-2.6/commits/v5.2/topic/ath79-upstream
> =

> The network driver is already in linux-next. The switch driver is on TODO.

Thanks for the tip!

At the moment I use OpenWrt Linux 4.14.88+ with Debian Jessie nfsroot.

> Am 21.06.19 um 07:21 schrieb Antony Pavlov:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/dts/tplink-mr3020.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3=
020.dts
> > index 982cffc250..e30eae1578 100644
> > --- a/arch/mips/dts/tplink-mr3020.dts
> > +++ b/arch/mips/dts/tplink-mr3020.dts
> > @@ -7,6 +7,8 @@
> >  	};
> >
> >  	chosen {
> > +		stdout-path =3D &uart;
> > +
> >  		environment {
> >  			compatible =3D "barebox,environment";
> >  			device-path =3D &spiflash, "partname:barebox-environment";
> >
> =

> =

> --
> Regards,
> Oleksij


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

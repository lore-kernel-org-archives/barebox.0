Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0i06-00043Z-6V
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 07:27:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id x206so2744838lff.3
 for <barebox@lists.infradead.org>; Sun, 03 Mar 2019 23:27:00 -0800 (PST)
Date: Mon, 4 Mar 2019 10:26:56 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190304102656.33754174e40b8cfa63f2d28a@gmail.com>
In-Reply-To: <7475eecb-5e8e-a827-f04e-b3d8d749edaf@pengutronix.de>
References: <20190219141647.2537-1-a.fatoum@pengutronix.de>
 <20190219141647.2537-3-a.fatoum@pengutronix.de>
 <20190220101412.5032124aaf26a799c903ec9f@gmail.com>
 <7475eecb-5e8e-a827-f04e-b3d8d749edaf@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] scripts/checkpatch.pl: rebase on top of upstream
 v5.0-rc6
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 26 Feb 2019 10:55:40 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Antony,
> =

> On 20/2/19 08:14, Antony Pavlov wrote:
> > On Tue, 19 Feb 2019 15:16:47 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > =

> >> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> >> index 4e17347a8481..48b39fbf962a 100755
> >> --- a/scripts/checkpatch.pl
> >> +++ b/scripts/checkpatch.pl
> > ...
> > =

> >> @@ -1555,13 +2997,9 @@ sub process {
> >>  =

> >>  			my @compats =3D $rawline =3D~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
> >>  =

> >> -			# linux device tree files
> >> -			my $dt_path =3D $root . "/dts/Bindings/";
> >> +			my $dt_path =3D $root . "/Documentation/devicetree/bindings/";
> > =

> > At the moment it looks like barebox uses both paths ("/dts/Bindings/" a=
nd "/Documentation/devicetree/bindings/")
> > to store dt-related documentation.
> =

> Missed this one. I can reinstate it in a v2. I think I should've caught a=
ll barebox specifics now.
> =

> > =

> > The patch is very long and very hard to review.
> =

> Any suggestion on a better way to do it? It's a straight copy from upstre=
am with
> some barebox specific changes applied on top, so I assume ensuring the ba=
rebox
> changes are accounted for are all the review we need.

I propose to port checkpatch-related patches from linux one by one.
Of course you can join some patches into one please remember this
quote from https://www.kernel.org/doc/html/v4.17/process/submitting-patches=
.html#split-changes

   The point to remember is that each patch should make an easily understood
   change that can be verified by reviewers. Each patch should be justifiab=
le
   on its own merits.

> =

> I could for v2 include a scripts/checkpatch.patch which patches the corre=
sponding
> upstream checkpatch.pl into the barebox checkpatch.pl. That way reviewing=
 would work
> like this:
> =

> - review checkpatch.patch
> - $ patch -R < checkpatch.patch
> - $ diff $LINUX/scripts/checkpatch.pl $BAREBOX/scripts/checkpatch.pl
> =

> What do you think?

I suppose that we want to get new checkpatch features/bugfixes from linux k=
ernel
but not minimize barebox checkpatch vs linux kernel checkpatch diff size.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

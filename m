Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXock-00010L-GP
 for barebox@lists.infradead.org; Fri, 25 May 2012 07:07:47 +0000
Received: by yenr9 with SMTP id r9so141729yen.36
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 00:07:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120525063411.GF30400@pengutronix.de>
References: <1337889903-18638-1-git-send-email-eric@eukrea.com>
 <20120524202510.GE30400@pengutronix.de> <20120524224640.291aabdd@eb-e6520>
 <20120525063411.GF30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 25 May 2012 09:07:24 +0200
Message-ID: <CAONxwYPPKWM5yt_EeSksnVK9PsTN3vhgVhkCy85aiQ8QvASODA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0466612659951396590=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX25: fix eSDHC1 pads
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0466612659951396590==
Content-Type: multipart/alternative; boundary=14dae9340aa36583f504c0d7066d

--14dae9340aa36583f504c0d7066d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, May 25, 2012 at 8:34 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote=
:

> On Thu, May 24, 2012 at 10:46:40PM +0200, Eric B=E9nard wrote:
> > Hi Sascha,
> >
> > Le Thu, 24 May 2012 22:25:10 +0200,
> > Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > > On Thu, May 24, 2012 at 10:05:03PM +0200, Eric B=E9nard wrote:
> > > > enabling SION bit makes SDHC1 working on the i.MX25.
>

I am a bit surprised since in my case, SDHC1 worked out of the box, after
disabling all the iomux pad configuration settings. I believe sync'ing the
iomux with the kernel goes both with the philosophy of barebox and its
maintainability.


> > > Can we instead just sync the iomux file with the kernel? I think this
> >
> > OK will post the patch syncing barebox & kernel.
> >
> > > will make less problems in the longer run. At least as long the iomux
> > > files in the kernel still exist...
> > >
> > is iomux settings planned to be removed from the kernel ?
>
> I suppose when all i.MX are converted to devicetree and pinmux they will
> be removed. I don't know how long this will take though.
>
>
Has anybody started on the mx25 conversion to devicetree and pinmux yet?
Last time I checked at lot of other fsl cores had already been converted,
but not this one. Eric, have you tried moving to your mx25 to device tree
yet?

Cheers
Roberto

--14dae9340aa36583f504c0d7066d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, May 25, 2012 at 8:34 AM, Sascha Hauer <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" target=3D"_bl=
ank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

<div class=3D"im">On Thu, May 24, 2012 at 10:46:40PM +0200, Eric B=E9nard w=
rote:<br>
&gt; Hi Sascha,<br>
&gt;<br>
&gt; Le Thu, 24 May 2012 22:25:10 +0200,<br>
&gt; Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pen=
gutronix.de</a>&gt; a =E9crit :<br>
&gt; &gt; On Thu, May 24, 2012 at 10:05:03PM +0200, Eric B=E9nard wrote:<br=
>
&gt; &gt; &gt; enabling SION bit makes SDHC1 working on the i.MX25.<br></di=
v></blockquote><div><br></div><div>I am a bit surprised since in my case, S=
DHC1 worked out of the box, after disabling all the iomux pad configuration=
 settings. I believe sync&#39;ing the iomux with the kernel goes both with =
the philosophy of barebox and its maintainability.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; &gt; Can we instead just sync the iomux file with the kernel? I think =
this<br>
&gt;<br>
&gt; OK will post the patch syncing barebox &amp; kernel.<br>
&gt;<br>
&gt; &gt; will make less problems in the longer run. At least as long the i=
omux<br>
&gt; &gt; files in the kernel still exist...<br>
&gt; &gt;<br>
&gt; is iomux settings planned to be removed from the kernel ?<br>
<br>
</div>I suppose when all i.MX are converted to devicetree and pinmux they w=
ill<br>
be removed. I don&#39;t know how long this will take though.<br>
<div class=3D"im HOEnZb"><br></div></blockquote><div>=A0</div><div>Has anyb=
ody started on the mx25 conversion to devicetree and pinmux yet? Last time =
I checked at lot of other fsl cores had already been converted, but not thi=
s one. Eric, have you tried moving to your mx25 to device tree yet?</div>

<div><br></div><div>Cheers</div><div>Roberto</div></div><br>

--14dae9340aa36583f504c0d7066d--


--===============0466612659951396590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0466612659951396590==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHZc5-0002GQ-Eq
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 11:51:58 +0000
Received: by iaky10 with SMTP id y10so9023033iak.36
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 04:51:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120410092336.GD3852@pengutronix.de>
References: <CAO-mwNcOBNL-LFuyK9EbxUBqxLU3GAWUi61E40J5qunDP+n+ZA@mail.gmail.com>
 <CAO-mwNdKa4fukB23m_F1g=axhqw3S2stb2C6JbPXiob1Ty=xhg@mail.gmail.com>
 <20120410092336.GD3852@pengutronix.de>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Tue, 10 Apr 2012 17:21:35 +0530
Message-ID: <CAO-mwNdBtPy3RSa-tcZPUDxX625_uqZ5XONQOHEUUg4BFdTr1A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6603075461926958357=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: OMAP4 Panda - MMC access broken
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

--===============6603075461926958357==
Content-Type: multipart/alternative; boundary=20cf303f6a54e10d5704bd51bf96

--20cf303f6a54e10d5704bd51bf96
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 10, 2012 at 2:53 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Mon, Apr 02, 2012 at 08:07:16PM +0530, Anand Gadiyar wrote:
> > On Fri, Mar 30, 2012 at 10:04 PM, Anand Gadiyar <gadiyar@gmail.com>
> wrote:
> >
> > > Hi all,
> > >
> > > I've just started playing with barebox on OMAP4. I see that with
> "Release
> > > v2011.11.0", my Panda could access the SD card contents, but with the
> > > current release it can no longer do so.
> > >
> > > Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use
> > > generic block layer to access the drives and do partition parsing) is
> when
> > > it stopped working.
> > >
> > > Any pointers?
> > >
> > > Thanks in advance,
> > > Anand
> > >
> > >
> > Found the problem. I was using a 4GB SD card with just a single FAT32
> > partition. The pentry.size is reported as 7744449 which fails the
> > check_offset_value() call.
> > I think this is the same issue Sanjeev reported in February.
> >
> > Below patch seems to fix the issue for now. But I'm not sure what's the
> > correct way to fix this.
>
> The correct way would be to make all this stuff 64bit types. I am
> working for this for quite some time and have a series for an older
> barebox doing this. I would have to rebase it.
>

Okay. Will be happy to test when you send it out.

Thanks,
Anand

--20cf303f6a54e10d5704bd51bf96
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Tue, Apr 10, 2012 at 2:53 PM, Sascha Hauer <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengu=
tronix.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">

<div class=3D"im">On Mon, Apr 02, 2012 at 08:07:16PM +0530, Anand Gadiyar w=
rote:<br>
&gt; On Fri, Mar 30, 2012 at 10:04 PM, Anand Gadiyar &lt;<a href=3D"mailto:=
gadiyar@gmail.com">gadiyar@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Hi all,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;ve just started playing with barebox on OMAP4. I see that w=
ith &quot;Release<br>
&gt; &gt; v2011.11.0&quot;, my Panda could access the SD card contents, but=
 with the<br>
&gt; &gt; current release it can no longer do so.<br>
&gt; &gt;<br>
&gt; &gt; Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 =
(Use<br>
&gt; &gt; generic block layer to access the drives and do partition parsing=
) is when<br>
&gt; &gt; it stopped working.<br>
&gt; &gt;<br>
&gt; &gt; Any pointers?<br>
&gt; &gt;<br>
&gt; &gt; Thanks in advance,<br>
&gt; &gt; Anand<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; Found the problem. I was using a 4GB SD card with just a single FAT32<=
br>
&gt; partition. The pentry.size is reported as 7744449 which fails the<br>
&gt; check_offset_value() call.<br>
&gt; I think this is the same issue Sanjeev reported in February.<br>
&gt;<br>
&gt; Below patch seems to fix the issue for now. But I&#39;m not sure what&=
#39;s the<br>
&gt; correct way to fix this.<br>
<br>
</div>The correct way would be to make all this stuff 64bit types. I am<br>
working for this for quite some time and have a series for an older<br>
barebox doing this. I would have to rebase it.<br></blockquote><div><br>Oka=
y. Will be happy to test when you send it out.<br><br>Thanks,<br>Anand<br><=
br></div></div>

--20cf303f6a54e10d5704bd51bf96--


--===============6603075461926958357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6603075461926958357==--

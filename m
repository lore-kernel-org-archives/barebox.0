Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f49.google.com ([209.85.219.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYEOZ-0003uv-BF
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 11:11:11 +0000
Received: by mail-oa0-f49.google.com with SMTP id l10so6953435oag.36
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 03:11:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121112075536.GP10369@pengutronix.de>
References: <CAHkwnC-dDfPesg5vy5V2rj7vdY_DH9cjfJ3gCVsm8xY-DPf35A@mail.gmail.com>
 <20121112075536.GP10369@pengutronix.de>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Tue, 13 Nov 2012 12:10:45 +0100
Message-ID: <CAHkwnC_FXJ3reNcwDuxhsC=fSG-dDSgg+7njS5sy7aCG5QCRoQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6163709666378553830=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: defaultenv-2: how to update a flash partition?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============6163709666378553830==
Content-Type: multipart/alternative; boundary=e89a8f839f6f61092004ce5e7904

--e89a8f839f6f61092004ce5e7904
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Nov 12, 2012 at 8:55 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> On Fri, Nov 09, 2012 at 12:06:38PM +0100, Fabio Porcedda wrote:
> > Hi all,
> >
> > I want to use the defaultenv-2 but i don't find any more the "update"
> > command
> > like in the defaultenv.
> > What is the recommended way to update a flash partition in the new
> > environment?
>
> erase /dev/env0
> cp /mnt/tftp/your-new-env /dev/env0
>
>
Thanks, it worked.


> (I was thinking about adding a -e parameter to cp to eventually skip the
> first step)
>

It seems a nice addition for me.

There is some plane in the future to add a "update" command, like in
"defaultenv"?

Thanks for the help and the great work with barebox, i like it very much.
-- 
Fabio Porcedda

--e89a8f839f6f61092004ce5e7904
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><div class=3D"gmail_quote">On Mon, Nov 12, 2012 =
at 8:55 AM, Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pe=
ngutronix.de" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">


<div>On Fri, Nov 09, 2012 at 12:06:38PM +0100, Fabio Porcedda wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I want to use the defaultenv-2 but i don&#39;t find any more the &quot=
;update&quot;<br>
&gt; command<br>
&gt; like in the defaultenv.<br>
&gt; What is the recommended way to update a flash partition in the new<br>
&gt; environment?<br>
<br>
</div>erase /dev/env0<br>
cp /mnt/tftp/your-new-env /dev/env0<br>
<br></blockquote><div><br>Thanks, it worked.<br>=A0<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
(I was thinking about adding a -e parameter to cp to eventually skip the<br=
>
first step)<span><font color=3D"#888888"><br></font></span></blockquote><di=
v><br>It seems a nice addition for me. <br></div><br>There is some plane in=
 the future to add a &quot;update&quot; command, like in &quot;defaultenv&q=
uot;?<br>


</div><br>Thanks for the help and the great work with barebox, i like it ve=
ry much.<br>-- <br>Fabio Porcedda<br><br>
</div>

--e89a8f839f6f61092004ce5e7904--


--===============6163709666378553830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6163709666378553830==--

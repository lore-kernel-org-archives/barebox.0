Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdDX-0000oT-ND
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 09:55:01 +0000
Received: by iaky10 with SMTP id y10so4973706iak.36
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 02:54:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1202101752190.15811@oneiric>
References: <alpine.DEB.2.02.1202101752190.15811@oneiric>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Fri, 13 Apr 2012 15:24:37 +0530
Message-ID: <CAO-mwNdrCAGs7qN2OHvWmC50s_gquMKk5TGcFbrSNu1=-Z=iqA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4181089198273646795=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add support for OMAP4460 revision detection.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

--===============4181089198273646795==
Content-Type: multipart/alternative; boundary=14dae9340c2f19479204bd8c7756

--14dae9340c2f19479204bd8c7756
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Feb 11, 2012 at 4:23 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>
>  Without yet adding in the underlying code, extend the revision
> checking code to return additional values for PandaBoard ES boards.
> Much of the code was taken close to verbatim from U-Boot.
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> --
>

 compile tested, and confirmed that this code behaves identically to
> the original panda configure and build for the three pandas i have:
>
>  * Rev A2 (boots)
>  * Rev EA3 (boots)
>  * Rev B1 ES (no output)
>
> so while there's still work to be done, this at least represents the
> necessary infrastructure to start *recognizing* panda ES boards.
>
>
For what it's worth,

Tested-by: Anand Gadiyar <gadiyar@ti.com>

On a Rev A3 (ES2.2) (boots) and on a REV B3 ES (no output again).

--14dae9340c2f19479204bd8c7756
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Sat, Feb 11, 2012 at 4:23 AM, Robert P. J. Da=
y <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@cra=
shcourse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">

<br>
<br>
 =A0Without yet adding in the underlying code, extend the revision<br>
checking code to return additional values for PandaBoard ES boards.<br>
Much of the code was taken close to verbatim from U-Boot.<br>
<br>
Signed-off-by: Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca=
">rpjday@crashcourse.ca</a>&gt;<br>
<br>
--<br>
=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0=
pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =A0compile tested, and confirmed that this code behaves identically to<br>
the original panda configure and build for the three pandas i have:<br>
<br>
 =A0* Rev A2 (boots)<br>
 =A0* Rev EA3 (boots)<br>
 =A0* Rev B1 ES (no output)<br>
<br>
so while there&#39;s still work to be done, this at least represents the<br=
>
necessary infrastructure to start *recognizing* panda ES boards.<br>
<br>
</blockquote><div><br>For what it&#39;s worth,<br><br>Tested-by: Anand Gadi=
yar &lt;<a href=3D"mailto:gadiyar@ti.com">gadiyar@ti.com</a>&gt;<br><br>On =
a Rev A3 (ES2.2) (boots) and on a REV B3 ES (no output again).<br><br></div=
>

</div>

--14dae9340c2f19479204bd8c7756--


--===============4181089198273646795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4181089198273646795==--

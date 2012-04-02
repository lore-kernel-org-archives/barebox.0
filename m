Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiO3-000139-4y
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:37:39 +0000
Received: by ggnk1 with SMTP id k1so1282715ggn.36
 for <barebox@lists.infradead.org>; Mon, 02 Apr 2012 07:37:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAO-mwNcOBNL-LFuyK9EbxUBqxLU3GAWUi61E40J5qunDP+n+ZA@mail.gmail.com>
References: <CAO-mwNcOBNL-LFuyK9EbxUBqxLU3GAWUi61E40J5qunDP+n+ZA@mail.gmail.com>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Mon, 2 Apr 2012 20:07:16 +0530
Message-ID: <CAO-mwNdKa4fukB23m_F1g=axhqw3S2stb2C6JbPXiob1Ty=xhg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7522113942685263707=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: OMAP4 Panda - MMC access broken
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

--===============7522113942685263707==
Content-Type: multipart/alternative; boundary=14dae9340ddbb3905d04bcb321b9

--14dae9340ddbb3905d04bcb321b9
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 30, 2012 at 10:04 PM, Anand Gadiyar <gadiyar@gmail.com> wrote:

> Hi all,
>
> I've just started playing with barebox on OMAP4. I see that with "Release
> v2011.11.0", my Panda could access the SD card contents, but with the
> current release it can no longer do so.
>
> Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use
> generic block layer to access the drives and do partition parsing) is when
> it stopped working.
>
> Any pointers?
>
> Thanks in advance,
> Anand
>
>
Found the problem. I was using a 4GB SD card with just a single FAT32
partition. The pentry.size is reported as 7744449 which fails the
check_offset_value() call.
I think this is the same issue Sanjeev reported in February.

Below patch seems to fix the issue for now. But I'm not sure what's the
correct way to fix this.

Index: barebox/common/partitions.c
===================================================================
--- barebox.orig/common/partitions.c
+++ barebox/common/partitions.c
@@ -129,8 +129,6 @@ static void __maybe_unused try_dos_parti
                /* do we have to ignore this partition due to limitations?
*/
                if (check_offset_value(pentry.first_sec) != 0)
                        continue;
-               if (check_offset_value(pentry.size) != 0)
-                       continue;

                if (pentry.first_sec != 0) {
                        pd->parts[pd->used_entries].first_sec =
pentry.first_sec;

--14dae9340ddbb3905d04bcb321b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, Mar 30, 2012 at 10:04 PM, Anand Gadiyar =
<span dir=3D"ltr">&lt;<a href=3D"mailto:gadiyar@gmail.com">gadiyar@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">

Hi all,<br><br>I&#39;ve just started playing with barebox on OMAP4. I see t=
hat with &quot;Release v2011.11.0&quot;, my Panda could access the SD card =
contents, but with the current release it can no longer do so.<br><br>
Git bisect shows commit 82db23d3f4c1de25bbd4b222a3bd9e81d00414f8 (Use gener=
ic block layer to access the drives and do partition parsing) is when it st=
opped working.<br>

<br>Any pointers?<br><br>Thanks in advance,<br><font color=3D"#888888">Anan=
d<br><br>
</font></blockquote></div><br>Found the problem. I was using a 4GB SD card =
with just a single FAT32 partition. The pentry.size is reported as 7744449 =
which fails the check_offset_value() call.<br>I think this is the same issu=
e Sanjeev reported in February.<br>

<br>Below patch seems to fix the issue for now. But I&#39;m not sure what&#=
39;s the correct way to fix this.<br><br>Index: barebox/common/partitions.c=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>

--- barebox.orig/common/partitions.c<br>+++ barebox/common/partitions.c<br>=
@@ -129,8 +129,6 @@ static void __maybe_unused try_dos_parti<br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* do we have to ignore this partition=
 due to limitations? */<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (check_offset_value(pentry=
.first_sec) !=3D 0)<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 conti=
nue;<br>-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (check_offset_value(=
pentry.size) !=3D 0)<br>-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 continue;<br><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 if (pentry.first_sec !=3D 0) {<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pd-&gt;parts[pd-&gt;used_entries].firs=
t_sec =3D pentry.first_sec;<br>

<br>

--14dae9340ddbb3905d04bcb321b9--


--===============7522113942685263707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7522113942685263707==--

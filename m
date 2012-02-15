Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-tul01m020-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxaxT-0005ty-Gu
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:15:31 +0000
Received: by obcuz6 with SMTP id uz6so1417782obc.36
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 01:15:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Wed, 15 Feb 2012 10:15:05 +0100
Message-ID: <CAM9uW_4Df7yazcWNvai0ffALC1eHrMUC5WetMNf=KJ7PBhm51w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7910352842669413665=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX27 clock settings
To: barebox@lists.infradead.org

--===============7910352842669413665==
Content-Type: multipart/alternative; boundary=e89a8fb1ef48ddf64e04b8fd2655

--e89a8fb1ef48ddf64e04b8fd2655
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Igor,

What revision of imx27 silicon do you have?
If it's a rev2.0 or 2.1, you shoult take a look a the freescale errata in
order to set your PLL properly.

Regards.

2012/2/14 Igor Trevisan <igt1972@gmail.com>

> Hi,
>
> I'm working on a custom board based on iMX27L. Initially I worked with
> Redboot
> as Linux bootloader but now, I'm happily working with Barebox (2012.01.0)
> having replaced Redboot with it.
>
> Everithing is fine (thanks to the guys in the list for helping me!) but..=
.
> I noticed that my Linux apps run more slowly within my system if it's
> started by Barebox
> then if it's started by Redbbot.
> I think it's a matter of internal clocks settings.
>
> I see that Redboot, for example, set:
>        CSR=3D0x33F38107
> while Barebox does:
>        writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
> That brings to CSR=3D0x33F30307 at the end of the PLLs restart procedure.
>
> Reading the Manual I can see that the differences between the two setting=
s
> mean having an arm_clk that is 2/3 and an AHB_clk that's the half.
>
> Is there a particular reason for having these "slower configuration"?
>
> I tried to change the lowlevel_init.S to force 0x33F38107 into CSCR
> at startup but, after that change, my board starts, has time to write
> somenthing on the
> serial console:
>
> "barebox 2012.01.0-svn11070-dirty1 (Feb 14 2012 - 11:10:39)
>
> Board: Freescale i=FF"
>
> and then restarts... continuously.
>
> Can anybody help me to understand this and to make (if possible) my
> system faster?
> Thanks in advance,
> Igor
>
>
> --
> "Don't find fault, find a remedy."
> (Henry Ford)
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>



--=20

_______________________________
*Kamel BOUHARA*
62 Bis Rue Carnot
60610 Lacroix Saint-Ouen

Tel n=B01:  +33634677323
     n=B02:  +33617832904

--e89a8fb1ef48ddf64e04b8fd2655
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Igor,<div><br></div><div>What revision of imx27 silicon do you have?</di=
v><div>If it&#39;s a rev2.0 or 2.1, you shoult take a look a the freescale =
errata in order to set your PLL properly.</div><div><br></div>Regards.<br>

<br><div class=3D"gmail_quote">2012/2/14 Igor Trevisan <span dir=3D"ltr">&l=
t;<a href=3D"mailto:igt1972@gmail.com">igt1972@gmail.com</a>&gt;</span><br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

Hi,<br>
<br>
I&#39;m working on a custom board based on iMX27L. Initially I worked with =
Redboot<br>
as Linux bootloader but now, I&#39;m happily working with Barebox (2012.01.=
0)<br>
having replaced Redboot with it.<br>
<br>
Everithing is fine (thanks to the guys in the list for helping me!) but...<=
br>
I noticed that my Linux apps run more slowly within my system if it&#39;s<b=
r>
started by Barebox<br>
then if it&#39;s started by Redbbot.<br>
I think it&#39;s a matter of internal clocks settings.<br>
<br>
I see that Redboot, for example, set:<br>
 =A0 =A0 =A0 =A0CSR=3D0x33F38107<br>
while Barebox does:<br>
 =A0 =A0 =A0 =A0writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, =
CSCR)<br>
That brings to CSR=3D0x33F30307 at the end of the PLLs restart procedure.<b=
r>
<br>
Reading the Manual I can see that the differences between the two settings<=
br>
mean having an arm_clk that is 2/3 and an AHB_clk that&#39;s the half.<br>
<br>
Is there a particular reason for having these &quot;slower configuration&qu=
ot;?<br>
<br>
I tried to change the lowlevel_init.S to force 0x33F38107 into CSCR<br>
at startup but, after that change, my board starts, has time to write<br>
somenthing on the<br>
serial console:<br>
<br>
&quot;barebox 2012.01.0-svn11070-dirty1 (Feb 14 2012 - 11:10:39)<br>
<br>
Board: Freescale i=FF&quot;<br>
<br>
and then restarts... continuously.<br>
<br>
Can anybody help me to understand this and to make (if possible) my<br>
system faster?<br>
Thanks in advance,<br>
Igor<br>
<font color=3D"#888888"><br>
<br>
--<br>
&quot;Don&#39;t find fault, find a remedy.&quot;<br>
(Henry Ford)<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br><br><div>_______=
________________________<br><i><font face=3D"&#39;comic sans ms&#39;, sans-=
serif">Kamel BOUHARA</font></i><div>62 Bis Rue Carnot<div>60610 Lacroix Sai=
nt-Ouen</div>

<div><br></div><div>Tel n=B01: =A0+33634677323</div><div>=A0=A0 =A0 n=B02: =
=A0+33617832904<br><br></div></div></div><br>

--e89a8fb1ef48ddf64e04b8fd2655--


--===============7910352842669413665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7910352842669413665==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q4B2A-0002pS-Pa
	for barebox@lists.infradead.org; Mon, 28 Mar 2011 11:54:59 +0000
Received: by wyb28 with SMTP id 28so3225435wyb.36
	for <barebox@lists.infradead.org>; Mon, 28 Mar 2011 04:54:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110328084642.GG7285@pengutronix.de>
References: <AANLkTi=igwESq-rAMFfW7rpeT_P8V3gxgEBnG740nfie@mail.gmail.com>
	<20110328084642.GG7285@pengutronix.de>
Date: Mon, 28 Mar 2011 21:54:56 +1000
Message-ID: <AANLkTikxqQzp2HWV=Tenu6TTs1BjsBpNURqyigOkf-ZQ@mail.gmail.com>
From: Geoff Smith <gjsmith@vardr.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0907804677=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Just how fast is barebox?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0907804677==
Content-Type: multipart/alternative; boundary=0016e64c3efac41adf049f899ca0

--0016e64c3efac41adf049f899ca0
Content-Type: text/plain; charset=ISO-8859-1

Thanks, very helpful info.

Looks like I may have to do something light weight like ecos.
I believe redboot is based on ecos so there may be a starting point there
for the i.mx27.

Regards
Geoff


On Mon, Mar 28, 2011 at 6:46 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> Hi Geoff,
>
> On Mon, Mar 28, 2011 at 01:25:18PM +1000, Geoff Smith wrote:
> > Apologies for the newbie question. I am looking for a fastboot option for
> >  the i.MX27
> >
> > I want to be capturing video data from a cold start within 300ms
> (preferably
> > 200ms).
>
> The best I could get out of an i.MX27 was about 700ms. The main limiting
> factor is how fast you can load an image from the boot medium (Nand
> flash in my case). Given that I can read from Nand with 16MB/s a 5MB
> image takes about 300ms to load. I think you'll need many dirty tricks
> doing this with Linux, like a massively stripped down kernel and perhaps
> starting the capture in the kernel (not in the application).
>
> I wouldn't say it's not possible, but it's definitely a hard task.
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>



-- 
*Geoff Smith
*
*Founder and CTO*
*gjsmith@vardr.com <mark@vardr.com>*
*+61 4 1200 7354
*

--0016e64c3efac41adf049f899ca0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks, very helpful info.<div><br></div><div>Looks like I may have to do s=
omething light weight like ecos.</div><div>I believe redboot is based on ec=
os so there may be a starting point there for the i.mx27.</div><div><br>
</div><div>Regards</div><div>Geoff</div><div><br><br><div class=3D"gmail_qu=
ote">On Mon, Mar 28, 2011 at 6:46 PM, Sascha Hauer <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>&gt;</spa=
n> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi Geoff,<br>
<div class=3D"im"><br>
On Mon, Mar 28, 2011 at 01:25:18PM +1000, Geoff Smith wrote:<br>
&gt; Apologies for the newbie question. I am looking for a fastboot option =
for<br>
&gt; =A0the i.MX27<br>
&gt;<br>
&gt; I want to be capturing video data from a cold start within 300ms (pref=
erably<br>
&gt; 200ms).<br>
<br>
</div>The best I could get out of an i.MX27 was about 700ms. The main limit=
ing<br>
factor is how fast you can load an image from the boot medium (Nand<br>
flash in my case). Given that I can read from Nand with 16MB/s a 5MB<br>
image takes about 300ms to load. I think you&#39;ll need many dirty tricks<=
br>
doing this with Linux, like a massively stripped down kernel and perhaps<br=
>
starting the capture in the kernel (not in the application).<br>
<br>
I wouldn&#39;t say it&#39;s not possible, but it&#39;s definitely a hard ta=
sk.<br>
<br>
Sascha<br>
<font color=3D"#888888"><br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br><span style=3D"b=
order-collapse:separate;color:rgb(0, 0, 0);font-family:Helvetica;font-size:=
medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px"><div style=3D"font-family:times new roman,serif=
">
<i><font size=3D"2">Geoff Smith<br></font></i></div><div style=3D"font-fami=
ly:times new roman,serif"><i><font size=3D"2">Founder and CTO</font></i></d=
iv><div style=3D"font-family:times new roman,serif"><i><font size=3D"2"><a =
href=3D"mailto:mark@vardr.com" target=3D"_blank">gjsmith@vardr.com</a></fon=
t></i></div>
<div style=3D"font-family:times new roman,serif"><i><font size=3D"2">+61 4 =
1200 7354<br></font></i></div><div><br></div></span><br>
</div>

--0016e64c3efac41adf049f899ca0--


--===============0907804677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0907804677==--

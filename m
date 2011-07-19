Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pv0-f177.google.com ([74.125.83.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjDLw-0004Bq-Rc
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:41:05 +0000
Received: by pvg20 with SMTP id 20so4752890pvg.36
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 09:40:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAM9uW_7ynAvvm_y_k0LiO5dzkuji1i4CYJvn6pZ7heNeQ6P=5A@mail.gmail.com>
References: <CAM9uW_7pYJS1jzPxcCPphPgMi=ckstKm8=_6dsrCRn3Bp-sCXw@mail.gmail.com>
	<20110718064437.GE20587@pengutronix.de>
	<CAM9uW_7ynAvvm_y_k0LiO5dzkuji1i4CYJvn6pZ7heNeQ6P=5A@mail.gmail.com>
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Tue, 19 Jul 2011 18:40:35 +0200
Message-ID: <CAM9uW_5koAxxk8Jgqe7_sEzCd0FNzb7d=KOBTaayT6GvqOMhhA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1167546245=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fwd: Nand MTD IOError -5
To: barebox@lists.infradead.org

--===============1167546245==
Content-Type: multipart/alternative; boundary=bcaec51dd16f9415ef04a86ec794

--bcaec51dd16f9415ef04a86ec794
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ----------
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: 2011/7/19
Subject: Re: Nand MTD IOError -5
To: Sascha Hauer <s.hauer@pengutronix.de>


2011/7/18 Sascha Hauer <s.hauer@pengutronix.de>
>
>> On Fri, Jul 15, 2011 at 01:21:21PM +0200, Kamel BOUHARA wrote:
>> > Hello,
>> >
>> > Im having a trouble with my Nand Flash device wich is a 512MiB Micron
>> with
>> > 4GB capacity.
>> > I get io error -5 for any erase/write operation on it like this :
>> >
>> >  barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand
>>
>> Is this really a phycard or have you just used it as a template for your
>> board?
>
>
No, it's not Im using it as a template because the fec,  I've also post for
it here :http://lists.infradead.org/pipermail/barebox/2011-July/003802.html

Sorry, no idea. It just looks there are quite many bad blocks. Does it
> work under Linux?


It doesn't work on Linux or u-boot, same error,  maybe I missed somethink, =
I
will look to make it work on u-boot with advanced nand command first
maybe...

Thanks anyway ! :/

2011/7/18 Sascha Hauer <s.hauer@pengutronix.de>

> On Fri, Jul 15, 2011 at 01:21:21PM +0200, Kamel BOUHARA wrote:
> > Hello,
> >
> > Im having a trouble with my Nand Flash device wich is a 512MiB Micron
> with
> > 4GB capacity.
> > I get io error -5 for any erase/write operation on it like this :
> >
> >  barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand
>
> Is this really a phycard or have you just used it as a template for your
> board?
>
> >
> > phy0: Link is up - 100/Full
> > host 192.168.0.2 is alive
> > > erasing partition /dev/nand0.barebox.bb
> > >
> > erase: I/O error
> >
> > flashing barebox.bin to /dev/nand0.barebox.bb
> > TFTP from server 192.168.0.2 ('barebox.bin' -> '/dev/nand0.barebox.bb')
> >         write: I/O error
> > tftp failed: error -5
> > And here is the device init at the boot runtime:
> > NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB
> 1,8V
> > 8-bi)
> >
> > nand_read_bbt: Bad block at 0x17840000
> >
> > nand_read_bbt: Bad block at 0x17860000
> >
> > nand_read_bbt: Bad block at 0x1f0c0000
> >
> > nand_read_bbt: Bad block at 0x1f0e0000
> >
> > nand_read_bbt: Bad block at 0x1f6c0000
> >
> > nand_read_bbt: Bad block at 0x1f6e0000
> >
> > So it seems tge device is detect and bbt are correctly calculated...
> > Any idea of what could be the problem ?
>
> Sorry, no idea. It just looks there are quite many bad blocks. Does it
> work under Linux?
>
> Sascha
>
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>



--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04





--=20
__________________________________
*Kamel BOUHARA*
7 rue Jules C=E9sar
02100 SAINT-QUENTIN
06.17.83.29.04

--bcaec51dd16f9415ef04a86ec794
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Kamel BOUHARA</b> <span dir=3D"ltr">=
&lt;<a href=3D"mailto:k.bouhara@gmail.com">k.bouhara@gmail.com</a>&gt;</spa=
n><br>

Date: 2011/7/19<br>Subject: Re: Nand MTD IOError -5<br>To: Sascha Hauer &lt=
;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.de</a>&gt;<b=
r><br><br><div class=3D"im"><blockquote class=3D"gmail_quote" style=3D"marg=
in-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left=
-width:1px;border-left-color:rgb(204, 204, 204);border-left-style:solid;pad=
ding-left:1ex">


2011/7/18 Sascha Hauer=A0<span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pe=
ngutronix.de" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span><br><b=
lockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;ma=
rgin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color:r=
gb(204, 204, 204);border-left-style:solid;padding-left:1ex">



<div>On Fri, Jul 15, 2011 at 01:21:21PM +0200, Kamel BOUHARA wrote:<br>&gt;=
 Hello,<br>&gt;<br>&gt; Im having a trouble with my Nand Flash device wich =
is a 512MiB Micron with<br>&gt; 4GB capacity.<br>&gt; I get io error -5 for=
 any erase/write operation on it like this :<br>



&gt;<br>&gt; =A0barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand<b=
r><br></div>Is this really a phycard or have you just used it as a template=
 for your<br>board?</blockquote></blockquote><div><br></div></div><div>No, =
it&#39;s not Im using it as a template because the fec, =A0I&#39;ve also po=
st for it here :<a href=3D"http://lists.infradead.org/pipermail/barebox/201=
1-July/003802.html" target=3D"_blank">http://lists.infradead.org/pipermail/=
barebox/2011-July/003802.html</a></div>

<div class=3D"im">
<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;ma=
rgin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204, 204, 204);border-left-style:solid;padding-left:1ex=
">


Sorry, no idea. It just looks there are quite many bad blocks. Does it<br>w=
ork under Linux?</blockquote><div><br></div></div><div>It doesn&#39;t work =
on Linux or u-boot, same error, =A0maybe I missed somethink, I will look to=
 make it work on u-boot with advanced nand command first maybe...</div>


<div><br></div><div>Thanks anyway ! :/</div><div><div></div><div class=3D"h=
5"><div>=A0</div>
<div class=3D"gmail_quote">2011/7/18 Sascha Hauer <span dir=3D"ltr">&lt;<a =
href=3D"mailto:s.hauer@pengutronix.de" target=3D"_blank">s.hauer@pengutroni=
x.de</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div>On Fri, Jul 15, 2011 at 01:21:21PM +0200, Kamel BOUHARA wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; Im having a trouble with my Nand Flash device wich is a 512MiB Micron =
with<br>
&gt; 4GB capacity.<br>
&gt; I get io error -5 for any erase/write operation on it like this :<br>
&gt;<br>
&gt; =A0barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand<br>
<br>
</div>Is this really a phycard or have you just used it as a template for y=
our<br>
board?<br>
<div><br>
&gt;<br>
&gt; phy0: Link is up - 100/Full<br>
&gt; host 192.168.0.2 is alive<br>
&gt; &gt; erasing partition /dev/<a href=3D"http://nand0.barebox.bb" target=
=3D"_blank">nand0.barebox.bb</a><br>
&gt; &gt;<br>
&gt; erase: I/O error<br>
&gt;<br>
&gt; flashing barebox.bin to /dev/<a href=3D"http://nand0.barebox.bb" targe=
t=3D"_blank">nand0.barebox.bb</a><br>
&gt; TFTP from server 192.168.0.2 (&#39;barebox.bin&#39; -&gt; &#39;/dev/<a=
 href=3D"http://nand0.barebox.bb" target=3D"_blank">nand0.barebox.bb</a>&#3=
9;)<br>
&gt; =A0 =A0 =A0 =A0 write: I/O error<br>
&gt; tftp failed: error -5<br>
&gt; And here is the device init at the boot runtime:<br>
&gt; NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB =
1,8V<br>
&gt; 8-bi)<br>
&gt;<br>
</div><div>&gt; nand_read_bbt: Bad block at 0x17840000<br>
&gt;<br>
&gt; nand_read_bbt: Bad block at 0x17860000<br>
&gt;<br>
&gt; nand_read_bbt: Bad block at 0x1f0c0000<br>
&gt;<br>
&gt; nand_read_bbt: Bad block at 0x1f0e0000<br>
&gt;<br>
&gt; nand_read_bbt: Bad block at 0x1f6c0000<br>
&gt;<br>
&gt; nand_read_bbt: Bad block at 0x1f6e0000<br>
&gt;<br>
&gt; So it seems tge device is detect and bbt are correctly calculated...<b=
r>
&gt; Any idea of what could be the problem ?<br>
<br>
</div>Sorry, no idea. It just looks there are quite many bad blocks. Does i=
t<br>
work under Linux?<br>
<br>
Sascha<br>
<font color=3D"#888888"><br>
<br>
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
</font></blockquote></div><br><br clear=3D"all"><br></div></div><div><div><=
/div><div class=3D"h5">-- <br>__________________________________<br><i><fon=
t face=3D"&#39;comic sans ms&#39;, sans-serif">Kamel BOUHARA</font></i><div=
>

7 rue Jules C=E9sar<div>02100 SAINT-QUENTIN<br>

06.17.83.29.04<br><br></div></div><br>
</div></div></div><br><br clear=3D"all"><br>-- <br>________________________=
__________<br><i><font face=3D"&#39;comic sans ms&#39;, sans-serif">Kamel B=
OUHARA</font></i><div>7 rue Jules C=E9sar<div>02100 SAINT-QUENTIN<br>06.17.=
83.29.04<br>

<br></div></div><br>

--bcaec51dd16f9415ef04a86ec794--


--===============1167546245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1167546245==--

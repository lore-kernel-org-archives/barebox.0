Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxgSp-0006Cg-4L
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 15:08:15 +0000
Received: by bkcjk13 with SMTP id jk13so1406696bkc.36
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 07:08:07 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <4F3B56B8.10709@mleia.com>
References: <CANtfVZ2NJpVLbX65u7qMv2+8n5djAzjv3YLxh8iuwc=vSccXnQ@mail.gmail.com>
 <4F3B56B8.10709@mleia.com>
Date: Wed, 15 Feb 2012 16:08:07 +0100
Message-ID: <CANtfVZ13AEMP0_AEFfVk0AJ+dGXtrJgjRrEv9X_nquTDZavO_w@mail.gmail.com>
From: =?ISO-8859-2?Q?Tomislav_Se=E8en?= <tomislav.secen@3plus.hr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6237267879686277743=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: LPC3250 support
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: barebox@lists.infradead.org

--===============6237267879686277743==
Content-Type: multipart/alternative; boundary=bcaec554d52c414fb004b9021453

--bcaec554d52c414fb004b9021453
Content-Type: text/plain; charset=ISO-8859-1

Hi Vladimir,

On Wed, Feb 15, 2012 at 7:54 AM, Vladimir Zapolskiy <vz@mleia.com> wrote:

> barebox works on one my LPC3250 board pretty well, but I have to polish
> the patches before public publishing in the barebox maillist.


That's cool!
I spent almost two days on it (using Sascha's old commits/patches), but I
can't even get barebox to boot/start from S1L (I have a phy3250 board and
was going for net, usb and i2c support in barebox).
I have no more time to mess around with barebox so it's back to u-boot.


> If it's ok for you to wait a couple of weeks, I'll publish the changes
> with basic support of LPC32XX SoCs.


Please do, it would be great to have it.

--
Cheers,
Tom

--bcaec554d52c414fb004b9021453
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Vladimir,<br><br><div class=3D"gmail_quote">On Wed, Feb 15, 2012 at 7:54=
 AM, Vladimir Zapolskiy <span dir=3D"ltr">&lt;<a href=3D"mailto:vz@mleia.co=
m">vz@mleia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
barebox works on one my LPC3250 board pretty well, but I have to polish the=
 patches before public publishing in the barebox maillist.</blockquote><div=
><br></div><div>That&#39;s cool!</div><div>I spent almost two days on it (u=
sing Sascha&#39;s old commits/patches), but I can&#39;t even get barebox to=
 boot/start from S1L (I have a phy3250 board and was going for net, usb and=
 i2c support in barebox).</div>
<div>I have no more time to mess around with barebox so it&#39;s back to u-=
boot.</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
If it&#39;s ok for you to wait a couple of weeks, I&#39;ll publish the chan=
ges with basic support of LPC32XX SoCs.</blockquote><div><br></div><div>Ple=
ase do, it would be great to have it.</div><div><br></div><div>--</div>
<div>Cheers,</div><div>Tom</div></div>

--bcaec554d52c414fb004b9021453--


--===============6237267879686277743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6237267879686277743==--

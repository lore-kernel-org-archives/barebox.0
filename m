Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZSYL-0007qT-2e
 for barebox@lists.infradead.org; Tue, 29 May 2012 19:58:01 +0000
Received: by ggcs5 with SMTP id s5so3297624ggc.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 12:57:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120529185755.GD30400@pengutronix.de>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
 <20120529101450.GS30400@pengutronix.de>
 <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
 <CAONxwYPuBCkUE2M6MgpgG7sJQjsYJ8WYhgfhaGUju4f7xcL89g@mail.gmail.com>
 <20120529185755.GD30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 21:57:38 +0200
Message-ID: <CAONxwYMJdybK9AgnOp5pVNPNFbDmb_-To=w0+S2P1098_mhGoQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4106565961100489614=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============4106565961100489614==
Content-Type: multipart/alternative; boundary=14dae9340cff602f3704c13240eb

--14dae9340cff602f3704c13240eb
Content-Type: text/plain; charset=ISO-8859-1

Hi

> Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2
> > imx-esdhc@imx-esdhc0: timeout 1
> > imx-esdhc@imx-esdhc0: timeout 1
> > imx-esdhc@imx-esdhc0: timeout 1
> > block_cache: blk->ops->read returned -110
>
> Ok, so your problem is inside the esdhc driver. Sorry, I don't know what
> quirks we may need here. Might be worth looking at the kernel or U-Boot
> to find out.


I don't know where this driver comes from, however I have been revising the
i.MX25 Chipset Errata and there are heaps of problems with regard to eSDHC.
I will try to address some of them (for example WML related) and see if
this fixes anything.


> > BUG: failure at common/block.c:249/block_put()!
> > BUG!
>
> Nevertheless we'll need a fix for this. I'll prepare a patch for this if
> noone else is faster ;)


Well, the BUG() is legit, I just seem to be the first to hit it. I am not
sure how you want to fix it, because if it's an issue with regard to
chipset errata, at least a warning has to be issues. Maybe BUG() is a bit
excessive ;).

Cheers
Roberto

>

--14dae9340cff602f3704c13240eb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"im">&gt; Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout=
 2<br>


&gt; imx-esdhc@imx-esdhc0: timeout 1<br>
&gt; imx-esdhc@imx-esdhc0: timeout 1<br>
&gt; imx-esdhc@imx-esdhc0: timeout 1<br>
&gt; block_cache: blk-&gt;ops-&gt;read returned -110<br>
<br>
</div>Ok, so your problem is inside the esdhc driver. Sorry, I don&#39;t kn=
ow what<br>
quirks we may need here. Might be worth looking at the kernel or U-Boot<br>
to find out.</blockquote><div><br></div><div>I don&#39;t know where this dr=
iver comes from, however I have been revising the i.MX25 Chipset Errata and=
 there are heaps of problems with regard to eSDHC. I will try to address so=
me of them (for example WML related) and see if this fixes anything.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; BUG: failure at common/block.c:249/block_put()!<br>
&gt; BUG!<br>
<br>
</div>Nevertheless we&#39;ll need a fix for this. I&#39;ll prepare a patch =
for this if<br>
noone else is faster ;)</blockquote><div><br></div><div>Well, the BUG() is =
legit, I just seem to be the first to hit it. I am not sure how you want to=
 fix it, because if it&#39;s an issue with regard to chipset errata, at lea=
st a warning has to be issues. Maybe BUG() is a bit excessive ;).</div>

<div><br></div><div>Cheers</div><div>Roberto=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">=A0</blockquote></div>

--14dae9340cff602f3704c13240eb--


--===============4106565961100489614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4106565961100489614==--

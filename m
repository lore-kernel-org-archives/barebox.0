Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TILw8-0005wI-Dq
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 16:00:10 +0000
Received: by pbcxa7 with SMTP id xa7so6127959pbc.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 09:00:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120930152919.GT26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
 <20120930140225.GR26553@game.jcrosoft.org>
 <CAAMcf8Aa00YqVG-87F1Lk+_oCHwrRCeCTKE7G9g_QDK1C2tMcw@mail.gmail.com>
 <20120930152919.GT26553@game.jcrosoft.org>
Date: Sun, 30 Sep 2012 18:00:06 +0200
Message-ID: <CAAMcf8Bw5vB7-9aFUo22yegTg+AhtTR35340DYnxb2qZfupLKA@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8773537594031024750=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============8773537594031024750==
Content-Type: multipart/alternative; boundary=e89a8ffba97900d20b04caed62b3

--e89a8ffba97900d20b04caed62b3
Content-Type: text/plain; charset=UTF-8

It's out of my control:
 The OMAP4 processor has an internal ROM which is in charge of the USB port
for booting.
Once the user application is running the USB communications are not closed
and can be reused by the user application through the ROM public API.
The OMAP4 ROM is implemented in a way it requires interrupts enabled.

Regards,
  Vicente.

On Sun, Sep 30, 2012 at 5:29 PM, Jean-Christophe PLAGNIOL-VILLARD <
plagnioj@jcrosoft.com> wrote:

> On 17:02 Sun 30 Sep     , vj wrote:
> >    In fact the interrupts get enabled at omap4_usbboot_open, it's
> required
> >    for usb transfers.
> >    For this reason the interrupts are disabled at barebox exit.
> why do you enable the interrupts?
>
> we never use interrupts in barebox
>
> Best Regards,
> J.
>

--e89a8ffba97900d20b04caed62b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It&#39;s out of my control:<br>=C2=A0The OMAP4 processor has an internal RO=
M which is in charge of the USB port for booting.<br>Once the user applicat=
ion is running the USB communications are not closed and can be reused by t=
he user application through the ROM public API.<br>
The OMAP4 ROM is implemented in a way it requires interrupts enabled.<br><b=
r>Regards,<br>=C2=A0 Vicente.<br><br><div class=3D"gmail_quote">On Sun, Sep=
 30, 2012 at 5:29 PM, Jean-Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&l=
t;<a href=3D"mailto:plagnioj@jcrosoft.com" target=3D"_blank">plagnioj@jcros=
oft.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 17:02 Sun 30 Sep =C2=A0=
 =C2=A0 , vj wrote:<br>
&gt; =C2=A0 =C2=A0In fact the interrupts get enabled at omap4_usbboot_open,=
 it&#39;s required<br>
&gt; =C2=A0 =C2=A0for usb transfers.<br>
&gt; =C2=A0 =C2=A0For this reason the interrupts are disabled at barebox ex=
it.<br>
</div>why do you enable the interrupts?<br>
<br>
we never use interrupts in barebox<br>
<br>
Best Regards,<br>
J.<br>
</blockquote></div><br>

--e89a8ffba97900d20b04caed62b3--


--===============8773537594031024750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8773537594031024750==--

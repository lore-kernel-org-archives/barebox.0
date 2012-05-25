Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXqgj-0005UW-2H
 for barebox@lists.infradead.org; Fri, 25 May 2012 09:20:03 +0000
Received: by ggcs5 with SMTP id s5so740310ggc.36
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 02:19:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120524171738.GZ30400@pengutronix.de>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524171738.GZ30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 25 May 2012 11:19:38 +0200
Message-ID: <CAONxwYP6+aGWNKzuQ1N2Ez5CZXwvWGcpgabYbxsfQiMwPGk=sQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5050092006566620726=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============5050092006566620726==
Content-Type: multipart/alternative; boundary=14dae934082752f8a404c0d8dfb4

--14dae934082752f8a404c0d8dfb4
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi

On Thu, May 24, 2012 at 7:17 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote=
:

> On Thu, May 24, 2012 at 03:18:13PM +0200, Roberto Nibali wrote:
> > Hi Eric
> >
> > On Thu, May 24, 2012 at 2:58 PM, Eric B=E9nard <eric@eukrea.com> wrote:
> >
> >
> >
> > I support WEIM configuration is done in the low level part, isn't it?
>
> You don't need to do it in lowlevel init, just before registering the
> cfi device is enough. Usually it's good habit to do only the absolutely
> necessary things in lowlevel init. Doing things later increases the
> chance that you get useful debug output when something goes wrong
>
> I read the different board initialization routines over and over again,
but can't find a common pattern. From what I see the lowlevel_init (which
has been converted nicely into a C file), only AIPS, MAX, MPLL core clock,
all clocks, SDRAM are initialized, but I have seen AIPS and MAX setups in
core_init functions (eukrea_cpuimx35.c), as well as clock setups in
console_init and other places. So, what's the bare minimum in lowlevel to
set up? SDRAM/MDDR? What's the order of things?

I am merely asking because I have come a long way trying to debug an issue
with weird I/O and clock behaviour on the ESDHC and other parts of my mx25
device.

Thanks and best regards
Roberto

--14dae934082752f8a404c0d8dfb4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote">On Thu, May 24, 2012 at 7:17 PM, Sasch=
a Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" tar=
get=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">

<div class=3D"im">On Thu, May 24, 2012 at 03:18:13PM +0200, Roberto Nibali =
wrote:<br>
&gt; Hi Eric<br>
&gt;<br>
&gt; On Thu, May 24, 2012 at 2:58 PM, Eric B=E9nard &lt;<a href=3D"mailto:e=
ric@eukrea.com">eric@eukrea.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div><div class=3D"im">&gt; I support WEIM configuration is done in the lo=
w level part, isn&#39;t it?<br>
<br>
</div>You don&#39;t need to do it in lowlevel init, just before registering=
 the<br>
cfi device is enough. Usually it&#39;s good habit to do only the absolutely=
<br>
necessary things in lowlevel init. Doing things later increases the<br>
chance that you get useful debug output when something goes wrong<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>I=
 read the different board initialization routines over and over again, but =
can&#39;t find a common pattern. From what I see the lowlevel_init (which h=
as been converted nicely into a C file), only AIPS, MAX, MPLL core clock, a=
ll clocks, SDRAM are initialized, but I have seen AIPS and MAX setups in co=
re_init functions (eukrea_cpuimx35.c), as well as clock setups in console_i=
nit and other places. So, what&#39;s the bare minimum in lowlevel to set up=
? SDRAM/MDDR? What&#39;s the order of things?=A0</div>

<div><br></div><div>I am merely asking because I have come a long way tryin=
g to debug an issue with weird I/O and clock behaviour on the ESDHC and oth=
er parts of my mx25 device.</div><div><br></div><div>Thanks and best regard=
s</div>

<div>Roberto</div></div>

--14dae934082752f8a404c0d8dfb4--


--===============5050092006566620726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5050092006566620726==--

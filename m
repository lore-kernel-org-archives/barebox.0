Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SX7LA-00007f-9D
 for barebox@lists.infradead.org; Wed, 23 May 2012 08:54:45 +0000
Received: by ggcs5 with SMTP id s5so7098973ggc.36
 for <barebox@lists.infradead.org>; Wed, 23 May 2012 01:54:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120523083809.GU30400@pengutronix.de>
References: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
 <20120522184838.GN30400@pengutronix.de>
 <CAONxwYOMMoeRwyUoLwQkLO6eN3M-X0Wq6nS=LNZk_+oX7U97Bw@mail.gmail.com>
 <20120523083809.GU30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Wed, 23 May 2012 10:54:22 +0200
Message-ID: <CAONxwYNpAcNS_UQSSAq+FuJsw0g89YRD6DO-3c9nEs-L7Ap4pQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6039543995879277671=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: SD card probe failure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============6039543995879277671==
Content-Type: multipart/alternative; boundary=e89a8f3bac1f40be1704c0b049d0

--e89a8f3bac1f40be1704c0b049d0
Content-Type: text/plain; charset=ISO-8859-1

Hi

> What's going on here? I'll investigate this further, because in real life
> I
> > have massive SD card write speed issues on my mx25 device on any kernel
> > tested from 2.6.37 to 3.3.4 so far.
>
> I try to keep the iomux descriptions in sync with the kernel. So when
> there is a bug in the kernel it's likely present in barebox aswell.
> Another thing which you might want to investigate is the clock
> frequency. Please check with an oscilloscope if we really have 25MHz as
> suggested above.
>
>
I used exactly the same iomux descriptions, but we have the same issue in
the kernel with huge timeouts. One of the reasons I try to switch to
barebox is its simplicity of the driver ideology close to the kernel. Also,
what are the default pin mux settings for the ESDHC on mx25, if I comment
the following?

        /*
        MX25_PAD_SD1_CMD__SD1_CMD,
        MX25_PAD_SD1_CLK__SD1_CLK,
        MX25_PAD_SD1_DATA0__SD1_DATA0,
        MX25_PAD_SD1_DATA1__SD1_DATA1,
        MX25_PAD_SD1_DATA2__SD1_DATA2,
        MX25_PAD_SD1_DATA3__SD1_DATA3,
        */

I thought it might just fallback to the same pin mux but without the 47k
pullup (NO_PAD_CTRL). This does not seem to be the case, because I have
replaced the definition of the iomux definitions with NO_PAD_CTRL and the
problem remains. Only commenting them out seems to have an effect. So,
something is either really wrong with my hardware or there has to be
another influence.

The oscilloscope shows 190kHz when it fails, 33.33MHz when it works ....
interesting. Barebox initializes mpll to 532Mhz and consequently sets sdhc1
to 66.5Mzh. Invoking 'cpufreq 399' resets the clocks, however does not
adjust the sdhc1 one as on the oscilloscope it stays on 33.33Mhz.

What next?

Cheers
Roberto

--e89a8f3bac1f40be1704c0b049d0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"im">&gt; What&#39;s going on here? I&#39;ll investigate this further=
, because in real life I<br>


&gt; have massive SD card write speed issues on my mx25 device on any kerne=
l<br>
&gt; tested from 2.6.37 to 3.3.4 so far.<br>
<br>
</div>I try to keep the iomux descriptions in sync with the kernel. So when=
<br>
there is a bug in the kernel it&#39;s likely present in barebox aswell.<br>
Another thing which you might want to investigate is the clock<br>
frequency. Please check with an oscilloscope if we really have 25MHz as<br>
suggested above.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>I used exactly the same iomux descriptions, but we have the s=
ame issue in the kernel with huge timeouts. One of the reasons I try to swi=
tch to barebox is its simplicity of the driver ideology close to the kernel=
. Also, what are the default pin mux settings for the ESDHC on mx25, if I c=
omment the following?</div>

<div><br></div><div><div>=A0 =A0 =A0 =A0 /*</div><div>=A0 =A0 =A0 =A0 MX25_=
PAD_SD1_CMD__SD1_CMD,</div><div>=A0 =A0 =A0 =A0 MX25_PAD_SD1_CLK__SD1_CLK,<=
/div><div>=A0 =A0 =A0 =A0 MX25_PAD_SD1_DATA0__SD1_DATA0,</div><div>=A0 =A0 =
=A0 =A0 MX25_PAD_SD1_DATA1__SD1_DATA1,</div>

<div>=A0 =A0 =A0 =A0 MX25_PAD_SD1_DATA2__SD1_DATA2,</div><div>=A0 =A0 =A0 =
=A0 MX25_PAD_SD1_DATA3__SD1_DATA3,</div><div>=A0 =A0 =A0 =A0 */</div></div>=
<div><br></div><div>I thought it might just fallback to the same pin mux bu=
t without the 47k pullup (NO_PAD_CTRL). This does not seem to be the case, =
because I have replaced the definition of the iomux definitions with NO_PAD=
_CTRL and the problem remains. Only commenting them out seems to have an ef=
fect. So, something is either really wrong with my hardware or there has to=
 be another influence.</div>

<div><br></div><div>The oscilloscope shows 190kHz when it fails, 33.33MHz w=
hen it works .... interesting. Barebox initializes mpll to 532Mhz and conse=
quently sets sdhc1 to 66.5Mzh. Invoking &#39;cpufreq 399&#39; resets the cl=
ocks, however does not adjust the sdhc1 one as on the oscilloscope it stays=
 on 33.33Mhz.</div>

<div><br></div><div>What next?</div><div><br></div><div>Cheers</div><div>Ro=
berto</div></div>

--e89a8f3bac1f40be1704c0b049d0--


--===============6039543995879277671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6039543995879277671==--

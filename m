Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXXw3-0003WO-Hx
 for barebox@lists.infradead.org; Thu, 24 May 2012 13:18:36 +0000
Received: by qcsu28 with SMTP id u28so6572621qcs.36
 for <barebox@lists.infradead.org>; Thu, 24 May 2012 06:18:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120524145837.42085b83@eb-e6520>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 24 May 2012 15:18:13 +0200
Message-ID: <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0258688116772358593=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

--===============0258688116772358593==
Content-Type: multipart/alternative; boundary=14dae9340827b6501704c0c81644

--14dae9340827b6501704c0c81644
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Eric

On Thu, May 24, 2012 at 2:58 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> Hi Roberto,
>
> Le Thu, 24 May 2012 14:49:36 +0200,
> Roberto Nibali <rnibali@gmail.com> a =E9crit :
> > I haven't found a combination of root/rootfstype yet that permits me to
> > boot from barebox either from NFS, TFTP, MMC/SD or NOR yet. No matter
> what
> > I try, the kernel spits back at me.
> >
> well NAND boot + nand rootfs works fine here (cpuimx25) and I assume
> NAND boot + sd rootfs would work as sd is properly detected during boot.
>
> Yep, I believe it's more a question of me setting the parameters correctl=
y
upon boot. But without a proper low level init (which I don't have because
I do not really understand all the details of the low level code), there
are other factors which could inhibit the proper boot, as you mention below=
.


> > Also I have the problem that my NOR is only detected when using barebox
> as
> > a second stage boot loader from uboot. If booting from SD into barebox,
> the
> > NOR is not detected. I have added the following changes to figure out
> > what's going on:
> >
> > .../...
> > What's going on here?
> >
> bad iomux and/or bad WEIM configuration


I support WEIM configuration is done in the low level part, isn't it? Where
would I find an appropriate example? I have been reading all the fsl
board's low_level codes, but have a hard time figuring out how to apply it
to my board.

With regard to the IOMUX, I was under the impression that it does not
matter much, since after low level code run, the execution path is:

        late_initcall()
        mem_initcall()
        device_initcall() --> add_cfi_flash_device()
        console_initcall() --> mxc_iomux_v3_setup_multiple_pads()
        core_initcall()

So CFI/NOR detection happens before IOMUX setup, at least that's what I
have gathered for my board copying from various other examples in barebox.
What would the correct code execution path be from the architectural point
of view?

Best regards
Roberto

--14dae9340827b6501704c0c81644
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Eric<br><br><div class=3D"gmail_quote">On Thu, May 24, 2012 at 2:58 PM, =
Eric B=E9nard <span dir=3D"ltr">&lt;<a href=3D"mailto:eric@eukrea.com" targ=
et=3D"_blank">eric@eukrea.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

Hi Roberto,<br>
<br>
Le Thu, 24 May 2012 14:49:36 +0200,<br>
<div class=3D"im">Roberto Nibali &lt;<a href=3D"mailto:rnibali@gmail.com">r=
nibali@gmail.com</a>&gt; a =E9crit :<br>
</div><div class=3D"im">&gt; I haven&#39;t found a combination of root/root=
fstype yet that permits me to<br>
&gt; boot from barebox either from NFS, TFTP, MMC/SD or NOR yet. No matter =
what<br>
&gt; I try, the kernel spits back at me.<br>
&gt;<br>
</div>well NAND boot + nand rootfs works fine here (cpuimx25) and I assume<=
br>
NAND boot + sd rootfs would work as sd is properly detected during boot.<br=
>
<div class=3D"im"><br></div></blockquote><div>Yep, I believe it&#39;s more =
a question of me setting the parameters correctly upon boot. But without a =
proper low level init (which I don&#39;t have because I do not really under=
stand all the details of the low level code), there are other factors which=
 could inhibit the proper boot, as you mention below.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
&gt; Also I have the problem that my NOR is only detected when using barebo=
x as<br>
&gt; a second stage boot loader from uboot. If booting from SD into barebox=
, the<br>
&gt; NOR is not detected. I have added the following changes to figure out<=
br>
&gt; what&#39;s going on:<br>
&gt;<br>
</div>&gt; .../...<br>
<div class=3D"im">&gt; What&#39;s going on here?<br>
&gt;<br>
</div>bad iomux and/or bad WEIM configuration</blockquote><div><br></div><d=
iv>I support WEIM configuration is done in the low level part, isn&#39;t it=
? Where would I find an appropriate example? I have been reading all the fs=
l board&#39;s low_level codes, but have a hard time figuring out how to app=
ly it to my board.=A0</div>

<div><br></div><div>With regard to the IOMUX, I was under the impression th=
at it does not matter much, since after low level code run, the execution p=
ath is:</div><div><br></div><div><div>=A0 =A0 =A0 =A0 late_initcall()</div>=
<div>

=A0 =A0 =A0 =A0 mem_initcall()</div><div>=A0 =A0 =A0 =A0 device_initcall() =
--&gt;=A0add_cfi_flash_device()</div><div>=A0 =A0 =A0 =A0 console_initcall(=
) --&gt;=A0mxc_iomux_v3_setup_multiple_pads()</div><div>=A0 =A0 =A0 =A0 cor=
e_initcall()</div></div><div><br>

</div><div>So CFI/NOR detection happens before IOMUX setup, at least that&#=
39;s what I have gathered for my board copying from various other examples =
in barebox. What would the correct code execution path be from the architec=
tural point of view?</div>

<div><br></div><div>Best regards</div><div>Roberto</div></div>

--14dae9340827b6501704c0c81644--


--===============0258688116772358593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0258688116772358593==--

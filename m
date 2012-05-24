Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXY8V-0003sL-O3
 for barebox@lists.infradead.org; Thu, 24 May 2012 13:31:29 +0000
Date: Thu, 24 May 2012 15:31:19 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120524153119.6d724afc@eb-e6520>
In-Reply-To: <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

Le Thu, 24 May 2012 15:18:13 +0200,
Roberto Nibali <rnibali@gmail.com> a =E9crit :
> On Thu, May 24, 2012 at 2:58 PM, Eric B=E9nard <eric@eukrea.com> wrote:
> > Le Thu, 24 May 2012 14:49:36 +0200,
> > Roberto Nibali <rnibali@gmail.com> a =E9crit :
> > > I haven't found a combination of root/rootfstype yet that permits me =
to
> > > boot from barebox either from NFS, TFTP, MMC/SD or NOR yet. No matter
> > what
> > > I try, the kernel spits back at me.
> > >
> > well NAND boot + nand rootfs works fine here (cpuimx25) and I assume
> > NAND boot + sd rootfs would work as sd is properly detected during boot.
> >
> > Yep, I believe it's more a question of me setting the parameters correc=
tly
> upon boot. But without a proper low level init (which I don't have because
> I do not really understand all the details of the low level code), there
> are other factors which could inhibit the proper boot, as you mention bel=
ow.
> =

if your sd's partitions are detected by the kernel you must be able to
boot a rootfs on it it's just a bootargs problem (and kernel
configuration to have the right FS included).
> =

> > > Also I have the problem that my NOR is only detected when using bareb=
ox
> > as
> > > a second stage boot loader from uboot. If booting from SD into barebo=
x,
> > the
> > > NOR is not detected. I have added the following changes to figure out
> > > what's going on:
> > >
> > > .../...
> > > What's going on here?
> > >
> > bad iomux and/or bad WEIM configuration
> =

> =

> I support WEIM configuration is done in the low level part, isn't it? Whe=
re
> would I find an appropriate example? I have been reading all the fsl
> board's low_level codes, but have a hard time figuring out how to apply it
> to my board.
> =

> With regard to the IOMUX, I was under the impression that it does not
> matter much, since after low level code run, the execution path is:
> =

>         late_initcall()
>         mem_initcall()
>         device_initcall() --> add_cfi_flash_device()
>         console_initcall() --> mxc_iomux_v3_setup_multiple_pads()
>         core_initcall()
> =

> So CFI/NOR detection happens before IOMUX setup, at least that's what I
> have gathered for my board copying from various other examples in barebox.
> What would the correct code execution path be from the architectural point
> of view?
> =

nothing prevents you from moving mxc_iomux_v3_setup_multiple_pads to
device_initcall as done in =

http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/euk=
rea_cpuimx25/eukrea_cpuimx25.c;h=3D1b8f618138023b88893a024ddc0c078b7b9f2325=
;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a

for the weim setting you may need to do something similar to what is
done on line 187 of :
http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/euk=
rea_cpuimx27/eukrea_cpuimx27.c;h=3D63e87c9551c440edab572f5252a503ba4d533161=
;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

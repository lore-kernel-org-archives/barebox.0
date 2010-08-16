Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Okzzi-00081W-8v
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 13:44:56 +0000
Received: by gyf2 with SMTP id 2so2261639gyf.36
	for <barebox@lists.infradead.org>; Mon, 16 Aug 2010 06:44:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100816091330.GN27749@pengutronix.de>
References: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
	<20100816091330.GN27749@pengutronix.de>
Date: Mon, 16 Aug 2010 19:14:52 +0530
Message-ID: <AANLkTi=i9OVu5g1i1_AXquB_TzX8uE9o6=vMTqmxmhRo@mail.gmail.com>
From: kuldeep ghan <ghankp@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1167770158=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: changes for reducing DDR size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1167770158==
Content-Type: multipart/alternative; boundary=00151750dc1c796456048df109b5

--00151750dc1c796456048df109b5
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha,
    >> You have to adjust the TEXT_BASE in arch/arm/mach-imx/Kconfig so that
the
resulting link address is is your address space.

        I have changed the TEXT_BASE to 0xA1F000000. Now it is pointing to
31st MB of 1st chip select. I did not understand what do you mean by "
resulting
link address is your address space " ?

According to TEXT_BASE at 0xA1F000000, i have following stack and malloc
area's

                     Malloc space: 0xa1900000 -> 0xa1f00000 (size  6 MB)
                     Stack space : 0xa18f8000 -> 0xa1900000 (size 32 kB)

    >> For Linux you have to adjust the device size of  the device which is
passed to armlinux_add_dram() to 64MB.

 I am adding two device using armlinux_add_dram() each with 32MB size and
map_base address of 0xA0000000 and 0xB0000000 respectively.. Is that fine or
Can I have one device registered with map_base address of 0xA0000000 and
64MB size??

I have enabled MMU in barebox. There also i have a change for
arm_create_section(). Following is section of code i have in
pcm038_mmu_init()

*static void pcm038_mmu_init(void)
{
        mmu_init();

        arm_create_section(0xa0000000, 0xa0000000, 32, PMD_SECT_DEF_CACHED);
        arm_create_section(0xb0000000, 0xa0000000, 32,
PMD_SECT_DEF_UNCACHED);


        setup_dma_coherent(0x10000000);

#if TEXT_BASE & (0x100000 - 1)
#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
#else
        arm_create_section(0x0,        TEXT_BASE,   1,
PMD_SECT_DEF_UNCACHED);
#endif
        mmu_enable();
}*

With all these changes, I see ping command hangs.. :(

   If I replace the macro from PMD_SECT_DEF_UNCACHED to PMD_SECT_DEF_CACHED
in the function pcm038_mmu_init(),  the ping command throws some
transmission timeout messages and exits saying the the destination is not
Alive.

It would be great if you can help me out!!

Thanks,
Kuldeep.

On Mon, Aug 16, 2010 at 2:43 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

>
> Hi,
>
> On Fri, Aug 13, 2010 at 08:47:38PM +0530, kuldeep ghan wrote:
> > Hi,
> >         I am using PCM038 based custom board with changes in Memory
> > configuration. I want to know what all changes i have to do in barebox
> > source if I am reducing the size of DDR to 64 MB.
> > I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot
> the
> > board with changes in pcm038 and lowlevel_init.S. I see that both the
> DDRs
> > are initialized properly and able to write and read to DDR address space.
> >          Ping to command is failing with these changes.  And I am not
> sure
> > about the changes required for stack size and malloc size.
>
> You have to adjust the TEXT_BASE in arch/arm/mach-imx/Kconfig so that the
> resulting link address is is your address space. This should be
> sufficient for barebox. For Linux you have to adjust the device size of
> the device which is passed to armlinux_add_dram() to 64MB.
>
> I hope this helps
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

--00151750dc1c796456048df109b5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha,<br>=A0=A0=A0 &gt;&gt; You have to adjust the TEXT_BASE in arch/a=
rm/mach-imx/Kconfig so that the<br>
resulting link address is is your address space.=A0=A0=A0=A0 <br><br>=A0=A0=
=A0=A0=A0=A0=A0 I have changed the TEXT_BASE to 0xA1F000000. Now it is poin=
ting to 31st MB of 1st chip select. I did not understand what do you mean b=
y &quot; <span style=3D"color: rgb(51, 102, 255);">resulting link address i=
s your address space &quot; ?</span><br>
<br>According to TEXT_BASE at 0xA1F000000, i have following stack and mallo=
c area&#39;s<br><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 Malloc space: 0xa1900000 -&gt; 0xa1f00000 (size=A0 6 MB)<br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Stack space : 0xa18f=
8000 -&gt; 0xa1900000 (size 32 kB)<br>
<br>=A0=A0=A0 &gt;&gt; For Linux you have to adjust the device size of=A0 t=
he device which is passed to armlinux_add_dram() to 64MB.<br><br>=A0I am ad=
ding two device using armlinux_add_dram() each with 32MB size and map_base =
address of 0xA0000000 and 0xB0000000 respectively.. <span style=3D"color: r=
gb(51, 51, 255);">Is that fine or Can I have one device registered with map=
_base address of 0xA0000000 and 64MB size??</span><br>
<br>I have enabled MMU in barebox. There also i have a change for arm_creat=
e_section(). Following is section of code i have in pcm038_mmu_init()<br><b=
r><i>static void pcm038_mmu_init(void)<br>{<br>=A0=A0=A0=A0=A0=A0=A0 mmu_in=
it();<br><br>
=A0=A0=A0=A0=A0=A0=A0 arm_create_section(0xa0000000, 0xa0000000, 32, PMD_SE=
CT_DEF_CACHED);<br>=A0=A0=A0=A0=A0=A0=A0 arm_create_section(0xb0000000, 0xa=
0000000, 32, PMD_SECT_DEF_UNCACHED);<br><br><br>=A0=A0=A0=A0=A0=A0=A0 setup=
_dma_coherent(0x10000000);<br><br>#if TEXT_BASE &amp; (0x100000 - 1)<br>
#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary<br=
>#else<br>=A0=A0=A0=A0=A0=A0=A0 arm_create_section(0x0,=A0=A0=A0=A0=A0=A0=
=A0 TEXT_BASE,=A0=A0 1, PMD_SECT_DEF_UNCACHED);<br>#endif<br>=A0=A0=A0=A0=
=A0=A0=A0 mmu_enable();<br>}</i><br><br>With all these changes, I see ping =
command hangs.. :(<br>
<br>=A0=A0 If I replace the macro from PMD_SECT_DEF_UNCACHED to PMD_SECT_DE=
F_CACHED in the function pcm038_mmu_init(),=A0 the ping command throws some=
 transmission timeout messages and exits saying the the destination is not =
Alive.<br>
<br>It would be great if you can help me out!!<br><br>Thanks,<br>Kuldeep.<b=
r><br><div class=3D"gmail_quote">On Mon, Aug 16, 2010 at 2:43 PM, Sascha Ha=
uer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer=
@pengutronix.de</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><br>
Hi,<br>
<div><div></div><div class=3D"h5"><br>
On Fri, Aug 13, 2010 at 08:47:38PM +0530, kuldeep ghan wrote:<br>
&gt; Hi,<br>
&gt; =A0 =A0 =A0 =A0 I am using PCM038 based custom board with changes in M=
emory<br>
&gt; configuration. I want to know what all changes i have to do in barebox=
<br>
&gt; source if I am reducing the size of DDR to 64 MB.<br>
&gt; I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to bo=
ot the<br>
&gt; board with changes in pcm038 and lowlevel_init.S. I see that both the =
DDRs<br>
&gt; are initialized properly and able to write and read to DDR address spa=
ce.<br>
&gt; =A0 =A0 =A0 =A0 =A0Ping to command is failing with these changes. =A0A=
nd I am not sure<br>
&gt; about the changes required for stack size and malloc size.<br>
<br>
</div></div>You have to adjust the TEXT_BASE in arch/arm/mach-imx/Kconfig s=
o that the<br>
resulting link address is is your address space. This should be<br>
sufficient for barebox. For Linux you have to adjust the device size of<br>
the device which is passed to armlinux_add_dram() to 64MB.<br>
<br>
I hope this helps<br>
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
</font></blockquote></div><br>

--00151750dc1c796456048df109b5--


--===============1167770158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1167770158==--

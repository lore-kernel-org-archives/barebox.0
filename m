Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXrSG-0001Y0-85
 for barebox@lists.infradead.org; Fri, 25 May 2012 10:09:11 +0000
Date: Fri, 25 May 2012 12:08:58 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120525120858.77dd6e7a@eb-e6520>
In-Reply-To: <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
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

Hi Roberto,

Le Fri, 25 May 2012 11:04:52 +0200,
Roberto Nibali <rnibali@gmail.com> a =E9crit :
> > for the weim setting you may need to do something similar to what is
> > done on line 187 of :
> >
> > http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards=
/eukrea_cpuimx27/eukrea_cpuimx27.c;h=3D63e87c9551c440edab572f5252a503ba4d53=
3161;hb=3Dc48de4beee21c3a5573cec084123c33ae08f6f7a
> >
> >
> Now that piece certainly was missing, but how the heck did you find out
> those register values? Where did you get the information about writing to
> chip select 0 and selecting:
> =

> CSCR0U: 0x00008F03
> CSCR0L: 0xA0330D01
> CSCR0A: 0x002208C0
> =

you need the reference manual of the i.MX25 to know the meaning of
these registers and the datasheet of your flash to know it's timings
then you can calculate the value to put in the registers.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

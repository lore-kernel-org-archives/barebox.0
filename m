Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxBFK-0003pQ-0d
 for barebox@lists.infradead.org; Wed, 18 Jun 2014 08:29:30 +0000
Received: by mail-lb0-f176.google.com with SMTP id w7so290993lbi.35
 for <barebox@lists.infradead.org>; Wed, 18 Jun 2014 01:29:05 -0700 (PDT)
Date: Wed, 18 Jun 2014 12:40:49 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140618124049.5b9c7ba6d41cda84dc51ee4e@gmail.com>
In-Reply-To: <20140617183040.GH15686@pengutronix.de>
References: <1402931635-18830-1-git-send-email-p.zabel@pengutronix.de>
 <20140616210859.bc53e769b34765c933c93867@gmail.com>
 <20140616213513.GG15686@pengutronix.de>
 <20140617093517.865365da210ba4675eb3789b@gmail.com>
 <20140617183040.GH15686@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: AM335x: Beaglebone: Fix memory setup for
 Beaglebone black
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 17 Jun 2014 20:30:40 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jun 17, 2014 at 09:35:17AM +0400, Antony Pavlov wrote:
> > On Mon, 16 Jun 2014 23:35:13 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi Antony,
> > > =

> > > On Mon, Jun 16, 2014 at 09:08:59PM +0400, Antony Pavlov wrote:
> > > > On Mon, 16 Jun 2014 17:13:54 +0200
> > > > Philipp Zabel <p.zabel@pengutronix.de> wrote:
> > > > =

> > > > Question to Sascha.
> > > > =

> > > > Can we preserve the 'memory' dts record in situations like this?
> > > > =

> > > > Is it possible just alter dts in early init code?
> > > > Or something else?
> > > =

> > > For what do you want to preserve it? barebox never uses the memory no=
de
> > > directly to pass it to the kernel. The barebox memory banks are
> > > initialized from the code and from the dts. When starting Linux the
> > > memory node is (re)populated with the barebox memory banks
> > > =

> > > I may misunderstand what you are trying to archieve.
> > =

> > Imagine a family of boards. The RAM size can vary from board to board
> > (for simplicity suppose that all over conditions are the same).
> > Suppose I have a reliable RAM size detection routine and I want to run
> > just the same barebox image on different boards.
> > I want to run dts enabled Linux on all boards.
> =

> In this case don't specify the memory size in the devicetree. In a
> mem_initcall detect the actual RAM size you have and call
> arm_add_mem_device() accordingly. That's all. The rest will be handled
> automatically. See of_memory_fixup(), this will iterate over the memory
> banks and set the memory node to the correct values.
> =

> > =

> > How can I handle this situation correctly?
> > =

> > Also note that on MIPS boards barebox uses no more than 256 MiB of RAM
> > (even if a board has more than 256 MiB of RAM). It's a measure to make
> > mips barebox simplier.
> > I want to pass information on all available RAM to linux via dts.
> > Can you describe reasonable barebox behaviour in this situation please?
> =

> Hmm, not easy. I assumed barebox knows all available memory. What
> prevents you from registering all memory? I remember MIPS has a cached
> mapping of the SDRAM. Is this the reason?

But MIPS32 has 4 GB virtual address space.
There are two 512 MiB windows in this VIRTUAL space for direct cached (kseg=
0)
and uncached (kseg1) access to the first 512 MiB of PHYSICAL space.
As a rule the first 256 MiB piece of PHYSICAL spaces used for RAM and the s=
econd
256 MiB piece is used for i/o devices.
So if you use only kseg0 and kseg1 to memory access you can't use more than=
 256 MiB of RAM.
You can access rest of RAM using another windows (kseg2 and kuseg),
but this windows use MMU.

I don't want to add MMU bussiness to barebox --- 256 MiB of RAM is more tha=
n enough.
Of course barebox can know all available memory (even if barebox use only 2=
56 MiB of RAM).

The real problem with mips barebox device tree code is that it operates wit=
h VIRTUAL addresses
for memory ranges representation, but linux device tree uses PHYSICAL addre=
sses.

It is my fault and I have to fix it.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

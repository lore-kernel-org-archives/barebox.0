Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEfjN-0000sx-F7
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 11:47:31 +0000
Date: Mon, 2 Apr 2012 14:47:15 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20120402114715.GB18712@sapphire.tkos.co.il>
References: <CAD9ZU8AJc+LxYRa_HFQ_pxt+G3ijZmyKcQ0MqDKvVHH5FrJ1Qw@mail.gmail.com>
 <20120401104934.GD22835@sapphire.tkos.co.il>
 <20120401144518.73c1cf53@eb-e6520>
 <20120401125209.GE22835@sapphire.tkos.co.il>
 <20120401150507.465b4a6d@eb-e6520>
 <CAD9ZU8D0a8BRAtAN8_9Hz_75Lek=N_i_F+jjXvfR1gxMsPNZ3A@mail.gmail.com>
 <20120402113002.GA18712@sapphire.tkos.co.il>
 <CAD9ZU8DG8r=6RCAieDzbjenPR_k0W-v+tjVBYV5Mvh-ntxa46w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD9ZU8DG8r=6RCAieDzbjenPR_k0W-v+tjVBYV5Mvh-ntxa46w@mail.gmail.com>
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
Subject: Re: nand_imx 4k support ?
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

Hi Gabriel,

On Mon, Apr 02, 2012 at 01:39:42PM +0200, Gabriel Tisan wrote:
> Sorry, but I didn't catch it.
> Do you mean that I don't need an OOB description for 218 byte OOB ?

If the software doing the flash write operation does not touch the OOB area=
 in =

any way, than OOB layout description is not needed. The Linux kernel needs =

this layout information for the reasons stated in the 2c1c5f199 commit log.=
  =

This reason apparently, is not applicable to Barebox as is evident from the =

experience of Eric.

However, since OOB layout description tables for 512B and 2k page sizes, it =

seems that this information is useful in some scenarios.

baruch

> On Mon, Apr 2, 2012 at 1:30 PM, Baruch Siach <baruch@tkos.co.il> wrote:
> > Hi Gabriel,
> >
> > On Mon, Apr 02, 2012 at 11:03:06AM +0200, Gabriel Tisan wrote:
> >> Yes, Baruch I meant write support, especially ECC layout for 4K flashe=
s.
> >>
> >> Actually the 4k flashes could have 128 or 218 bytes OOB.
> >>
> >> Could you point me to some docs about this layout ? I use a flash with
> >> 218 bytes spare.
> >
> > See commit 2c1c5f199 of the Linux kernel at
> > http://git.kernel.org/linus/2c1c5f199.
> >
> > As Eric has pointed out, this may not be necessary for Barebox.
> >
> > baruch
> >
> >> On Sun, Apr 1, 2012 at 3:05 PM, Eric B=E9nard <eric@eukrea.com> wrote:
> >> > Le Sun, 1 Apr 2012 15:52:09 +0300,
> >> > Baruch Siach <baruch@tkos.co.il> a =E9crit :
> >> >> Does the Linux kernel detect your flash correctly?
> >> >>
> >> > I'm not at this stage for the moment as I'm using a SDcard rootfs to
> >> > validate the hardware for the moment, but I'm sure the actual problem
> >> > (in my case at least) in barebox is a detection problem as I get the
> >> > right values from the flash but these value are ONFI and thus are not
> >> > right with he actual flash detection code which leads to a wrong
> >> > configuration of the NFC. Once I hardcode the NFC settings I manage =
to
> >> > read/write in the 4k NAND Flash from barebox (environment & kernel
> >> > are in the flash for the moment).

-- =

     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEKGo-0007nT-6L
 for barebox@lists.infradead.org; Sun, 01 Apr 2012 12:52:35 +0000
Date: Sun, 1 Apr 2012 15:52:09 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20120401125209.GE22835@sapphire.tkos.co.il>
References: <CAD9ZU8AJc+LxYRa_HFQ_pxt+G3ijZmyKcQ0MqDKvVHH5FrJ1Qw@mail.gmail.com>
 <20120401104934.GD22835@sapphire.tkos.co.il>
 <20120401144518.73c1cf53@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120401144518.73c1cf53@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Sun, Apr 01, 2012 at 02:45:18PM +0200, Eric B=E9nard wrote:
> Le Sun, 1 Apr 2012 13:49:35 +0300,
> Baruch Siach <baruch@tkos.co.il> a =E9crit :
> > On Sun, Apr 01, 2012 at 11:58:53AM +0200, Gabriel Tisan wrote:
> > > Has anybody started to implement support for flashes with 4k page size
> > > on nand_imx driver ?
> > =

> > 4k flashes should be supported in nand_imx since version v2011.05. See =
commit =

> > 4b4958dbb73e6fb553aaf91d539ff3e22bfe9e40 (mtd/nand_imx: add support for=
 page =

> > size of 4k). I've tested it on i.MX25.
> > =

> newer flashs are using ONFI and thus some 4k flashes are not properly
> detected actually in barebox which may be the problem that Gabriel
> actually have.
> http://en.wikipedia.org/wiki/Open_NAND_Flash_Interface_Working_Group
> http://onfi.org/specifications/
> =

> I have the same requirement on an i.MX53 board (for the moment I
> hard coded the right values to bypass the flash detection which
> returned wrong results, the 4k falsh being detected as a 2k one) and
> plan to work on this during april but hard to say when so that may be
> beginiong of may.

Does the Linux kernel detect your flash correctly?

Write support for 4k flashes may require a patch similar to the kernel's =

2c1c5f19 (mtd: mxc_nand: fix OOB corruption when page size > 2KiB), i.e.  =

extended ECC layout for OOB.

baruch

-- =

     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

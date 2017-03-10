Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmGZW-0004ka-5S
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:10:53 +0000
Date: Fri, 10 Mar 2017 10:10:27 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170310091027.ruy5xtzeyej65m6h@pengutronix.de>
References: <20170309211808.w6jazqlbrlfigl2r@pengutronix.de>
 <CAHQ1cqFq7+k1KajoqNXAQUzNmp_S19wMyVAHWA5ZOzVgTkzPVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFq7+k1KajoqNXAQUzNmp_S19wMyVAHWA5ZOzVgTkzPVg@mail.gmail.com>
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
Subject: Re: e1000 driver hangs during probe
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Mar 09, 2017 at 08:04:08PM -0800, Andrey Smirnov wrote:
> On Thu, Mar 9, 2017 at 1:18 PM, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > Hello,
> >
> > I work with an i.MX6 based hardware that has an i210 pcie device with
> > barebox 2016.11.0 (but there didn't happen anything relevant since them
> > if I'm not mistaken). When enabling all necessary things to make the
> > e1000 bind, the driver seems to hang. The problem is the following code
> > in e1000_get_hw_eeprom_semaphore():
> >
> >         /* Get the FW semaphore. */
> >         timeout =3D hw->eeprom.word_size + 1;
> >         while (timeout) {
> >                 swsm =3D e1000_read_reg(hw, E1000_SWSM);
> >                 swsm |=3D E1000_SWSM_SWESMBI;
> >                 e1000_write_reg(hw, E1000_SWSM, swsm);
> >                 /* if we managed to set the bit we got the semaphore. */
> >                 swsm =3D e1000_read_reg(hw, E1000_SWSM);
> >                 if (swsm & E1000_SWSM_SWESMBI)
> >                         break;
> >
> >                 udelay(50);
> >                 timeout--;
> >         }
> >
> > together with the fact that hw->eeprom.word_size is either 0x200000 or
> > 0x400000. (I saw both values already in three runs) This value is setup
> > in e1000_init_eeprom_params() in the hw->mac_type =3D=3D e1000_igb case.
> >
> > When waiting log enough the code finally terminates with a failure.
> >
> > In my case there is an 8Mb-Flash equipped on NVM_* that isn't programmed
> > yet. (M25PE80, Page size: 256 bytes, Subsector erase: 4KB, Sector erase=
: 64KB,
> > Bulk erase: 8Mb)
> >
> > Is someone able to shed some light on where the problem is?
> >
> =

> This might be a long shot, but when I was working with that exact
> combination last year (this board
> https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/zii-imx6q-rd=
u2)
> I ran into an issue where while the reads to PCI configuration space
> would work and the card would enumerate, access to registers mapped
> via any of the BARs would return bogus values. Through trial and error
> I was able to come up with a empirical hack to "fix" the issue and was
> able to continue working with the driver.
> =

> Several month later Lucas was asked to take a look at the issue and he
> was able to figure out the underlying cause and posted a series of
> patches fixing the problem:
> =

> http://lists.infradead.org/pipermail/barebox/2016-November/028438.html
> =

> For some reason I am not seeing that whole series even in the latest
> master, let alone 2016.11 codebase, so just to rule out you running
> into the same problem I did, I'd start by applying that whole series
> to your Barebox and seeing if that improves things.

With these patches applied the problem is gone and I see:

	e1000 pci-8086:1531.0: Unprogrammed Flash detected, limiting access to fir=
st 4KB
	0: EEPROM checksum is incorrect!
	0:   ...register was 0x0000, calculated 0xbaba
	e1000 pci-8086:1531.0: probe failed: Invalid argument

and I have

	/ ls -l /dev/e1000-nor0 =

	crw-------           4096 /dev/e1000-nor0

Thanks for your valuable hint.

Sascha: If you want, interpret this as "Tested-by:".

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

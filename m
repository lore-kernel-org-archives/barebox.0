Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCc5g-0002al-B4
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 21:06:49 +0000
Date: Thu, 22 Aug 2013 23:06:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822210626.GC31036@pengutronix.de>
References: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
 <20130822065552.GU31036@pengutronix.de>
 <CAJyuEefSbOYnGut0SeXbhB_KV=0mWETE=UNPyMX94fCAGjA10w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEefSbOYnGut0SeXbhB_KV=0mWETE=UNPyMX94fCAGjA10w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 22, 2013 at 11:49:01AM -0400, Michael Burkey wrote:
> I don't know why I said github -- the one at pengutronix is the one I
> have been looking at. I think my brain must have been focused on lunch
> when I was sending that!

;)

> 
> The PhyFlex and i.MX6 NAND support being in the next release was sort
> of what I thought based on the comments in the mailing list and the
> differences in the code on the git vs the actual release.
> 
> Which brings me to my next question: what is the preferred way of
> setting up a new platform at this point in time?
> 
> Specifically, things seem to be in a lot of flux with the i.MX systems.
> 
> So, right now, for new systems:
> 1) The initial hardware setup should be in devicetree format under
> arch/arm/dts, correct?

Yes, correct.

> 
> 2) Where should the DCD config go? I am looking at multiple i.MX6
> platforms with it in 4 different spots -- lowlevel.c, flash_header.c,
> an imxcfg file, as a .h file included from the imxcfg file, etc.

The imxcfg file is the way to go. Historically we assembled the flash
header as struct types in C, but that turned out to be too inflexible.

> (and
> the dmo-mx6-realq7 has both a very basic .imxcfg file and then
> manually configures everything else with writel's in lowlevel.c).

Yeah, this is done because the dmo board needs the SDRAM calibration
functions to setup SDRAM. You can ignore this if you do not have a
good reason to setup the SDRAM in code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

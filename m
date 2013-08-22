Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCOoa-0006lC-0u
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 06:56:24 +0000
Date: Thu, 22 Aug 2013 08:55:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822065552.GU31036@pengutronix.de>
References: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
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

On Wed, Aug 21, 2013 at 02:46:17PM -0400, Michael Burkey wrote:
> Sascha,
> 
> You can ignore part of my last post -- I found the
> "imx6q-phytec-pbab01" on github (it looks like a lot of the things I
> am needing and working on are right on the edge of development where
> you are working as well).

github? The original barebox repository is here:

git.pengutronix.de/git/barebox.git

> 
> I also noticed some posts in the mailing list that you made last month
> regarding adding gpmi-nand support for iMX6 (or at least some wrappers
> for it). Has the actual gpmi-nand support been completed and
> integrated (or will the existing mxs-nand driver from the i.MX23/28
> work as-is)?

The Nand support for i.MX6 is currently in the master branch and will be
part of the next (v2013.09.0) release. Same with the PhyFLEX i.MX6
support. Sorry, I originally thought this was in the last release.

> 
> 
> I've also been doing a lot of reading on devicetree and what it
> entails to migrate in that direction (everything I had been doing
> previously had been iMX35 based and started from the older Phytec
> BSP's, so I hadn't really looked at how devicetree worked). I may have
> some more questions on this going forward.

No problem, don't hesitate to ask.

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

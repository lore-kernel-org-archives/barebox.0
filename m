Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWot-0001dc-1q
 for barebox@lists.infradead.org; Wed, 15 May 2013 08:12:19 +0000
Date: Wed, 15 May 2013 10:11:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515081157.GI32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de>
 <20130515092611.1fe76e5c@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130515092611.1fe76e5c@skate>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Wed, May 15, 2013 at 09:26:11AM +0200, Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Wed, 15 May 2013 07:55:50 +0200, Sascha Hauer wrote:
> 
> > > Although possible, I prefer a different approach:
> > > - IIRC all MVEBU SoCs boot up at 0xd0000000
> > > - Have a regbase variable within barebox that initially points to that
> > > - Have a mvreadl/mvwritel that adds it to reg offsets
> > > - Rewrite _initial_ SoC code to use mvreadl/mvwritel
> > 
> > I applied this series, but please get this topic done before more code
> > enters that has to be changed when doing the above.
> 
> Hum, too bad, I have sent yesterday a new series, that included
> Sebastian code, plus basic Kirkwood support, and improvements to the
> kwbimage tool. The improvements to the kwbimage tool allowed to get rid
> of some dummy lines in the SolidRun Cubox kwbimage.cfg that Sebastian
> had submitted.

Sorry, I misread it. What I understood is that your series needs
Sebastians patches as base.

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

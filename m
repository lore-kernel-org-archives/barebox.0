Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBjDY-0004cy-GC
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 11:03:33 +0000
Date: Fri, 7 Feb 2014 12:03:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140207110307.GL16215@pengutronix.de>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <52F4A87B.3030008@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52F4A87B.3030008@gmail.com>
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
Subject: Re: [PATCH 6/6] ARM: dove: sync with DT files from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On Fri, Feb 07, 2014 at 10:33:47AM +0100, Sebastian Hesselbarth wrote:
> On 02/05/2014 11:40 PM, Sebastian Hesselbarth wrote:
> >This re-syncs Marvell Dove and Solidrun CuBox DT files with current
> >files from Linux v3.14. Barebox-specific properties not yet backported,
> >are kept, default led trigger is set to heartbeat.
> >
> >Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >---
> >Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> >Cc: Michael Grzeschik <mgr@pengutronix.de>
> >Cc: barebox@lists.infradead.org
> >
> >fixup dts
> 
> Urgh ;)
> 
> >Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >---
> >  arch/arm/dts/dove-cubox.dts |  66 ++--
> >  arch/arm/dts/dove.dtsi      | 806 +++++++++++++++++++++++++++++++-------------
> >  2 files changed, 598 insertions(+), 274 deletions(-)
> [...]
> 
> I have just read the discussion about DT maintainance. You want me to
> rework this patch to separate the barebox specific modifiations to a
> new dts?

That would be great.

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

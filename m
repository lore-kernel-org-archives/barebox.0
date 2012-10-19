Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPFEe-0000on-FW
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 16:15:45 +0000
Date: Fri, 19 Oct 2012 18:15:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121019161542.GU27665@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-21-git-send-email-s.hauer@pengutronix.de>
 <20121018072959.GD22418@game.jcrosoft.org>
 <20121019153241.GR27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121019153241.GR27665@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 20/28] ARM pbl: Call uncompressed binary with arguments
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 19, 2012 at 05:32:41PM +0200, Sascha Hauer wrote:
> On Thu, Oct 18, 2012 at 09:29:59AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> > > This puts the code from barebox_uncompress inline into
> > > the caller. Also we now call the uncompressed binary
> > > with the memory and boarddata arguments, so everything
> > > is ready for the uncompressed image to pick up the
> > > values.
> > can we use atags / dt and machine_id
> 
> Of course that's the goal to be able to call barebox like the kernel,
> but this is not an interface to the outside world, it's purely barebox
> internal. That's what the third argument is for, to pass data from the
> entry on to barebox.

Checkout the following branch. This is what I'm working on. build the
imxdt_defconfig. It builds a barebox which runs on all i.MX as a second
stage dt probed barebox. It's work in progress, so I guarantee for
nothing. The imxdt is basically a normal board support. We now have the
entry to barebox under board control, so this can be used to pick up the
oftree, look for memory nodes and pass the memory on to barebox. The
third argument is used to keep a pointer to the devicetree which is then
later used from the board to probe.
As the name suggests, this is currently i.MX specific, but it doesn't
have to be.
BTW for those who want to test this branch, barebox needs some nodes
currently not in all mainline dts files (ccm and gpt, linux,stdout-path
property in chosen node). Let me know when you are interested, I have
some example files.

git://git.pengutronix.de/git/barebox.git work/imxdt

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

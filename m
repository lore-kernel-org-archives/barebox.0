Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5CJ-0004lM-4G
 for barebox@lists.infradead.org; Mon, 11 May 2020 09:58:08 +0000
Date: Mon, 11 May 2020 11:58:04 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200511095804.3wungesqd6z3qwy2@pengutronix.de>
References: <20200429153559.15086-1-rhi@pengutronix.de>
 <20200511065952.GA15934@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511065952.GA15934@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: vexpress-v2p-ca9: adapt fixed NOR flash
 partition setup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Mon, May 11, 2020 at 08:59:52AM +0200, Sascha Hauer wrote:
> On Wed, Apr 29, 2020 at 05:35:59PM +0200, Roland Hieber wrote:
> > Upstream DTS commit 62a5017bf825c9e4d317 ("ARM: dts: vexpress: specify
> > AFS partition") [1] introduced an empty node at /smb@4000000
> > /motherboard/flash@0,00000000/partitions, which is preferred by the OF
> > partitions parser over the single partition nodes. In the same commit,
> > upstream set the compatible to "arm,arm-firmware-suite", which barebox
> > does not know about. Adapt our fixed partition setup accordingly by
> > wrapping all partitions in an extra "partitions" node with the correct
> > compatible.
> 
> I wonder what happens when we run this code on a flash that uses the
> arm-firmware-suite partitioning. We may end up with inconsistent
> partitioning then.
> In the end the barebox vexpress code only ever runs on qemu and not on
> the real hardware, so this is not relevant.
> Either way the patch seems like a good start, so applied.

Yes, valid concern. What about creating a separate device tree for the
qemu variant? This way we wouldn't run into that problem on the physical
hardware.

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

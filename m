Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRHfv-0002fM-9x
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 14:15:49 +0000
Date: Mon, 26 Nov 2018 15:15:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126141535.rkof7udeh75tfgw5@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
 <20181126091807.19398-9-o.rempel@pengutronix.de>
 <20181126160136.d6d8a30dc4086ef2a04be2b9@gmail.com>
 <02814821-f042-06db-4cda-778e5a722273@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02814821-f042-06db-4cda-778e5a722273@pengutronix.de>
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
Subject: Re: [PATCH v1 08/10] MIPS: port all mach* to multiimage
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 26, 2018 at 02:54:17PM +0100, Oleksij Rempel wrote:
> On 26.11.18 14:01, Antony Pavlov wrote:
> > On Mon, 26 Nov 2018 10:18:05 +0100
> > Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > 
> > Hi!
> > 
> > I can't apply this patch.
> > Here is 'git am' log:
> > 
> > Applying: MIPS: port all mach* to multiimage
> > .git/rebase-apply/patch:1291: trailing whitespace.
> > pbl-dtb-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o
> > .git/rebase-apply/patch:1292: trailing whitespace.
> > pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
> > .git/rebase-apply/patch:1294: trailing whitespace.
> > pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
> > .git/rebase-apply/patch:1298: trailing whitespace.
> > pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020.dtb.o
> > .git/rebase-apply/patch:1299: trailing whitespace.
> > pbl-dtb-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
> > error: patch failed: images/Makefile:53
> > error: images/Makefile: patch does not apply
> > Patch failed at 0001 MIPS: port all mach* to multiimage
> > hint: Use 'git am --show-current-patch' to see the failed patch
> > When you have resolved this problem, run "git am --continue".
> > If you prefer to skip this patch, run "git am --skip" instead.
> > To restore the original branch and stop patching, run "git am --abort".
> 
> I pushed it to my github,
> https://github.com/olerem/barebox/tree/v2018.11.0/board/ath79-multiimage-20181126.1
> 
> My patches + missing Sachas patches. It compiles and works at least on
> boards I was able to test.

I merged the piggy-pbl series into -next, so you can rebase on that now.

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

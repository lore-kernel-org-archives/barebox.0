Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAKZn-0002xv-Vu
 for barebox@lists.infradead.org; Fri, 16 Aug 2013 14:00:29 +0000
Date: Fri, 16 Aug 2013 16:00:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130816140005.GR26614@pengutronix.de>
References: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/3] Marvell MVEBU OF clock providers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Thu, Aug 15, 2013 at 03:24:16PM +0200, Sebastian Hesselbarth wrote:
> This patch set adds OF clock providers for core clocks and clock gates found
> on Marvell MVEBU SoCs (Armada 370, Armada XP, Dove, and Kirkwood). The code
> has been adopted for Barebox from Linux clock providers.
> 
> Patch 1 adds a missing clocks property to the timer node of Dove DT.
> Patch 2 adds OF clock providers for the four SoCs above.
> Patch 3 coverts Dove SoC init to DT probed devices only.
> 
> The patches have been tested on SolidRun CuBox for Dove. Other SoCs are
> compile tested only as they have not been ported to DT, yet (Armada 370
> has, but shares SoC init with Armada XP which has not).
> 
> Sebastian Hesselbarth (3):
>   ARM: dove: add missing clocks property to timer node
>   clk: mvebu: add OF clock providers for Marvell MVEBU SoCs
>   ARM: dove: remove temporary clock and non-DT device probing

Applied, merged with my previous series and compile tested. I haven't
made runtime tests yet.

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

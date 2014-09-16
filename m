Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTltQ-0004QH-4c
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 06:05:37 +0000
Date: Tue, 16 Sep 2014 08:05:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140916060514.GD4992@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-6-git-send-email-s.hauer@pengutronix.de>
 <54175708.1090306@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54175708.1090306@gmail.com>
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
Subject: Re: [PATCH 5/5] ARM: Add mvebu_defconfig
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 15, 2014 at 11:15:52PM +0200, Sebastian Hesselbarth wrote:
> On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> > This adds a mvebu_defconfig which enables all mvebu based boards.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Sascha,
> 
> we should also select
> 
> CONFIG_DRIVER_NET_ORION=y
> CONFIG_MDIO_MVEBU=y
> CONFIG_MARVELL_PHY=y
> 
> and some NET commands would be helpful too.

Did that locally here for now. I will include it once the rest of this
series is fine.

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

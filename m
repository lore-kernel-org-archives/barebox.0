Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKr8u-0005bf-OI
	for barebox@lists.infradead.org; Tue, 23 Nov 2010 11:34:38 +0000
Date: Tue, 23 Nov 2010 12:34:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101123113434.GH6017@pengutronix.de>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
	<20101119080049.GA6017@pengutronix.de>
	<20101119113009.GB4216@game.jcrosoft.org>
	<20101120134017.GF6017@pengutronix.de>
	<20101120135824.GE4216@game.jcrosoft.org>
	<20101121042854.GI4216@game.jcrosoft.org>
	<20101123073623.GG6017@pengutronix.de>
	<20101123082528.GE11909@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101123082528.GE11909@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/5] device: introduce resource structure to simplify
	resource delaration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 23, 2010 at 09:25:28AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:36 Tue 23 Nov     , Sascha Hauer wrote:
> > On Sun, Nov 21, 2010 at 05:28:54AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 14:58 Sat 20 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 14:40 Sat 20 Nov     , Sascha Hauer wrote:
> > > > > On Fri, Nov 19, 2010 at 12:30:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > On 09:00 Fri 19 Nov     , Sascha Hauer wrote:
> > > > > > > Hi J,
> > > > > > > 
> > > > > > > On Fri, Nov 12, 2010 at 07:18:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > > > introdude also some helper to manager them
> > > > > > > > 
> > > > > > > > and add multi resource per device support
> > > > > > > > 
> > > > > > > > ram device: use resource structure instead of memory_platform_data
> > > > > > > > 
> > > > > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > > > 
> > > > > > > 
> > > > > > > You shouldn't use a resource_size_t type to access registers. This will
> > > > > > > lead to problems when we start to support 64bit resource sizes
> > > > > > no as resource_size_t is 64 bit aware
> > > > > 
> > > > > And exactly this is the problem. void * is usually only 32bit on arm.
> > > > > This will lead to compiler warnings and sparse isn't happy about
> > > > > unsigned long in readl/writel anyway.
> > > > IIRC on arm resource_size_t is never 64bit at least on the current ARMvx
> > 
> > Think of MMC/SD cards > 4G.
> ok but I do not see the import on the ressource for the drivers?

Look at this excerpt from your patch:

@@ -675,10 +686,11 @@ static int mci_request(struct mci_host *mci_pdata,
struct mci_cmd *cmd,
 {
        struct device_d *hw_dev = mci_pdata->hw_dev;
        int rc;
+       resource_size_t map_base = dev_resource_get_start(hw_dev);

        /* enable clock */
-       writel(readl(hw_dev->map_base + SDICON) | SDICON_CLKEN,
-               hw_dev->map_base + SDICON);
+       writel(readl(map_base + SDICON) | SDICON_CLKEN,
+               map_base + SDICON);

        if ((cmd->resp_type == 0) || (data == NULL))
                rc = s3c_mci_std_cmds(hw_dev, cmd);

You pass map_base which is of type resource_size_t to writel. Sparse
will barf when the address is not a void __iomem *. Also,
resource_size_t may be 64bit which is then implicitely casted to void *.

This is why it should look like this:

@@ -675,10 +686,11 @@ static int mci_request(struct mci_host *mci_pdata,
struct mci_cmd *cmd,
 {
        struct device_d *hw_dev = mci_pdata->hw_dev;
        int rc;
+       void __iomem *map_base = TO_IOMEM(dev_resource_get_start(hw_dev));

        /* enable clock */
-       writel(readl(hw_dev->map_base + SDICON) | SDICON_CLKEN,
-               hw_dev->map_base + SDICON);
+       writel(readl(map_base + SDICON) | SDICON_CLKEN,
+               map_base + SDICON);

        if ((cmd->resp_type == 0) || (data == NULL))
                rc = s3c_mci_std_cmds(hw_dev, cmd);

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

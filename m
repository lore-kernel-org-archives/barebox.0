Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3xyP-0008Ca-2u
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 09:15:49 +0000
Date: Mon, 25 Jan 2021 10:15:47 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20210125091547.GB8233@pengutronix.de>
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-3-andrej.picej@norik.com>
 <20210121090148.GF19063@pengutronix.de>
 <7df4659e-7237-c5fa-767f-7dedd5c44005@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7df4659e-7237-c5fa-767f-7dedd5c44005@norik.com>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: implement GPMI NAND xload
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 21, 2021 at 11:28:39AM +0100, Andrej Picej wrote:
> Hi Sascha,
> 
> thanks for your comments.
> 
> Responses inline.
> 
> On 21. 01. 21 10:01, Sascha Hauer wrote:
> > Hi Andrej,
> > 
> > Some comments inline.
> > 
> > On Wed, Jan 20, 2021 at 01:51:06PM +0100, Andrej Picej wrote:
> > > From: Sascha Hauer <s.hauer@pengutronix.de>
> > > 
> > > Commit is based on initial Sascha Hauer's work. It implements PBL xload
> > > mechanism to load image from GPMI NAND flash.
> > > 
> > > Additional work was done, so that the NAND's size, page size and OOB's
> > > size are autodetected and not hardcoded. Detection method follows the
> > > same methods as used in NAND driver, meaning NAND ONFI support is probed
> > > and if NAND supports ONFI, NAND memory organization is read from ONFI
> > > parameter page otherwise "READ ID" is used.
> > > 
> > > Currently only implemented for i.MX6 familly of SoCs.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> > > Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> > > ---
> > >   arch/arm/mach-imx/Makefile             |    2 +-
> > >   arch/arm/mach-imx/include/mach/xload.h |    1 +
> > >   arch/arm/mach-imx/xload-gpmi-nand.c    | 1163 ++++++++++++++++++++++++
> > >   3 files changed, 1165 insertions(+), 1 deletion(-)
> > >   create mode 100644 arch/arm/mach-imx/xload-gpmi-nand.c
> > > 
> > > diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> > > index e45f758e9..d94c846a1 100644
> > > --- a/arch/arm/mach-imx/Makefile
> > > +++ b/arch/arm/mach-imx/Makefile
> > > +static int mxs_nand_get_info(struct mxs_nand_info *info, void *databuf)
> > > +{
> > > +	int ret, i;
> > > +
> > > +	ret = mxs_nand_check_onfi(info, databuf);
> > > +	if (ret) {
> > > +		if (ret != 1)
> > > +			return ret;
> > > +		pr_warn("ONFI not supported, try \"READ ID\"...\n");
> > 
> > You already printed a "ONFI not supported\n" message. Printing it once
> > is enough. Also this message appears with every non-ONFI nand, right? In
> > that case it should rather be pr_info()
> 
> OK, I agree, will fix it in v2.
> 
> > 
> > > +	/*
> > > +	 * If ONFI is not supported or if it fails try to get NAND's info from
> > > +	 * "READ ID" command.
> > > +	 */
> > > +	pr_debug("Trying \"READ ID\" command...\n");
> > > +	ret = mxs_nand_get_readid(info, databuf);
> > > +	if (ret) {
> > > +		if (ret != -EOVERFLOW)
> > > +			return ret;
> > > +
> > > +		/*
> > > +		 * If NAND's "READ ID" returns bad values, try to set them to
> > > +		 * default (most common NAND memory org.) and continue.
> > > +		 */
> > > +		pr_warn("NANDs READ ID command returned bad values" \
> > > +			" set them to default and try to continue!\n");
> > > +		info->organization.pagesize = 2048;
> > > +		info->organization.oobsize = 64;
> > > +		info->nand_size = SZ_1G;
> > 
> > Is this worth it? READ ID is the most basic command, when this doesn't
> > work I don't think there's a point in continuing.
> 
> We had a case with Samsung K9K8G08U0E when sometimes (reasons not known) the
> 5th byte returned 0xff instead of correct values, all other returned values
> were correct. In this case the device booted successfully because of this
> hook. Maybe a better solution would be to check only the 5th byte for 0xff
> value (5th byte is not supported from all NAND vendors), if this is the case
> set the NAND size to 1GB.
> Would that make more sense?

The best would be to track the issue down and to fix it ;)
It's not very nice to assume it in case of read id failures it's exactly
that NAND type you have troubles with.
Does it help to reset the NAND chip before reading the ID?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

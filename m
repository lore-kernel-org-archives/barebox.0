Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Vqh-0001sg-BJ
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 09:01:52 +0000
Date: Thu, 21 Jan 2021 10:01:48 +0100
Message-ID: <20210121090148.GF19063@pengutronix.de>
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-3-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120125107.736121-3-andrej.picej@norik.com>
From: Sascha Hauer <sha@pengutronix.de>
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

Hi Andrej,

Some comments inline.

On Wed, Jan 20, 2021 at 01:51:06PM +0100, Andrej Picej wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Commit is based on initial Sascha Hauer's work. It implements PBL xload
> mechanism to load image from GPMI NAND flash.
> 
> Additional work was done, so that the NAND's size, page size and OOB's
> size are autodetected and not hardcoded. Detection method follows the
> same methods as used in NAND driver, meaning NAND ONFI support is probed
> and if NAND supports ONFI, NAND memory organization is read from ONFI
> parameter page otherwise "READ ID" is used.
> 
> Currently only implemented for i.MX6 familly of SoCs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  arch/arm/mach-imx/Makefile             |    2 +-
>  arch/arm/mach-imx/include/mach/xload.h |    1 +
>  arch/arm/mach-imx/xload-gpmi-nand.c    | 1163 ++++++++++++++++++++++++
>  3 files changed, 1165 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-imx/xload-gpmi-nand.c
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index e45f758e9..d94c846a1 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> +static int mxs_nand_get_info(struct mxs_nand_info *info, void *databuf)
> +{
> +	int ret, i;
> +
> +	ret = mxs_nand_check_onfi(info, databuf);
> +	if (ret) {
> +		if (ret != 1)
> +			return ret;
> +		pr_warn("ONFI not supported, try \"READ ID\"...\n");

You already printed a "ONFI not supported\n" message. Printing it once
is enough. Also this message appears with every non-ONFI nand, right? In
that case it should rather be pr_info()

> +	/*
> +	 * If ONFI is not supported or if it fails try to get NAND's info from
> +	 * "READ ID" command.
> +	 */
> +	pr_debug("Trying \"READ ID\" command...\n");
> +	ret = mxs_nand_get_readid(info, databuf);
> +	if (ret) {
> +		if (ret != -EOVERFLOW)
> +			return ret;
> +
> +		/*
> +		 * If NAND's "READ ID" returns bad values, try to set them to
> +		 * default (most common NAND memory org.) and continue.
> +		 */
> +		pr_warn("NANDs READ ID command returned bad values" \
> +			" set them to default and try to continue!\n");
> +		info->organization.pagesize = 2048;
> +		info->organization.oobsize = 64;
> +		info->nand_size = SZ_1G;

Is this worth it? READ ID is the most basic command, when this doesn't
work I don't think there's a point in continuing.

> +	}
> +succ:
> +	pr_debug("NAND page_size: %d\n", info->organization.pagesize);
> +	pr_debug("NAND block_size: %d\n",
> +		info->organization.pages_per_eraseblock
> +		* info->organization.pagesize);
> +	pr_debug("NAND oob_size: %d\n", info->organization.oobsize);
> +	pr_debug("NAND nand_size: %lu\n", info->nand_size);
> +	pr_debug("NAND bits_per_cell: %d\n", info->organization.bits_per_cell);
> +	pr_debug("NAND planes_per_lun: %d\n",
> +		info->organization.planes_per_lun);
> +	pr_debug("NAND luns_per_target: %d\n",
> +		info->organization.luns_per_target);
> +	pr_debug("NAND eraseblocks_per_lun: %d\n",
> +		info->organization.eraseblocks_per_lun);
> +	pr_debug("NAND ntargets: %d\n", info->organization.ntargets);
> +
> +
> +	return 0;
> +}
> +
> +/* ---------------------------- BCB handling part -------------------------- */
> +
> +static uint32_t calc_chksum(void *buf, size_t size)
> +{
> +	u32 chksum = 0;
> +	u8 *bp = buf;
> +	size_t i;
> +
> +	for (i = 0; i < size; i++)
> +		chksum += bp[i];
> +
> +	return ~chksum;
> +}
> +
> +static int get_fcb(struct mxs_nand_info *info, void *databuf)
> +{
> +	int i, pagenum, ret;
> +	uint32_t checksum;
> +	struct fcb_block *fcb = &info->fcb;
> +
> +	/* First page read fails, this shouldn't be necessary */
> +	mxs_nand_read_page(info, info->organization.pagesize,
> +		info->organization.oobsize, 0, databuf, 1);
> +
> +	for (i = 0; i < 4; i++) {
> +		pagenum = 64 * i;

I haven't looked at the documentation, but the '64' should probably be pages
per block, so better info->organization.pages_per_eraseblock?

> +
> +		ret = mxs_nand_read_page(info, info->organization.pagesize,
> +			info->organization.oobsize, pagenum, databuf, 1);
> +		if (ret)
> +			continue;
> +
> +		memcpy(fcb, databuf + mxs_nand_aux_status_offset(),
> +			sizeof(*fcb));
> +
> +		if (fcb->FingerPrint != FCB_FINGERPRINT) {
> +			pr_err("No FCB found on page %d\n", pagenum);
> +			continue;
> +		}
> +
> +		checksum = calc_chksum((void *)fcb +
> +			sizeof(uint32_t), sizeof(*fcb) - sizeof(uint32_t));
> +
> +		if (checksum != fcb->Checksum) {
> +			pr_err("FCB on page %d has invalid checksum. " \
> +				"Expected: 0x%08x, calculated: 0x%08x",
> +				pagenum, fcb->Checksum, checksum);
> +			continue;
> +		}
> +
> +		pr_debug("Found FCB:\n");
> +		pr_debug("PageDataSize:     0x%08x\n", fcb->PageDataSize);
> +		pr_debug("TotalPageSize:    0x%08x\n", fcb->TotalPageSize);
> +		pr_debug("SectorsPerBlock:  0x%08x\n", fcb->SectorsPerBlock);
> +		pr_debug("FW1_startingPage: 0x%08x\n",
> +			fcb->Firmware1_startingPage);
> +		pr_debug("PagesInFW1:       0x%08x\n", fcb->PagesInFirmware1);
> +		pr_debug("FW2_startingPage: 0x%08x\n",
> +			fcb->Firmware2_startingPage);
> +		pr_debug("PagesInFW2:       0x%08x\n", fcb->PagesInFirmware2);
> +
> +		return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int get_dbbt(struct mxs_nand_info *info, void *databuf)
> +{
> +	int i, ret;
> +	int page;
> +	int startpage = info->fcb.DBBTSearchAreaStartAddress;
> +	struct dbbt_block dbbt;
> +
> +	for (i = 0; i < 4; i++) {
> +		page = startpage + i * 64;

Same here.

Regards,
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d3fvA-0007l3-36
 for barebox@lists.infradead.org; Thu, 27 Apr 2017 09:41:11 +0000
Date: Thu, 27 Apr 2017 11:40:44 +0200
From: Jan Remmet <J.Remmet@phytec.de>
Message-ID: <20170427094044.GC2932@lws-weitzel2@phytec.de>
References: <1481702348-8687-1-git-send-email-j.remmet@phytec.de>
 <1481702348-8687-2-git-send-email-j.remmet@phytec.de>
 <20170426144315.GA3183@lws-weitzel2@phytec.de>
 <20170427070132.rc6rwbhyskdvit5y@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20170427070132.rc6rwbhyskdvit5y@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] imx-bbu-nand-fcb: add support for imx6ul
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 27, 2017 at 09:01:32AM +0200, Sascha Hauer wrote:
> On Wed, Apr 26, 2017 at 04:43:16PM +0200, Jan Remmet wrote:
> > On Wed, Dec 14, 2016 at 08:59:08AM +0100, Jan Remmet wrote:
> > > imx6ul secure the fcb with bch 40. The imx-kobs tool use a own modified
> > > bch lib. They reverse the bit order of the data and the ecc.
> > > To use the bch lib in barebox the bytes in the data buffers must be
> > > reversed.
> > > The data layout on nand is bit aligned. But with 40 bits this is not an
> > > issue for imx6ul now.
> > I saw that this wasn't applied, is there any rework needed?
> 
> It seems this patch slipped through the cracks. Applied now.

Thanks
Jan
> 
> Sascha
> 
> > 
> > Jan
> > 
> > > 
> > > Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> > > ---
> > >  common/Kconfig            |   1 +
> > >  common/imx-bbu-nand-fcb.c | 145 +++++++++++++++++++++++++++++++++++++++++++++-
> > >  2 files changed, 143 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/common/Kconfig b/common/Kconfig
> > > index ed472a0..a10caf6 100644
> > > --- a/common/Kconfig
> > > +++ b/common/Kconfig
> > > @@ -101,6 +101,7 @@ config BAREBOX_UPDATE_IMX_NAND_FCB
> > >  	depends on BAREBOX_UPDATE
> > >  	depends on MTD_WRITE
> > >  	depends on NAND_MXS
> > > +	select BCH if ARCH_IMX6
> > >  	default y
> > >  
> > >  config UBIFORMAT
> > > diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> > > index 34a5f83..5d3d3f7 100644
> > > --- a/common/imx-bbu-nand-fcb.c
> > > +++ b/common/imx-bbu-nand-fcb.c
> > > @@ -33,9 +33,12 @@
> > >  #include <linux/mtd/mtd.h>
> > >  #include <linux/mtd/nand.h>
> > >  #include <linux/stat.h>
> > > +#include <linux/bch.h>
> > > +#include <linux/bitops.h>
> > >  #include <io.h>
> > >  #include <crc.h>
> > >  #include <mach/generic.h>
> > > +#include <mach/imx6.h>
> > >  #include <mtd/mtd-peb.h>
> > >  
> > >  struct dbbt_block {
> > > @@ -129,6 +132,132 @@ static uint8_t calculate_parity_13_8(uint8_t d)
> > >  	return p;
> > >  }
> > >  
> > > +static uint8_t reverse_bit(uint8_t b)
> > > +{
> > > +	b = (b & 0xf0) >> 4 | (b & 0x0f) << 4;
> > > +	b = (b & 0xcc) >> 2 | (b & 0x33) << 2;
> > > +	b = (b & 0xaa) >> 1 | (b & 0x55) << 1;
> > > +
> > > +	return b;
> > > +}
> > > +
> > > +static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
> > > +{
> > > +	int i, j, m = 13;
> > > +	int blocksize = 128;
> > > +	int numblocks = 8;
> > > +	int ecc_buf_size = (m * eccbits + 7) / 8;
> > > +	struct bch_control *bch = init_bch(m, eccbits, 0);
> > > +	uint8_t *ecc_buf = xmalloc(ecc_buf_size);
> > > +	uint8_t *tmp_buf = xzalloc(blocksize * numblocks);
> > > +	uint8_t *psrc, *pdst;
> > > +
> > > +	/*
> > > +	 * The blocks here are bit aligned. If eccbits is a multiple of 8,
> > > +	 * we just can copy bytes. Otherwiese we must move the blocks to
> > > +	 * the next free bit position.
> > > +	 */
> > > +	BUG_ON(eccbits % 8);
> > > +
> > > +	memcpy(tmp_buf, fcb, sizeof(*fcb));
> > > +
> > > +	for (i = 0; i < numblocks; i++) {
> > > +		memset(ecc_buf, 0, ecc_buf_size);
> > > +		psrc = tmp_buf + i * blocksize;
> > > +		pdst = buf + i * (blocksize + ecc_buf_size);
> > > +
> > > +		/* copy data byte aligned to destination buf */
> > > +		memcpy(pdst, psrc, blocksize);
> > > +
> > > +		/*
> > > +		 * imx-kobs use a modified encode_bch which reverse the
> > > +		 * bit order of the data before calculating bch.
> > > +		 * Do this in the buffer and use the bch lib here.
> > > +		 */
> > > +		for (j = 0; j < blocksize; j++)
> > > +			psrc[j] = reverse_bit(psrc[j]);
> > > +
> > > +		encode_bch(bch, psrc, blocksize, ecc_buf);
> > > +
> > > +		/* reverse ecc bit */
> > > +		for (j = 0; j < ecc_buf_size; j++)
> > > +			ecc_buf[j] = reverse_bit(ecc_buf[j]);
> > > +
> > > +		/* Here eccbuf is byte aligned and we can just copy it */
> > > +		memcpy(pdst + blocksize, ecc_buf, ecc_buf_size);
> > > +	}
> > > +
> > > +	free(ecc_buf);
> > > +	free(tmp_buf);
> > > +	free_bch(bch);
> > > +}
> > > +
> > > +struct fcb_block *read_fcb_bch(void *rawpage, int eccbits)
> > > +{
> > > +	int i, j, ret, errbit, m = 13;
> > > +	int blocksize = 128;
> > > +	int numblocks = 8;
> > > +	int ecc_buf_size = (m * eccbits + 7) / 8;
> > > +	struct bch_control *bch = init_bch(m, eccbits, 0);
> > > +	uint8_t *fcb = xmalloc(numblocks * blocksize);
> > > +	uint8_t *ecc_buf = xmalloc(ecc_buf_size);
> > > +	uint8_t *data_buf = xmalloc(blocksize);
> > > +	unsigned int *errloc = xmalloc(eccbits * sizeof(*errloc));
> > > +	uint8_t *psrc, *pdst;
> > > +
> > > +	/* see encode_bch_ecc */
> > > +	BUG_ON(eccbits % 8);
> > > +
> > > +	for (i = 0; i < numblocks; i++) {
> > > +		psrc = rawpage + 32 + i * (blocksize + ecc_buf_size);
> > > +		pdst = fcb + i * blocksize;
> > > +
> > > +		/* reverse data bit */
> > > +		for (j = 0; j < blocksize; j++)
> > > +			data_buf[j] = reverse_bit(psrc[j]);
> > > +
> > > +		/* reverse ecc bit */
> > > +		for (j = 0; j < ecc_buf_size; j++)
> > > +			ecc_buf[j] = reverse_bit(psrc[j + blocksize]);
> > > +
> > > +		ret = decode_bch(bch, data_buf, blocksize, ecc_buf,
> > > +				 NULL, NULL, errloc);
> > > +
> > > +		if (ret < 0) {
> > > +			pr_err("Uncorrectable error at block %d\n", i);
> > > +			free(fcb);
> > > +			fcb = ERR_PTR(ret);
> > > +			goto out;
> > > +		}
> > > +		if (ret > 0)
> > > +			pr_info("Found %d correctable errors in block %d\n",
> > > +				ret, i);
> > > +
> > > +		for (j = 0; j < ret; j++) {
> > > +			/*
> > > +			 * calculate the reverse position
> > > +			 * pos - (pos % 8) -> byte offset
> > > +			 * 7 - (pos % 8) -> reverse bit position
> > > +			 */
> > > +			errbit = errloc[j] - 2 * (errloc[j] % 8) + 7;
> > > +			pr_debug("Found error: bit %d in block %d\n",
> > > +				 errbit, i);
> > > +			if (errbit < blocksize * 8)
> > > +				change_bit(errbit, psrc);
> > > +			/* else error in ecc, ignore it */
> > > +		}
> > > +		memcpy(pdst, psrc, blocksize);
> > > +	}
> > > +
> > > +out:
> > > +	free(data_buf);
> > > +	free(ecc_buf);
> > > +	free(errloc);
> > > +	free_bch(bch);
> > > +
> > > +	return (struct fcb_block *)fcb;
> > > +}
> > > +
> > >  static void encode_hamming_13_8(void *_src, void *_ecc, size_t size)
> > >  {
> > >  	int i;
> > > @@ -312,7 +441,11 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
> > >  		goto err;
> > >  	}
> > >  
> > > -	fcb = read_fcb_hamming_13_8(rawpage);
> > > +	if (cpu_is_mx6ul())
> > > +		fcb = read_fcb_bch(rawpage, 40);
> > > +	else
> > > +		fcb = read_fcb_hamming_13_8(rawpage);
> > > +
> > >  	if (IS_ERR(fcb)) {
> > >  		pr_err("Cannot read fcb\n");
> > >  		ret = PTR_ERR(fcb);
> > > @@ -766,8 +899,14 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
> > >  
> > >  	fcb_raw_page = xzalloc(mtd->writesize + mtd->oobsize);
> > >  
> > > -	memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
> > > -	encode_hamming_13_8(fcb_raw_page + 12, fcb_raw_page + 12 + 512, 512);
> > > +	if (cpu_is_mx6ul()) {
> > > +		/* 40 bit BCH, for i.MX6UL */
> > > +		encode_bch_ecc(fcb_raw_page + 32, fcb, 40);
> > > +	} else {
> > > +		memcpy(fcb_raw_page + 12, fcb, sizeof(struct fcb_block));
> > > +		encode_hamming_13_8(fcb_raw_page + 12,
> > > +				    fcb_raw_page + 12 + 512, 512);
> > > +	}
> > >  
> > >  	dbbt = dbbt_data_create(mtd);
> > >  
> > > -- 
> > > 2.7.4
> > > 
> > > 
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

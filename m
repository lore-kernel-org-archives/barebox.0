Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQaO5-0002gW-AH
 for barebox@lists.infradead.org; Thu, 20 Mar 2014 10:39:50 +0000
Message-ID: <532AC2EB.2040302@sam-solutions.net>
Date: Thu, 20 Mar 2014 13:28:59 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>
MIME-Version: 1.0
References: <1394610851-721-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20140313065458.GQ17250@pengutronix.de>
In-Reply-To: <20140313065458.GQ17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX6: bbu: Barebox update support for NAND.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <G.Milev@sam-solutions.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Sascha,

have you tried my patch on your board yet?
I will correct mentioned points and resent it to mail list later.
I'm also interested to see your implementation of this functionality.
Particulary regarding the

> This doesn't seem to take bad blocks into account. What happens when the
> first firmware image gets bigger due to bad blocks? It will be
> overwritten by the 2nd image.

part.

Best regards,
Lavnikevich Dmitry

On 03/13/14 09:54, Sascha Hauer wrote:
> Hi Dmitry,
>
> On Wed, Mar 12, 2014 at 10:54:11AM +0300, Dmitry Lavnikevich wrote:
>> This patch implements updating barebox on i.MX6 NAND. In userspace
>> similar task is performed by freescale kobs-ng utility.
>> To use this bbu profile nand handler should be registered in board
>> code with 'imx6_bbu_internal_nand_register_handler' function.
> I have the very same patch in the queue, it seems we have duplicated
> some work. As this version has some shortcomings I'll post my version as
> an alternative implementation. Also I'll try your version on a board I
> have here on which my version doesn't work (which is the reason I
> haven't posted my patch yet)
>
>> +static int erase_part(struct mtd_info *mtd)
>> +{
>> +	loff_t ofs;
>> +	int ret = 0;
>> +	struct erase_info erase_opts = {
>> +		.mtd = mtd,
>> +		.addr = 0,
>> +		.len = mtd->erasesize,
>> +		.callback = NULL,
>> +	};
>> +
>> +	for (ofs = 0; ofs < mtd->size; ofs += mtd->erasesize) {
>> +		ret = mtd_block_isbad(mtd, ofs);
>> +		if (ret > 0) {
>> +			printf("Warning: bad block at 0x%08llx. Skipping\n",
>> +				   ofs);
>> +			continue;
> This is not worth issueing a warning. Bad blocks just happen.
>
>> +		} else if (ret < 0) {
>> +			printf("Error: checking bad block at 0x%llx failed\n",
>> +				   ofs);
>> +			ret = 1;
>> +			goto err;
>> +		}
>> +
>> +		erase_opts.addr = ofs;
>> +		ret = mtd->erase(mtd, &erase_opts);
> You should use mtd_erase and friends rather than dereferencing struct
> mtd_info.
>
>> +	buf = malloc(mtd->erasesize);
>> +	if (!buf) {
>> +		ret = -ENOMEM;
>> +		goto err_out;
>> +	}
>> +
>> +	image = read_imagefile(mtd, data->imagefile, &fw_size);
>> +	if (!image) {
>> +		ret = -errno;
>> +		goto err_out1;
>> +	}
> No Need to read the image, data->image contains a pointer to it.
>
>> +
>> +	search_area_size_in_bytes =
>> +		(1 << SEARCH_EXPONENT) * PAGES_PER_STRIDE * mtd->writesize;
>> +	max_boot_stream_in_bytes =
>> +		(mtd->size - search_area_size_in_bytes * 2) / 2;
>> +
>> +	fw1_offset = 2 * search_area_size_in_bytes;
>> +	fw2_offset = fw1_offset + max_boot_stream_in_bytes;
>> +
>> +	fcb = create_fcb(mtd, buf, fw1_offset, fw_size, fw2_offset);
>> +	if (IS_ERR(fcb)) {
>> +		printf("Failed to initialize FCB: %ld\n", PTR_ERR(fcb));
>> +		ret = PTR_ERR(fcb);
>> +		goto err_out2;
>> +	}
>> +	encode_hamming_13_8(fcb, (void *)fcb + 512, 512);
>> +
>> +	dbbt = create_dbbt(mtd, &bbtn);
>> +	if (!dbbt)
>> +		goto err_out2;
>> +
>> +	erase_part(mtd);
> Error checking?
>
>> +
>> +	block = bcb_cdev->offset;
>> +	for (fcb_written = 0; fcb_written < 4; fcb_written++) {
>> +
>> +		if (nand_isbad_bbt(mtd, block, false))
>> +			continue;
>> +
>> +		ret = write_fcb(mtd, buf, block);
>> +		if (ret) {
>> +			printf("Failed to write FCB to block %u\n", block);
>> +			goto err_out2;
>> +		}
>> +		block += mtd->erasesize;
>> +	}
>> +	ret = fcb_written ? 0 : -ENOSPC;
>> +	if (ret)
>> +		goto err_out2;
>> +
>> +	stride_size_in_bytes = PAGES_PER_STRIDE * mtd->writesize;
>> +	block = SEARCH_AREA_SIZE_IN_PAGES * mtd->writesize;
>> +	i = 0;
>> +	while (i < SEARCH_AREA_SIZE_IN_STRIDES) {
>> +		ret = write_dbbt(mtd, dbbt, buf, block, sizeof(*dbbt));
>> +		if (ret)
>> +			goto err_out2;
>> +
>> +		block += stride_size_in_bytes;
>> +		i++;
>> +	}
>> +
>> +	block = SEARCH_AREA_SIZE_IN_PAGES * mtd->writesize + 4 * mtd->writesize;
>> +	i = 0;
>> +	while (i < SEARCH_AREA_SIZE_IN_STRIDES) {
>> +		ret = write_bbtn(mtd, bbtn, buf, block, sizeof(*bbtn));
>> +		if (ret)
>> +			goto err_out2;
>> +
>> +		block += stride_size_in_bytes;
>> +		i++;
>> +	}
>> +
>> +	ret = write_image(mtd, image, fw1_offset, fw_size);
>> +	if (ret)
>> +		goto err_out2;
>> +	ret = write_image(mtd, image, fw2_offset, fw_size);
>> +	if (ret)
>> +		goto err_out2;
> This doesn't seem to take bad blocks into account. What happens when the
> first firmware image gets bigger due to bad blocks? It will be
> overwritten by the 2nd image.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

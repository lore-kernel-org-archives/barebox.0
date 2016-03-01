Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aafb4-0000ke-0d
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 08:23:58 +0000
Date: Tue, 1 Mar 2016 09:23:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160301082334.GJ9224@pengutronix.de>
References: <1456499985-22860-1-git-send-email-yegorslists@googlemail.com>
 <1456499985-22860-3-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456499985-22860-3-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v4 3/3] fs: add support for SquashFS 4.0
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Feb 26, 2016 at 04:19:45PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> The driver was imported from Linux 4.4.
> 
> Current implementation supports only XZ decompressor.
> 
> Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
> 	v4: - add promt to mount examples
> 	    - rework squashfs_read to enable non linear reading
> 	    - embed super_block into squashfs_priv
> 	    - check malloc' return value
> 
>         v3: - rework inode searching
>             - eliminate memleaks in directory search
> 
>         v2: - fix checkpatch errors
>             - remove spinlock/wait code from cache implementation
>             - fix directory listing
>             - add documentation entry about SquashFS
>             - fix compiling without XZ enabled
>             - fix some memory leaks
> 
> +
> +static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
> +		size_t insize)
> +{
> +	unsigned int size = insize;
> +	unsigned int pos = f->pos;
> +	unsigned int ofs;
> +	unsigned int now;
> +	unsigned int idx;
> +	unsigned int data_block_pos, data_block;
> +	struct squashfs_page *page = f->priv;
> +
> +	data_block = f->pos / (32 * PAGE_CACHE_SIZE);
> +	if (data_block != page->data_block) {
> +		page->data_block = data_block;
> +		page->idx = 0;
> +	}
> +
> +	data_block_pos = f->pos - page->data_block * 32 * PAGE_CACHE_SIZE;
> +	idx = data_block_pos / PAGE_CACHE_SIZE;
> +	page->real_page.index = page->data_block * 32;
> +
> +	while (size) {
> +		if (page->idx == 0)
> +			squashfs_readpage(NULL, &page->real_page);
> +
> +		/* Read till end of current buffer page */
> +		ofs = pos % PAGE_CACHE_SIZE;
> +		if (ofs) {
> +			now = min(size, PAGE_CACHE_SIZE - ofs);
> +			memcpy(buf, page->buf[idx] + ofs, now);
> +
> +			size -= now;
> +			pos += now;
> +			buf += now;
> +			idx++;
> +			if (idx > 31) {
> +				idx = 0;
> +				page->idx = 0;
> +				page->data_block++;
> +				page->real_page.index = page->data_block * 32;
> +				continue;
> +			}
> +		}
> +
> +		/* Do full buffer pages */
> +		while (size >= PAGE_CACHE_SIZE) {
> +			memcpy(buf, page->buf[idx], PAGE_CACHE_SIZE);
> +			size -= PAGE_CACHE_SIZE;
> +			pos += PAGE_CACHE_SIZE;
> +			buf += PAGE_CACHE_SIZE;
> +			idx++;
> +			if (idx > 31) {
> +				idx = 0;
> +				page->idx = 0;
> +				page->data_block++;
> +				page->real_page.index = page->data_block * 32;
> +				continue;

Here you increase the real_page.index without calling
squashfs_readpage() again.

The outer loop shouldn't be necessary. It is used in the if (ofs) above,
but this doesn't look entirely correct.

I think you are doing too much in this function. It should be easier if
you create a helper function that takes the current file position and
returns the buffer that belongs to this position. See below for a (completely
untested) template:

static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
{
	unsigned int data_block = pos / (32 * PAGE_CACHE_SIZE);
	unsigned int data_block_pos = pos % (32 * PAGE_CACHE_SIZE);
	unsigned int idx = data_block_pos / PAGE_CACHE_SIZE;

	if (data_block != page->data_block) {
		page->real_page.index = data_block * 32;
		squashfs_readpage(NULL, &page->real_page);
		page->data_block = data_block;
	}

	*buf = page->buf[idx];

	return 0;
}

static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
		size_t insize)
{
	unsigned int size = insize;
	unsigned int pos = f->pos;
	unsigned int ofs;
	unsigned int now;
	void *pagebuf;
	struct squashfs_page *page = f->priv;

	/* Read till end of current buffer page */
	ofs = pos % PAGE_CACHE_SIZE;
	if (ofs) {
		squashfs_read_buf(page, pos, &pagebuf);

		now = min(size, PAGE_CACHE_SIZE - ofs);
		memcpy(buf, pagebuf + ofs, now);

		size -= now;
		pos += now;
		buf += now;
	}

	/* Do full buffer pages */
	while (size >= PAGE_CACHE_SIZE) {
		squashfs_read_buf(page, pos, &pagebuf);

		memcpy(buf, pagebuf, PAGE_CACHE_SIZE);
		size -= PAGE_CACHE_SIZE;
		pos += PAGE_CACHE_SIZE;
		buf += PAGE_CACHE_SIZE;
	}

	/* And the rest */
	if (size) {
		squashfs_read_buf(page, pos, &pagebuf);
		memcpy(buf, pagebuf, size);
		size  = 0;
	}

	return insize;
}

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

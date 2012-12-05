Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TgIFu-0004R0-EE
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 16:55:35 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 08A52FF99D3
 for <barebox@lists.infradead.org>; Wed,  5 Dec 2012 18:07:06 +0100 (CET)
Date: Wed, 5 Dec 2012 17:53:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121205165337.GJ8327@game.jcrosoft.org>
References: <1354215786-25615-1-git-send-email-s.hauer@pengutronix.de>
 <1354215786-25615-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354215786-25615-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/2] mtd core: call driver write function with complete
 buffer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:03 Thu 29 Nov     , Sascha Hauer wrote:
> mtd->write is supposed to loop around pages internally, no need
> to do this in mtd_write. This fixes a huge write performance drop
> with the m25p80 driver when it was converted to a mtd driver recently.
> Since mtd->writesize is 1 for this driver mtd_write ended up doing
> single byte writes on the flash.
this is the right patch for the flash

but this break my nand on 9x5

## Total Size      = 0x0002948e = 169102 Bytes

erasing partition /dev/nand0.barebox.bb


flashing barebox.bin to /dev/nand0.barebox.bb

	[#################################################################]
nand_write: Attempt to write not page aligned data
CRC32 for barebox.bin 0x00000000 ... 0x0002948d ==> 0x4cfca554
CRC32 for /dev/nand0.barebox.bb 0x00000000 ... 0x0002948d ==> 0x61dca32f != 0x61dca32f ** ERROR **

Best Regards,
J.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/core.c |   56 +++-------------------------------------------------
>  1 file changed, 3 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 8601787..b5916da 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -62,65 +62,15 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
>  #define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
>  
>  #ifdef CONFIG_MTD_WRITE
> -static int all_ff(const void *buf, int len)
> -{
> -	int i;
> -	const uint8_t *p = buf;
> -
> -	for (i = 0; i < len; i++)
> -		if (p[i] != 0xFF)
> -			return 0;
> -	return 1;
> -}
> -
>  static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
>  			  loff_t _offset, ulong flags)
>  {
>  	struct mtd_info *mtd = cdev->priv;
> -	size_t retlen, now;
> -	int ret = 0;
> -	void *wrbuf = NULL;
> -	size_t count = _count;
> -	unsigned long offset = _offset;
> -
> -	if (NOTALIGNED(offset)) {
> -		printf("offset 0x%0lx not page aligned\n", offset);
> -		return -EINVAL;
> -	}
> -
> -	dev_dbg(cdev->dev, "write: offset: 0x%08lx count: 0x%zx\n", offset, count);
> -	while (count) {
> -		now = count > mtd->writesize ? mtd->writesize : count;
> -
> -		if (NOTALIGNED(now)) {
> -			dev_dbg(cdev->dev, "not aligned: %d %ld\n",
> -				mtd->writesize,
> -				(offset % mtd->writesize));
> -			wrbuf = xmalloc(mtd->writesize);
> -			memset(wrbuf, 0xff, mtd->writesize);
> -			memcpy(wrbuf + (offset % mtd->writesize), buf, now);
> -			if (!all_ff(wrbuf, mtd->writesize))
> -				ret = mtd->write(mtd, MTDPGALG(offset),
> -						  mtd->writesize, &retlen,
> -						  wrbuf);
> -			free(wrbuf);
> -		} else {
> -			if (!all_ff(buf, mtd->writesize))
> -				ret = mtd->write(mtd, offset, now, &retlen,
> -						  buf);
> -			dev_dbg(cdev->dev,
> -				"offset: 0x%08lx now: 0x%zx retlen: 0x%zx\n",
> -				offset, now, retlen);
> -		}
> -		if (ret)
> -			goto out;
> +	size_t retlen;
> +	int ret;
>  
> -		offset += now;
> -		count -= now;
> -		buf += now;
> -	}
> +	ret = mtd->write(mtd, _offset, _count, &retlen, buf);
>  
> -out:
>  	return ret ? ret : _count;
>  }
>  #endif
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

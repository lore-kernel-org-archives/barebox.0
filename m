Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaHv9-0006Ck-EF
 for barebox@lists.infradead.org; Mon, 29 Feb 2016 07:07:08 +0000
Date: Mon, 29 Feb 2016 08:06:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160229070643.GD9224@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
 <1456488287-23404-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456488287-23404-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/5] drivers: add simple hw_random implementation
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 26, 2016 at 01:04:43PM +0100, Steffen Trumtrar wrote:
> Add a simple hw_random implementation based on code from
> Linux v4.5-rc5.
> 
> All the entropypool initialization stuff is left out and
> the obsolete data_read/data_present calls are omitted.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> +#include <common.h>
> +#include <linux/hw_random.h>
> +
> +static LIST_HEAD(hwrngs);
> +
> +#define RNG_BUFFER_SIZE		32
> +
> +int hwrng_get_data(struct hwrng *rng, u8 *buffer, size_t size, int wait)
> +{
> +	if (rng->read)
> +		return rng->read(rng, buffer, size, wait);

When rng->read is NULL you already fail in the registration, no need to
check here.

> +
> +	return 0;
> +}
> +
> +static int hwrng_init(struct hwrng *rng)
> +{
> +	int ret = 0;
> +
> +	if (rng->init)
> +		ret = rng->init(rng);
> +
> +	list_add_tail(&rng->list, &hwrngs);

When rng->init fails you probably don't want to add it to the list.

> +
> +	return ret;
> +}
> +
> +static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
> +			    loff_t offset, unsigned long flags)
> +{
> +	struct hwrng *rng = container_of(cdev, struct hwrng, cdev);
> +	ssize_t cur = 0;
> +	int err = 0;
> +	int len;
> +	size_t count = size;
> +
> +	memset(buf, 0, size);
> +
> +	while (count) {

You can initialize a variable with the minimum of count and
RNG_BUFFER_SIZE here,

> +		len = hwrng_get_data(rng, rng->buf, RNG_BUFFER_SIZE, true);

Use it here instead of RNG_BUFFER_SIZE

> +		if (len < 0) {
> +			err = len;
> +			break;
> +		}
> +
> +		if (len > count)
> +			len = count;

and drop this check.

> +
> +		memcpy(buf + cur, rng->buf, len);
> +
> +		count -= len;
> +		cur += len;
> +	}
> +
> +	return cur ? : err;

When you get an error in the second loop iteration then cur is true and
you return it instead of the error. Is that what you want?

> +}
> +
> +
> +static struct file_operations rng_chrdev_ops = {
> +	.read  = rng_dev_read,
> +	.lseek = dev_lseek_default,
> +};
> +
> +static int hwrng_register_cdev(struct hwrng *rng)
> +{
> +	rng->cdev.name = "hwrng";
> +	rng->cdev.flags = DEVFS_IS_CHARACTER_DEV;
> +	rng->cdev.ops = &rng_chrdev_ops;
> +	rng->cdev.dev = rng->dev;
> +
> +	return devfs_create(&rng->cdev);
> +}
> +
> +struct hwrng *hwrng_get_first(void)
> +{
> +	if (!list_empty(&hwrngs))
> +		return list_first_entry(&hwrngs, struct hwrng, list);
> +	else
> +		return ERR_PTR(-ENODEV);

Please use positive logic, it's usually easier to read.

> +}
> +
> +int hwrng_register(struct device_d *dev, struct hwrng *rng)
> +{
> +	int err;
> +
> +	if (rng->name == NULL || rng->read == NULL)
> +		return -EINVAL;
> +
> +	rng->buf = xzalloc(RNG_BUFFER_SIZE);

Please make sure you do not loose memory in infrastructure code.

> +
> +	err = hwrng_init(rng);
> +	if (err)
> +		return err;
> +
> +	rng->dev = dev;
> +
> +	err = hwrng_register_cdev(rng);
> +
> +	return err;
> +}
> +        of the GNU General Public License, incorporated herein by reference.
> +
> + */
> +
> +#ifndef LINUX_HWRANDOM_H_
> +#define LINUX_HWRANDOM_H_
> +
> +#include <linux/list.h>
> +
> +/**
> + * struct hwrng - Hardware Random Number Generator driver
> + * @name:		Unique RNG name.
> + * @init:		Initialization callback (can be NULL).
> + * @read:		New API. drivers can fill up to max bytes of data
> + *			into the buffer. The buffer is aligned for any type.
> + * @priv:		Private data, for use by the RNG driver.
> + */
> +struct hwrng {
> +	const char *name;
> +	int (*init)(struct hwrng *rng);
> +	int (*read)(struct hwrng *rng, void *data, size_t max, bool wait);
> +	unsigned long priv;

This is unused, no?

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

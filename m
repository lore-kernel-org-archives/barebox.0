Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3FqE-0005t9-CD
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 06:54:52 +0000
Date: Tue, 3 Apr 2018 08:54:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180403065436.p2vec7ntdja55hts@pengutronix.de>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
 <20180326130915.8726-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326130915.8726-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/3] console: Add simplified 'serdev' framework from
 Linux kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

Some comments inside.


On Mon, Mar 26, 2018 at 06:09:14AM -0700, Andrey Smirnov wrote:
> Port 'serdev' UART-slave deivce framework found in recent Linux
> kernels (post 4.13) in order to be able to port 'serdev' slave drivers
> from Linux.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> @@ -323,6 +324,17 @@ int console_register(struct console_device *newcdev)
>  		dev->parent = newcdev->dev;
>  	platform_device_register(dev);
>  
> +	newcdev->open_count = 0;
> +
> +	/*
> +	 * If our console deive is a serdev, we skip the creation of

s/deive/device/

> +	 * corresponding entry in /dev as well as registration in
> +	 * console_list and just go straigh to populating child

s/straigh/straight/

> +	 * devices.
> +	 */
> +	if (serdev_node)
> +		return of_platform_populate(serdev_node, NULL, dev);

How is this going to be used? A serdev driver binds to the serdev_node
and then it probably needs to get a pointer to the console device,
right? How does the driver accomplish this?

> +/**
> + * struct serdev_device - Basic representation of an serdev device
> + *
> + * @dev:		Corresponding device
> + * @fifo:		Circular buffer used for console draining
> + * @buf:		Buffer used to pass Rx data to consumers
> + * @poller		Async poller used to poll this serdev
> + * @polling_interval:	Async poller periodicity
> + * @polling_window:	Duration of a single busy loop poll
> + * @receive_buf:	Function called with data received from device;
> + *			returns number of bytes accepted;
> + */
> +struct serdev_device {
> +	struct device_d *dev;
> +	struct kfifo *fifo;
> +	unsigned char *buf;
> +	struct poller_async poller;
> +	uint64_t polling_interval;
> +	uint64_t polling_window;
> +
> +	int (*receive_buf)(struct serdev_device *, const unsigned char *,
> +			   size_t);
> +};
> +
> +int serdev_device_open(struct serdev_device *);
> +unsigned int serdev_device_set_baudrate(struct serdev_device *, unsigned int);
> +int serdev_device_write(struct serdev_device *, const unsigned char *,
> +			size_t, unsigned long);

So a serdev driver uses serdev_device_write() to send characters out. To
receive characters it has to implement serdev_device->receive_buf,
right? What kind of devices did you implement this for? For devices
which send data without request (GPS?) this seems the way to go. For
others a synchronous receive function might be good, no?

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

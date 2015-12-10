Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a784Y-0005eE-KS
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 20:44:19 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 10 Dec 2015 20:42:42 +0000
Message-ID: <1449780168.26955.81.camel@rtred1test09.kymeta.local>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
 <1449565539-29374-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449565539-29374-2-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <BB2AAC1BA2174A47AFA6F346D3E6B5D8@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/4] misc: Add iodevice support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, 2015-12-08 at 10:05 +0100, Sascha Hauer wrote:
> +int iodevice_register(struct iodevice *iodev)
> +{
> +	const char *devname = NULL;
> +	int i, ret;
> +
> +	if (iodev->hwdev->device_node) {
> +		devname = of_alias_get(iodev->hwdev->device_node);
> +		iodev->dev.id = DEVICE_ID_SINGLE;
> +	}
> +
> +	if (!devname) {
> +		devname = "io";
> +		iodev->dev.id = DEVICE_ID_DYNAMIC;
> +	}
> +
> +	strcpy(iodev->dev.name, devname);
> +
> +	iodev->dev.parent = iodev->hwdev;
> +
> +	ret = register_device(&iodev->dev);

Why does every driver/subsystem need to implement its own alias
support?  

Since register_device() has access to
(&iodev->dev)->parent->device_node, couldn't it do the alias lookup
instead, so that each driver doesn't need to?

Then one could write:

iodev->dev.parent = iodev->hwdev;
strcpy(iodev->dev.name, "io");
iodev->dev.id = DEVICE_ID_DYNAMIC;
ret = register_device(&iodev->dev);

I guess this doesn't work exactly for net drivers, since they want to do
s/ethernet(\d+)/eth\1/ on the alias name.

And some drivers create a cdev the alias should be applied to instead of
a dev.  Though I supposed devfs_create() could do the same thing.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

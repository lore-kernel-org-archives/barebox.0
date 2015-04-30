Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yni4Q-00008L-5O
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 06:35:39 +0000
Date: Thu, 30 Apr 2015 08:35:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150430063514.GZ6325@pengutronix.de>
References: <1430297818-14961-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430297818-14961-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] of: use 'const void *' for struct of_device_id.data
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2015 at 11:56:58AM +0300, Antony Pavlov wrote:
> Since 2011 barebox' of_device_id struct uses unsigned long type for data field:
> 
>     struct of_device_id {
>             char *compatible;
>             unsigned long data;
>     };
> 
> Almost always struct of_device_id.data field are used as pointer
> and need 'unsigned long' casting.
> 
> E.g. see 'git grep -A 4 of_device_id drivers/' output:
> 
>     drivers/ata/sata-imx.c:static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
>     drivers/ata/sata-imx.c- {
>     drivers/ata/sata-imx.c-         .compatible = "fsl,imx6q-ahci",
>     drivers/ata/sata-imx.c-         .data = (unsigned long)&data_imx6,
>     drivers/ata/sata-imx.c- }, {
> 
> Here is of_device_id struct in linux kernel v4.0:
> 
>     struct of_device_id {
>             char name[32];
>             char type[32];
>             char compatible[128];
>             const void *data;
>     };
> 
> Changing of_device_id.data type to 'const void *data' will increase
> barebox' linux kernel compatibility and decrease number of 'unsigned
> long' casts.
> 
> Part of the patch was done using the 'coccinelle' tool with the
> following semantic patch:
> 
>     @rule1@
>     identifier dev;
>     identifier type;
>     identifier func;
>     @@
>     func(...) {
>     <...
>     - dev_get_drvdata(dev, (unsigned long *)&type)
>     + dev_get_drvdata(dev, (const void **)&type)
>     ...>
>     }
>     @rule2@
>     identifier dev;
>     identifier type;
>     identifier func;
>     identifier data;
>     @@
>     func(...) {
>     <...
>     - dev_get_drvdata(dev, (unsigned long *)&type->data)
>     + dev_get_drvdata(dev, (const void **)&type->data)
>     ...>
>     }
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

[...]

> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> index eba04a3..06d2fba 100644
> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -99,7 +99,7 @@ static int imx_gpt_probe(struct device_d *dev)
>  	if (timer_base)
>  		return 0;
>  
> -	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
> +	ret = dev_get_drvdata(dev, (const void **)&regs);

I applied this to -next to get some compile coverage. The one thing I
don't like about this patch is this explicit cast to const void ** that
is needed. This makes the compiler happy even when the pointer passed in
is not const.

The following may be a way to fix this, but maybe there is a more
elegant way. However, since most of the data passed into dev_get_drvdata
is not const at the moment this requires more patches anyway. So I think
your patch is fine the way it is.

Sascha

-----------------------------8<-----------------------


diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index da020d8..e55aa44 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -404,7 +404,7 @@ void devices_shutdown(void)
 	}
 }
 
-int dev_get_drvdata(struct device_d *dev, const void **data)
+int __dev_get_drvdata(struct device_d *dev, const void **data)
 {
 	if (dev->of_id_entry) {
 		*data = dev->of_id_entry->data;
diff --git a/include/driver.h b/include/driver.h
index b8a94e4..f182e01 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -512,7 +512,15 @@ int devfs_create_partitions(const char *devname,
 #define DRV_OF_COMPAT(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
 
-int dev_get_drvdata(struct device_d *dev, const void **data);
+int __dev_get_drvdata(struct device_d *dev, const void **data);
+
+#define dev_get_drvdata(dev, data) ({		\
+	const void *d;				\
+	int ret;				\
+	ret = __dev_get_drvdata(dev, &d);	\
+	*(data) = d;				\
+	ret;					\
+})
 
 int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

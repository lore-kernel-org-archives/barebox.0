Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0XYu-0002Xg-BT
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 12:46:32 +0000
Date: Sun, 12 Aug 2012 14:46:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120812124630.GL1451@pengutronix.de>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] fs/mount: add autodetection type support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 12, 2012 at 01:49:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if NULL is pass as type mount will try to autodetect the filesystem type
> 
> +static const char * detect_fs(const char *filename)
> +{
> +	enum filetype type = file_name_detect_type(filename);
> +	struct driver_d *drv;
> +	struct fs_driver_d *fdrv;
> +
> +	if (type == filetype_unknown)
> +		return NULL;
> +
> +	for_each_driver(drv) {
> +		fdrv = drv_to_fs_driver(drv);
> +
> +		if (drv->bus != &fs_bus)
> +			continue;

Please convert drv to a fdrv after checking that this is really a
filesystem driver, not before.
I know, it's both the same in this case, but it looks confusing.

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

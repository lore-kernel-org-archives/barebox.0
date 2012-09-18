Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDtK0-0001jY-AY
 for barebox@lists.infradead.org; Tue, 18 Sep 2012 08:38:20 +0000
Date: Tue, 18 Sep 2012 10:38:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120918083818.GR6180@pengutronix.de>
References: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 1/2] [v2] filetype: Improve FAT detection
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franck,

On Sun, Sep 16, 2012 at 10:33:32PM +0200, Franck Jullien wrote:
> We may have some disk with MBR as a first sector. In this case, the
> current FAT check returns an error. However, the FAT sector exist and
> the MBR can tell us where it is.
> 
> This patch add to file_name_detect_type function the ability to find
> the FAT boot sector on the first sector of the first partition in case
> it is not on sector 0.
> 
> It also introduce is_fat_boot_sector to check if a buffer is a FAT boot
> sector.

I think it would be cleaner to introduce a filetype MBR as a first
step...

> @@ -110,6 +128,7 @@ enum filetype file_name_detect_type(const char *filename)
>  	int fd, ret;
>  	void *buf;
>  	enum filetype type = filetype_unknown;
> +	unsigned long bootsec;
>  
>  	fd = open(filename, O_RDONLY);
>  	if (fd < 0)
> @@ -123,6 +142,25 @@ enum filetype file_name_detect_type(const char *filename)
>  
>  	type = file_detect_type(buf);
>  
> +	/* Let's give FAT another chance */
> +	if (type == filetype_unknown) {

... then you could check for type == filetype_mbr here instead and
return filetype_mbr when the check for fat below fails.

> +		ret = is_fat_boot_sector((u8 *)buf, &bootsec);
> +		if (ret && bootsec != 0) {
> +			/* The first sector is an MBR, now check for
> +			 * FAT in the first partition */
> +			lseek(fd, (bootsec) * 512, SEEK_SET);

Please check the return value of lseek here. lseek will fail when the file
is on a tftp filesystem or when the file is not large enough.

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

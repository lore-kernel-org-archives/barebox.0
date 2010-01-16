Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NW6r7-00079G-Mu
	for barebox@lists.infradead.org; Sat, 16 Jan 2010 11:30:14 +0000
Date: Sat, 16 Jan 2010 12:30:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100116113005.GQ23110@pengutronix.de>
References: <1263563094-21391-1-git-send-email-jacmet@sunsite.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1263563094-21391-1-git-send-email-jacmet@sunsite.dk>
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
Subject: Re: [PATCHv3] addpart: support @<offset>
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Fri, Jan 15, 2010 at 02:44:54PM +0100, Peter Korsgaard wrote:
> We claim to be compatible with the kernel's cmdlinepart parser, so
> support <size>@<offset> like the kernel does.

This is nice to have. Applied to -next.

Thanks
  Sascha

> 
> Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
> ---
> Changes since v1:
>  - Update doxygen documentation to match.
> Changes since v2:
>  - Update longhelp to match.
> 
>  commands/partition.c |   37 +++++++++++++++++++++++--------------
>  1 files changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/commands/partition.c b/commands/partition.c
> index 3cb7b61..bc0bbf9 100755
> --- a/commands/partition.c
> +++ b/commands/partition.c
> @@ -41,8 +41,10 @@
>  #include <linux/stat.h>
>  #include <libgen.h>
>  
> +#define SIZE_REMAINING ((ulong)-1)
> +
>  static int mtd_part_do_parse_one(char *devname, const char *partstr,
> -				 char **endp, unsigned long offset,
> +				 char **endp, unsigned long *offset,
>  				 off_t devsize, size_t *retsize)
>  {
>  	ulong size;
> @@ -54,12 +56,18 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  	memset(buf, 0, PATH_MAX);
>  
>  	if (*partstr == '-') {
> -		size = devsize - offset;
> +		size = SIZE_REMAINING;
>  		end = (char *)partstr + 1;
>  	} else {
>  		size = strtoul_suffix(partstr, &end, 0);
>  	}
>  
> +	if (*end == '@')
> +		*offset = strtoul_suffix(end+1, &end, 0);
> +
> +	if (size == SIZE_REMAINING)
> +		size = devsize - *offset;
> +
>  	partstr = end;
>  
>  	if (*partstr == '(') {
> @@ -76,7 +84,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  		end++;
>  	}
>  
> -	if (size + offset > devsize) {
> +	if (size + *offset > devsize) {
>  		printf("%s: partition end is beyond device\n", buf);
>  		return -EINVAL;
>  	}
> @@ -93,7 +101,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  
>  	*retsize = size;
>  
> -	ret = devfs_add_partition(devname, offset, size, flags, buf);
> +	ret = devfs_add_partition(devname, *offset, size, flags, buf);
>  	if (ret)
>  		printf("cannot create %s: %s\n", buf, strerror(-ret));
>  	return ret;
> @@ -123,7 +131,7 @@ static int do_addpart(cmd_tbl_t * cmdtp, int argc, char *argv[])
>  	while (1) {
>  		size_t size = 0;
>  
> -		if (mtd_part_do_parse_one(devname, endp, &endp, offset, devsize, &size))
> +		if (mtd_part_do_parse_one(devname, endp, &endp, &offset, devsize, &size))
>  			return 1;
>  
>  		offset += size;
> @@ -146,10 +154,11 @@ static const __maybe_unused char cmd_addpart_help[] =
>  "\n"
>  "addpart adds a partition description to a device. The partition description\n"
>  "has the form\n"
> -"size1(name1)[ro],size2(name2)[ro],...\n"
> -"<device> is the device name under. Size can be given in decimal or if prefixed\n"
> -"with 0x in hex. Sizes can have an optional suffix K,M,G. The size of the last\n"
> -"partition can be specified as '-' for the remaining space of the device.\n"
> +"size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n"
> +"<device> is the device name under. Size and offset can be given in decimal\n"
> +"or - if prefixed with 0x in hex. Both can have an optional suffix K,M,G.\n"
> +"The size of the last partition can be specified as '-' for the remaining\n"
> +"space of the device.\n"
>  "This format is the same as used in the Linux kernel for cmdline mtd partitions.\n"
>  "\n"
>  "Note: That this command has to be reworked and will probably change it's API.";
> @@ -167,12 +176,12 @@ BAREBOX_CMD_END
>   * Adds a partition description to a device. The partition description has the
>   * form
>   *
> - * size1(name1)[ro],size2(name2)[ro],...
> + * size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...
>   *
> - * \<device> is the device name under. Sizes can be given in decimal or - if
> - * prefixed with 0x - in hex. Sizes can have an optional suffix K,M,G. The
> - * size of the last partition can be specified as '-' for the remaining space
> - * of the device.
> + * \<device> is the device name under. Size and offset can be given in decimal
> + * or - if prefixed with 0x - in hex. Both can have an optional suffix K,M,G.
> + * The size of the last partition can be specified as '-' for the remaining
> + * space of the device.
>   *
>   * @note The format is the same as used in the Linux kernel for cmdline mtd
>   * partitions.
> -- 
> 1.6.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

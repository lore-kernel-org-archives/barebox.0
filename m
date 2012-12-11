Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TiMb9-0008Of-HL
 for barebox@lists.infradead.org; Tue, 11 Dec 2012 09:58:00 +0000
Date: Tue, 11 Dec 2012 10:57:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121211095757.GS10369@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
 <1355127255-24797-11-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355127255-24797-11-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 10/10] commands: add ubiformat
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 10, 2012 at 09:14:15AM +0100, Wolfram Sang wrote:
> Imported from mtd-utils and stripped down to needed functionality.
> Based on an older version (1.4.5.) since the newer do use MEMWRITE
> interfaces which we don't have in barebox (yet).
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
> +
> +		default:
> +			fprintf(stderr, "Use -h for help\n");
> +			return -1;
> +		}

Oh no. I'm stuck in a loop. ubiformat -h tells me that this option
is not supported and I should try ubiformat -h. Luckily my head internal
watchdog triggered which allowed me to write this mail.

Please return COMMAND_ERROR_USAGE from ubiformat.

> +static int read_all(int fd, void *buf, size_t len)
> +{
> +	while (len > 0) {
> +		ssize_t l = read(fd, buf, len);
> +		if (l == 0) {
> +			return errmsg("eof reached; %zu bytes remaining", len);
> +		} else if (l > 0) {
> +			buf += l;
> +			len -= l;
> +		} else if (errno == EINTR || errno == EAGAIN) {
> +			continue;
> +		} else {
> +			return sys_errmsg("reading failed; %zu bytes remaining", len);
> +		}
> +	}
> +
> +	return 0;
> +}

We have read_full in barebox.

> +static const __maybe_unused char cmd_ubiformat_help[] =
> +" - a tool to format MTD devices and flash UBI images\n"
> +"\n"
> +"-s, --sub-page-size=<bytes>  minimum input/output unit used for UBI\n"
> +"                             headers, e.g. sub-page size in case of NAND\n"
> +"                             flash (equivalent to the minimum input/output\n"
> +"                             unit size by default)\n"
> +"-O, --vid-hdr-offset=<offs>  offset if the VID header from start of the\n"
> +"                             physical eraseblock (default is the next\n"
> +"                             minimum I/O unit or sub-page after the EC\n"
> +"                             header)\n"
> +"-n, --no-volume-table        only erase all eraseblock and preserve erase\n"
> +"                             counters, do not write empty volume table\n"
> +"-f, --flash-image=<file>     flash image file\n"
> +"-e, --erase-counter=<value>  use <value> as the erase counter value for all\n"
> +"                             eraseblocks\n"
> +"-x, --ubi-ver=<num>          UBI version number to put to EC headers\n"
> +"                             (default is 1)\n"
> +"-Q, --image-seq=<num>        32-bit UBI image sequence number to use\n"
> +"                             (by default a random number is picked)\n"
> +"-q, --quiet                  suppress progress percentage information\n"
> +"-v, --verbose                be verbose\n"
> +"-h, -?, --help               print help message\n"
> +"\n"
> +"Usage: " PROGRAM_NAME " <MTD device node file name> [-s <bytes>] [-O <offs>] [-n]\n"
> +"\t\t\t[-f <file>] [-e <value>] [-x <num>] [-y] [-q] [-v] [-h] [-v]\n"
> +"\t\t\t[--sub-page-size=<bytes>] [--vid-hdr-offset=<offs>] [--no-volume-table]\n"
> +"\t\t\t[--flash-image=<file>] [--image-size=<bytes>] [--erase-counter=<value>]\n"
> +"\t\t\t[--ubi-ver=<num>] [--quiet] [--verbose]\n\n"
> +"Example 1: " PROGRAM_NAME " /dev/mtd0 -y - format MTD device number 0 and do\n"
> +"           not ask questions.\n"
> +"Example 2: " PROGRAM_NAME " /dev/mtd0 -q -e 0 - format MTD device number 0,\n"
> +"           be quiet and force erase counter value 0.\n";

Long options are not supported in barebox, they shouldn't be mentioned
in the help text.

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

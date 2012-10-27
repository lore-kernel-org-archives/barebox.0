Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TS5x5-0002pi-JG
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 12:57:25 +0000
Date: Sat, 27 Oct 2012 14:57:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121027125721.GG1641@pengutronix.de>
References: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
 <1351246602-8859-11-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351246602-8859-11-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [RFC 10/10] commands: add ubiformat
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2012 at 12:16:42PM +0200, Wolfram Sang wrote:
> Imported from mtd-utils and stripped down to needed functionality.
> Based on an older version (1.4.5.) since the newer do use MEMWRITE
> interfaces which we don't have in barebox (yet).
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> +
> +	while (1) {
> +		int key;
> +		unsigned long int image_seq;
> +
> +		key = getopt(argc, argv, "nyqve:x:s:O:f:S:");
> +		if (key == -1)
> +			break;
> +
> +		switch (key) {
> +		case 's':
> +			args.subpage_size = ubiutils_get_bytes(optarg);
> +			if (args.subpage_size <= 0)
> +				return errmsg("bad sub-page size: \"%s\"", optarg);
> +			if (!is_power_of_2(args.subpage_size))
> +				return errmsg("sub-page size should be power of 2");
> +			break;
> +
> +		case 'O':
> +			args.vid_hdr_offs = simple_strtoul(optarg, NULL, 0);
> +			if (args.vid_hdr_offs <= 0)
> +				return errmsg("bad VID header offset: \"%s\"", optarg);
> +			break;
> +
> +		case 'e':
> +			args.ec = simple_strtoull(optarg, NULL, 0);
> +			if (args.ec < 0)
> +				return errmsg("bad erase counter value: \"%s\"", optarg);
> +			if (args.ec >= EC_MAX)
> +				return errmsg("too high erase %llu, counter, max is %u", args.ec, EC_MAX);
> +			args.override_ec = 1;
> +			break;
> +
> +		case 'f':
> +			args.image = optarg;
> +			break;
> +
> +		case 'n':
> +			args.novtbl = 1;
> +			break;
> +
> +

Please remove one empty line

> +		case 'q':
> +			args.quiet = 1;
> +			break;
> +
> +		case 'x':
> +			args.ubi_ver = simple_strtoul(optarg, NULL, 0);
> +			if (args.ubi_ver < 0)
> +				return errmsg("bad UBI version: \"%s\"", optarg);
> +			break;
> +
> +		case 'Q':
> +			image_seq = simple_strtoul(optarg, NULL, 0);
> +			if (image_seq > 0xFFFFFFFF)
> +				return errmsg("bad UBI image sequence number: \"%s\"", optarg);
> +			args.image_seq = image_seq;
> +			break;
> +
> +

ditto

> +		case 'v':
> +			args.verbose = 1;
> +			break;
> +
> +		case ':':
> +			return errmsg("parameter is missing");
> +
> +		default:
> +			fprintf(stderr, "Use -h for help\n");
> +			return -1;
> +		}
> +	}
> +
> +	if (args.quiet && args.verbose)
> +		return errmsg("using \"-q\" and \"-v\" at the same time does not make sense");
> +
> +	if (optind == argc)
> +		return errmsg("MTD device name was not specified (use -h for help)");
> +	else if (optind != argc - 1)
> +		return errmsg("more then one MTD device specified (use -h for help)");
> +
> +	if (args.image && args.novtbl)
> +		return errmsg("-n cannot be used together with -f");
> +
> +
> +	args.node = argv[optind];
> +	return 0;
> +}
> +
[...]
> +
> +static int drop_ffs(const struct mtd_dev_info *mtd, const void *buf, int len)
> +{
> +	int i;
> +
> +        for (i = len - 1; i >= 0; i--)
> +		if (((const uint8_t *)buf)[i] != 0xFF)
> +		      break;
> +
> +        /* The resulting length must be aligned to the minimum flash I/O size */
> +        len = i + 1;

Indention broken here.

> +	len = (len + mtd->min_io_size - 1) / mtd->min_io_size;
> +	len *=  mtd->min_io_size;
> +        return len;
> +}
> +
> +static int open_file(off_t *sz)
> +{
> +	int fd;
> +	struct stat st;
> +
> +	if (stat(args.image, &st))
> +		return sys_errmsg("cannot open \"%s\"", args.image);
> +
> +	*sz = st.st_size;
> +	fd  = open(args.image, O_RDONLY);

Please use O_RDWR so that nobody sees that barebox actually does not
test for it...

> +	if (fd == -1)
> +		return sys_errmsg("cannot open \"%s\"", args.image);

I'm afraid our open() implementation is not that standard conform. It
returns an error code instead of -1.

> +
> +	return fd;
> +}
> +
> +static int read_all(int fd, void *buf, size_t len)
> +{
> +	while (len > 0) {
> +		ssize_t l = read(fd, buf, len);
> +		if (l == 0)
> +			return errmsg("eof reached; %zu bytes remaining", len);
> +		else if (l > 0) {
> +			buf += l;
> +			len -= l;
> +		} else if (errno == EINTR || errno == EAGAIN)
> +			continue;
> +		else
> +			return sys_errmsg("reading failed; %zu bytes remaining", len);

Please use {} for all branches.

> +	}
> +
> +	return 0;
> +}
> +

[...]

> +
> +	libscan_ubi_scan_free(si);
> +	close(args.node_fd);
> +	return 0;
> +
> +out_free:
> +	libscan_ubi_scan_free(si);
> +out_close:
> +	close(args.node_fd);
> +out_close_mtd:
> +	return -1;

If you return a negative value barebox assumes it's an error code and
prints the corresponding message. So please either return an error code,
or if you do not want barebox to print an error message return 1 on
failure.

Please try and ubiformat nonexisting files and non mtd devices and see
what happens. I have the feeling these are untested right now.

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

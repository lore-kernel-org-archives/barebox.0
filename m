Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QMJaf-0006xI-DB
	for barebox@lists.infradead.org; Tue, 17 May 2011 12:41:34 +0000
Date: Tue, 17 May 2011 14:30:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110517123013.GF2737@game.jcrosoft.org>
References: <1305634253-29141-1-git-send-email-jacmet@sunsite.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1305634253-29141-1-git-send-email-jacmet@sunsite.dk>
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
Subject: Re: [PATCH] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

> +static void print_digest(struct digest *d)
> +{
> +	unsigned char *data;
> +	int i;
> +
> +	data = xmalloc(d->length);
hang here no
please use malloc it's a command we must not hang if out of mem
just because we use a digest command
> +	d->final(d, data);
> +
> +	for (i=0; i<d->length; i++)
> +		printf("%02x", data[i]);
> +
> +	free(data);
> +}
> +
> +static int file_digest(struct digest *d, char *filename,
> +					   ulong start, ulong size)
> +{
> +	ulong len = 0;
> +	int fd, now, ret = 0;
> +	char *buf;
> +
> +	d->init(d);
> +
> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0) {
> +		printf("open %s: %s\n", filename, errno_str());
> +		return fd;
> +	}
> +
> +	if (start > 0) {
> +		ret = lseek(fd, start, SEEK_SET);
> +		if (ret == -1) {
> +			perror("lseek");
> +			goto out;
> +		}
> +	}
> +
> +	buf = xmalloc(4096);
ditto here
> +
> +	while (size) {
> +		now = min((ulong)4096, size);
> +		now = read(fd, buf, now);
> +		if (now < 0) {
> +			ret = now;
> +			perror("read");
> +			goto out_free;
> +		}
> +		if (!now)
> +			break;
> +
> +		d->update(d, buf, now);
> +		size -= now;
> +		len += now;
> +	}
> +
> +	print_digest(d);
> +	printf("  %s\t0x%08lx ... 0x%08lx\n", filename, start, start + len);
> +
> +out_free:
> +	free(buf);
> +out:
> +	close(fd);
> +
> +	return ret;
> +}
> +
> +static int do_digest(struct command *cmdtp, int argc, char *argv[])
> +{
> +	char algorithm[7];
> +	struct digest *d;
> +
> +	/* digest algoritm is command name without "sum" */
> +	strlcpy(algorithm, cmdtp->name,
> +			strstr(cmdtp->name, "sum") + 1 - cmdtp->name);
can we do more simple?
> +	d = digest_get_by_name(algorithm);
> +	BUG_ON(!d);
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	argv++;
> +	while (*argv) {
> +		char *filename = "/dev/mem";
> +		ulong start = 0, size = ~0;
do we really need to declare this here?
and /dev/mem as default

if yes for /dev/mem as default this should be documented in the help at least
> +
> +		/* arguments are either file, file+area or area */
> +		if (parse_area_spec(*argv, &start, &size)) {
> +			filename = *argv;
> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size)) {
> +				argv++;
> +			}
> +		}
> +
> +		if (file_digest(d, filename, start, size) < 0)
> +			return 1;
do we really need to stop if ine of them is not availlable
and we should check the getc to be able to interrupt it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

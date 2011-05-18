Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QMZAj-0006V0-64
	for barebox@lists.infradead.org; Wed, 18 May 2011 05:19:50 +0000
Date: Wed, 18 May 2011 07:08:26 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110518050826.GG18699@game.jcrosoft.org>
References: <1305662741-7509-1-git-send-email-jacmet@sunsite.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1305662741-7509-1-git-send-email-jacmet@sunsite.dk>
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
Subject: Re: [PATCHv2] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

> +
> +	data = xmalloc(d->length);
we realloc a buffer here where we alloc one in file_digest
and not free it before calling print_digest
> +	d->final(d, data);
> +
> +	for (i=0; i<d->length; i++)
> +		printf("%02x", data[i]);
> +
> +	free(data);
> +}
> +
> +static int file_digest(struct digest *d, char *filename,
> +		       ulong start, ulong size)
> +{
> +	ulong len = 0;
> +	int fd, now, ret = 0;
> +	char *buf;
> +
> +	d->init(d);
> +
> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0) {
> +		perror(filename);
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
do we really need to allocate the buffer everytime?
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
> +		if (ctrlc()) {
> +			ret = -EINTR;
> +			goto out_free;
> +		}
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
> +static int do_digest(char *algorithm, int argc, char *argv[])
> +{
> +	struct digest *d;
> +	int ret = 0;
> +
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
		ulong so so if we want to support 64bit vfs we need to use an
		other type
> +
> +		/* arguments are either file, file+area or area */
> +		if (parse_area_spec(*argv, &start, &size)) {
> +			filename = *argv;
> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
> +				argv++;
> +		}
> +
> +		if (file_digest(d, filename, start, size) < 0)
> +			ret = 1;
> +
> +		argv++;
> +	}
> +
> +	return ret;
> +}
> +
> +#ifdef CONFIG_CMD_MD5SUM
> +
> +static int do_md5(struct command *cmdtp, int argc, char *argv[])
> +{
> +	return do_digest("md5", argc, argv);
pass the cmdtp will be good
I agree it's not necessary now but I think it's a good practice

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

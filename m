Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMNlv-00015e-0i
	for barebox@lists.infradead.org; Tue, 17 May 2011 17:09:28 +0000
Date: Tue, 17 May 2011 19:09:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110517170923.GG30963@pengutronix.de>
References: <1305634253-29141-1-git-send-email-jacmet@sunsite.dk>
	<20110517123013.GF2737@game.jcrosoft.org>
	<87ei3xh3qp.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ei3xh3qp.fsf@macbook.be.48ers.dk>
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

On Tue, May 17, 2011 at 03:10:38PM +0200, Peter Korsgaard wrote:
> >>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> Hi,
> 
>  >> +static void print_digest(struct digest *d)
>  >> +{
>  >> +	unsigned char *data;
>  >> +	int i;
>  >> +
>  >> +	data = xmalloc(d->length);
> 
>  Jean-Christophe> hang here no
>  Jean-Christophe> please use malloc it's a command we must not hang if out of mem
>  Jean-Christophe> just because we use a digest command
> 
> Ok. This is cutnpaste from the crc command though. A quick look at
> commands shows that others do the same:
> 
> git grep xmalloc commands/
> commands/bootm.c:               handle->data = xmalloc(len);
> commands/cat.c: buf = xmalloc(BUFSIZE);
> commands/crc.c: buf = xmalloc(4096);
> commands/digest.c:      data = xmalloc(d->length);
> commands/digest.c:      buf = xmalloc(4096);
> commands/i2c.c: buf = xmalloc(count);
> commands/i2c.c: buf = xmalloc(count);
> commands/mem.c: rw_buf1 = xmalloc(RW_BUF_SIZE);
> commands/mem.c: buf = xmalloc(RW_BUF_SIZE);

And I am perfectly fine with this at least for fixed small length
allocations. And I consider 4096 bytes small enough.

> 
> 
>  >> +static int do_digest(struct command *cmdtp, int argc, char *argv[])
>  >> +{
>  >> +	char algorithm[7];
>  >> +	struct digest *d;
>  >> +
>  >> +	/* digest algoritm is command name without "sum" */
>  >> +	strlcpy(algorithm, cmdtp->name,
>  >> +			strstr(cmdtp->name, "sum") + 1 - cmdtp->name);
> 
>  Jean-Christophe> can we do more simple?
> 
> Maybe. I wanted something automatic rather than a series of strcmp
> checks, but feel free to suggest something else.

You could use three different functions called by the command
descriptors and pass a string with the digest name to do_digest.

> 
> 
>  >> +	d = digest_get_by_name(algorithm);
>  >> +	BUG_ON(!d);
>  >> +
>  >> +	if (argc < 2)
>  >> +		return COMMAND_ERROR_USAGE;
>  >> +
>  >> +	argv++;
>  >> +	while (*argv) {
>  >> +		char *filename = "/dev/mem";
>  >> +		ulong start = 0, size = ~0;
> 
>  Jean-Christophe> do we really need to declare this here?
>  Jean-Christophe> and /dev/mem as default
> 
> Yes, or rather you need to initialize it for each iteration of the
> loop. We could move the declaration up to the beginning of the function,
> but as they are only used inside the loop it imho makes more sense to
> put it here.
> 
>  Jean-Christophe> if yes for /dev/mem as default this should be documented in the help at least
> 
> Why? all the memory commands do that (md/mw/crc32).
> 
>  >> +
>  >> +		/* arguments are either file, file+area or area */
>  >> +		if (parse_area_spec(*argv, &start, &size)) {
>  >> +			filename = *argv;
>  >> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size)) {
>  >> +				argv++;
>  >> +			}
>  >> +		}
>  >> +
>  >> +		if (file_digest(d, filename, start, size) < 0)
>  >> +			return 1;
> 
>  Jean-Christophe> do we really need to stop if ine of them is not availlable
> 
> I don't feel strongly about it, but it seems the simplest solution.

How about printing an error and continue? That's what my host md5sum
does.

> 
>  Jean-Christophe> and we should check the getc to be able to interrupt it
> 
> crc doesn't do that either, but ok - I can add a ctrlc() check in the
> main loop.

It's good practice. It's nice being able to interrupt if this command is
accidently being called on a veray large file.

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

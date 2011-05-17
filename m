Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMK31-0007FY-5o
	for barebox@lists.infradead.org; Tue, 17 May 2011 13:10:56 +0000
Received: by wyb28 with SMTP id 28so435468wyb.36
	for <barebox@lists.infradead.org>; Tue, 17 May 2011 06:10:48 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1305634253-29141-1-git-send-email-jacmet@sunsite.dk>
	<20110517123013.GF2737@game.jcrosoft.org>
Date: Tue, 17 May 2011 15:10:38 +0200
In-Reply-To: <20110517123013.GF2737@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Tue, 17 May 2011 14:30:13 +0200")
Message-ID: <87ei3xh3qp.fsf@macbook.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

Hi,

 >> +static void print_digest(struct digest *d)
 >> +{
 >> +	unsigned char *data;
 >> +	int i;
 >> +
 >> +	data = xmalloc(d->length);

 Jean-Christophe> hang here no
 Jean-Christophe> please use malloc it's a command we must not hang if out of mem
 Jean-Christophe> just because we use a digest command

Ok. This is cutnpaste from the crc command though. A quick look at
commands shows that others do the same:

git grep xmalloc commands/
commands/bootm.c:               handle->data = xmalloc(len);
commands/cat.c: buf = xmalloc(BUFSIZE);
commands/crc.c: buf = xmalloc(4096);
commands/digest.c:      data = xmalloc(d->length);
commands/digest.c:      buf = xmalloc(4096);
commands/i2c.c: buf = xmalloc(count);
commands/i2c.c: buf = xmalloc(count);
commands/mem.c: rw_buf1 = xmalloc(RW_BUF_SIZE);
commands/mem.c: buf = xmalloc(RW_BUF_SIZE);


 >> +static int do_digest(struct command *cmdtp, int argc, char *argv[])
 >> +{
 >> +	char algorithm[7];
 >> +	struct digest *d;
 >> +
 >> +	/* digest algoritm is command name without "sum" */
 >> +	strlcpy(algorithm, cmdtp->name,
 >> +			strstr(cmdtp->name, "sum") + 1 - cmdtp->name);

 Jean-Christophe> can we do more simple?

Maybe. I wanted something automatic rather than a series of strcmp
checks, but feel free to suggest something else.


 >> +	d = digest_get_by_name(algorithm);
 >> +	BUG_ON(!d);
 >> +
 >> +	if (argc < 2)
 >> +		return COMMAND_ERROR_USAGE;
 >> +
 >> +	argv++;
 >> +	while (*argv) {
 >> +		char *filename = "/dev/mem";
 >> +		ulong start = 0, size = ~0;

 Jean-Christophe> do we really need to declare this here?
 Jean-Christophe> and /dev/mem as default

Yes, or rather you need to initialize it for each iteration of the
loop. We could move the declaration up to the beginning of the function,
but as they are only used inside the loop it imho makes more sense to
put it here.

 Jean-Christophe> if yes for /dev/mem as default this should be documented in the help at least

Why? all the memory commands do that (md/mw/crc32).

 >> +
 >> +		/* arguments are either file, file+area or area */
 >> +		if (parse_area_spec(*argv, &start, &size)) {
 >> +			filename = *argv;
 >> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size)) {
 >> +				argv++;
 >> +			}
 >> +		}
 >> +
 >> +		if (file_digest(d, filename, start, size) < 0)
 >> +			return 1;

 Jean-Christophe> do we really need to stop if ine of them is not availlable

I don't feel strongly about it, but it seems the simplest solution.

 Jean-Christophe> and we should check the getc to be able to interrupt it

crc doesn't do that either, but ok - I can add a ctrlc() check in the
main loop.

Thanks for the review.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMawI-000702-FH
	for barebox@lists.infradead.org; Wed, 18 May 2011 07:13:03 +0000
Received: by wyb28 with SMTP id 28so1199567wyb.36
	for <barebox@lists.infradead.org>; Wed, 18 May 2011 00:13:00 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1305662741-7509-1-git-send-email-jacmet@sunsite.dk>
	<20110518050826.GG18699@game.jcrosoft.org>
Date: Wed, 18 May 2011 09:12:52 +0200
In-Reply-To: <20110518050826.GG18699@game.jcrosoft.org> (Jean-Christophe
	PLAGNIOL-VILLARD's message of "Wed, 18 May 2011 07:08:26 +0200")
Message-ID: <87boz0fpmz.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCHv2] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

Hi,

 >> +
 >> +	data = xmalloc(d->length);

 Jean-Christophe> we realloc a buffer here where we alloc one in file_digest
 Jean-Christophe> and not free it before calling print_digest

I'm not exactly sure what you mean, but yes - We could inline
print_digest in file_digest and reuse the 4K buf for the digest as
well. That would shrink the code slightly (lines / bytes) and get rid of
the 2nd xmalloc.

I'll fix that and send a v3 shortly.

 >> +	buf = xmalloc(4096);

 Jean-Christophe> do we really need to allocate the buffer everytime?

Not really, but it's simpler to do like this. It's only once per file so
hardly a performance issue.

 >> +	while (*argv) {
 >> +		char *filename = "/dev/mem";
 >> +		ulong start = 0, size = ~0;

 Jean-Christophe> ulong so so if we want to support 64bit vfs we need to
 Jean-Christophe> use an other type

ulong is what parse_area_spec and the other memory commands use.

 >> +#ifdef CONFIG_CMD_MD5SUM
 >> +
 >> +static int do_md5(struct command *cmdtp, int argc, char *argv[])
 >> +{
 >> +	return do_digest("md5", argc, argv);

 Jean-Christophe> pass the cmdtp will be good
 Jean-Christophe> I agree it's not necessary now but I think it's a good
 Jean-Christophe> practice

I think it makes more sense to add it when (if?) it is needed.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

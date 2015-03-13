Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWL1U-0001ft-3o
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 08:32:49 +0000
Received: from mail607.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9EAB1FFA50A
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 09:32:22 +0100 (CET)
Date: Fri, 13 Mar 2015 09:32:11 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313083211.GW30554@ns203013.ovh.net>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
 <1426170146-31302-7-git-send-email-plagnioj@jcrosoft.com>
 <20150313072616.GK24885@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150313072616.GK24885@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] command: add generic digest command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > +
> > +static int do_digest(int argc, char *argv[])
> > +{
> > +	struct digest *d;
> > +	unsigned char *tmp_key = NULL;
> > +	unsigned char *tmp_sig = NULL;
> > +	char *sig = NULL;
> > +	char *sigfile = NULL;
> > +	size_t siglen = 0;
> > +	char *key = NULL;
> > +	char *keyfile = NULL;
> > +	size_t keylen = 0;
> > +	size_t digestlen = 0;
> > +	char *algo = NULL;
> > +	int opt, ret;
> > +
> > +	if (argc < 2) {
> > +		__prints_algo();
> > +		return 0;
> > +	}
> 
> This is an untuitive trigger to print the available algos. Can we add an
> explicit option here?

I would have prefer via help cmd but not possible to have runtime help txt
> 
> > +
> > +	while((opt = getopt(argc, argv, "a:k:K:s:S:")) > 0) {
> > +		switch(opt) {
> > +		case 'k':
> > +			key = optarg;
> > +			keylen = strlen(key);
> > +			break;
> > +		case 'K':
> > +			keyfile = optarg;
> > +			break;
> > +		case 'a':
> > +			algo = optarg;
> > +			break;
> > +		case 's':
> > +			sig = optarg;
> > +			siglen = strlen(sig);
> > +			break;
> > +		case 'S':
> > +			sigfile = optarg;
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (!algo)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	d = digest_alloc(algo);
> > +	if (!d) {
> > +		eprintf("algo '%s' not found\n", algo);
> > +		__prints_algo();
> > +		return COMMAND_ERROR_USAGE;
> > +	}
> > +
> > +	argc -= optind;
> > +	argv += optind;
> > +
> > +	if (keyfile) {
> > +		tmp_key = key = read_file(keyfile, &keylen);
> 
> Why two variables? Both tmp_key and key are never changed.
'key' can be from optarg so we can not free it

otherwise if need to xstrdup it when parsing the getopt
> 
> > +		if (!key) {
> > +			eprintf("file '%s' not found\n", keyfile);
> > +			goto err;
> > +		}
> > +	}
> > +
> > +	digest_set_key(d, key, keylen);
> 
> This can fail. You should check the error code.
yeah
> 
> > +unsigned char to_digit(unsigned char c)
> > +{
> > +	if (c >= '0' && c <= '9')
> > +		c -= '0';
> > +	else
> > +		c -= 'a' - 10;
> > +
> > +	return c;
> > +}
> > +
> > +unsigned char to_hexa(unsigned char c)
> > +{
> > +	if (c < 10)
> > +		c += '0';
> > +	else
> > +		c += 'a' - 10;
> > +
> > +	return c;
> > +}
> > +
> > +int base64_to_hex(const unsigned char *sum, unsigned char *buf, size_t length)
> > +{
> 
> The ASCII input here contains hex digits, base64 is something different.
> Also these functions are useful enough to be always available, not only
> when digest is enabled.
> 
> I just sent a patch containing the kernels implementation of bin2hex and
> hex2bin. Please base on this one.

ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NwK0L-0006lG-OC
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 18:48:10 +0000
Received: by pwj2 with SMTP id 2so8622858pwj.36
	for <barebox@lists.infradead.org>; Mon, 29 Mar 2010 11:48:02 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-2-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 20:47:57 +0200
In-Reply-To: <1269855383-22716-2-git-send-email-s.hauer@pengutronix.de>
	(Sascha Hauer's message of "Mon, 29 Mar 2010 11:36:12 +0200")
Message-ID: <8739zjc6ci.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 01/12] ARM zImage: do memmap if possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 Sascha>  	zimage = xmalloc(header.end);
 Sascha>  	memcpy(zimage, &header, sizeof(header));
 Sascha> -
 Sascha> -	ret = read(fd, zimage + sizeof(header), header.end - sizeof(header));
 Sascha> -	if (ret < header.end - sizeof(header)) {
 Sascha> -		printf("could not read %s\n", argv[1]);
 Sascha> -		goto err_out1;
 Sascha> +	m = memmap(fd, PROT_READ);
 Sascha> +	if (m != (void *)-1) {
 Sascha> +		memcpy(zimage, m, header.end);

Here you're rereading the header as well, instead of everything past it
like the normal case.

Does this give a significant boost? read() from something memmap'able
(like NOR) boils down to a memcpy as well, right?

 Sascha> +	} else {
 Sascha> +		ret = read(fd, zimage + sizeof(header), header.end - sizeof(header));

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

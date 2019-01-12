Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giHIn-0004Mn-8m
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 11:18:10 +0000
Date: Sat, 12 Jan 2019 12:18:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190112111806.GG14273@ravnborg.org>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
 <20190112082456.7441-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112082456.7441-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 4/6] crypto: digest: Split memory vs. file code into
 separate functions
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> +static int digest_update_from_fd(struct digest *d, int fd,
> +				 ulong start, ulong size)
> +{
> +	unsigned char *buf = xmalloc(PAGE_SIZE);
> +	int ret = 0;
> +
> +	ret = lseek(fd, start, SEEK_SET);
> +	if (ret == -1) {
> +		perror("lseek");
> +		goto out_free;
> +	}
lseek return (off_t)-1 - should ret be of type off_t to make this correct?

The code looks more readable with the two helper functions.
So +1 from me.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

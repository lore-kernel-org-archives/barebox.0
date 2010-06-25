Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OS3Ae-0001Dj-8P
	for barebox@lists.infradead.org; Fri, 25 Jun 2010 07:17:53 +0000
Received: by wyb32 with SMTP id 32so674106wyb.36
	for <barebox@lists.infradead.org>; Fri, 25 Jun 2010 00:17:49 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
	<1277372356-32370-5-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 25 Jun 2010 09:17:44 +0200
In-Reply-To: <1277372356-32370-5-git-send-email-s.hauer@pengutronix.de>
	(Sascha Hauer's message of "Thu, 24 Jun 2010 11:39:09 +0200")
Message-ID: <878w634m3r.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 04/11] memcpy cmd: Do not expect to read/write the whole
	chunk at once
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 Sascha> read() does not necessarily return the number of bytes
 Sascha> we want to read, so deal with less bytes.

 Sascha> -		if ((w = write(destfd, rw_buf, r)) < 0) {
 Sascha> -			perror("write");
 Sascha> -			goto out;
 Sascha> -		}
 Sascha> -
 Sascha> -		if (r < now)
 Sascha> +		if (!r)
 Sascha>  			break;
 
 Sascha> -		if (w < r)
 Sascha> -			break;
 Sascha> +		tmp = 0;
 Sascha> +		now = r;
 Sascha> +		while (now) {
 Sascha> +			w = write(destfd, rw_buf + tmp, now);
 Sascha> +			if (w < 0) {
 Sascha> +				perror("write");
 Sascha> +				goto out;
 Sascha> +			}
 Sascha> +	                if (!w)
 Sascha> +			        break;
 
 Sascha> -		count -= now;
 Sascha> +			now -= w;
 Sascha> +			tmp += w;
 Sascha> +		}
 Sascha> +

This is probably not the only place we need this. What about moving this
to a helper function like busybox' full_write()?

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

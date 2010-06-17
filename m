Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailex.mailcore.me ([94.136.40.61])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OPF7Z-0001Zq-P8
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 13:27:06 +0000
From: "Andy Pont" <andy.pont@sdcsystems.com>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>	<1276508921-3264-5-git-send-email-s.hauer@pengutronix.de>
	<20100617131724.GN20799@pengutronix.de>
In-Reply-To: <20100617131724.GN20799@pengutronix.de>
Date: Thu, 17 Jun 2010 14:26:58 +0100
Message-ID: <00e901cb0e20$c3d5eb70$4b81c250$@pont@sdcsystems.com>
MIME-Version: 1.0
Content-Language: en-gb
Reply-To: andy.pont@sdcsystems.com
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
Subject: RE: [PATCH 04/11] include support for a simple pseudo number generator
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer wrote...

> +#define RAND_MAX 32767
> +
> +/* return a pseudo-random integer in the range [0, RAND_MAX] */
> +unsigned int rand(void);

*Snip*

> +unsigned int rand(void)
> +{
> +	random_seed = random_seed * 1103515245 + 12345;
> +	return (random_seed / 65536) % 32768;
> +}

The return value on this function seems wrong as it will always return a
value between 0 and 32767 irrespective of what RAND_MAX is set to which
doesn't agree with the comment on the function prototype.

Although it may just be me being dim as my hayfever is driving me mad today
:-)

A.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

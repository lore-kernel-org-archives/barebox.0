Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoF7i-00015S-Fg
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 16:16:26 +0000
Date: Wed, 4 Dec 2013 17:16:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131204161604.GO24559@pengutronix.de>
References: <1386111998-15579-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386111998-15579-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] scripts: bareboxcrc32 as host and target userspacetool
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 04, 2013 at 12:06:38AM +0100, Michael Grzeschik wrote:
> This patch adds the crc32 command to be build
> as host and optionally as target tool.
> 

This used to be:

> -	fd = open(filename, O_RDONLY);
> -	if (fd < 0) {
> -		printf("open %s: %s\n", filename, errno_str());
> -		return fd;
> -	}

And now is:

> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0) {
> +		printf("open %s: %d\n", filename, errno);
> +		return fd;
> +	}

I changed it to:

		printf("open %s: %s\n", filename, strerror(errno));

Which works on Linux Userspace and barebox and prints strings instead of
numbers.

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

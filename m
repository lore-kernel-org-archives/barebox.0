Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8PB-0005RL-4O
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:28:38 +0000
Date: Mon, 25 Jun 2012 14:28:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625122831.GE14321@pengutronix.de>
References: <1340358843-30614-1-git-send-email-jbe@pengutronix.de>
 <1340358843-30614-2-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340358843-30614-2-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add a simple watchdog framework
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 22, 2012 at 11:54:02AM +0200, Juergen Beisert wrote:
> This patch adds a simple wd command which can setup, trigger and stop a watchdog
> on the platform.
> 
> +static int do_wd(int argc, char *argv[])
> +{
> +	int rc;
> +
> +	if (argc > 1) {
> +		if (isdigit(*argv[1])) {
> +			timeout = simple_strtoul(argv[1], NULL, 0);
> +		} else {
> +			printf("numerical parameter expected\n");
> +			return 1;
> +		}
> +	}
> +
> +	rc = watchdog_set_timeout(timeout);
> +	if (rc == -EINVAL) {

Why do you check for -EINVAL only? This way all other errors will be
silently ignored.

> +		if (timeout == 0)
> +			printf("Watchdog cannot be disabled\n");
> +		else
> +			printf("Timeout value out of range\n");
> +		return rc;

Do not return negative error codes here. The shell will interpret
negative numbers as 'exit'. You have to return 1 for failure.

> +	}
> +	return 0;
> +}
> +
> +
> +#ifndef INCLUDE_WATCHDOG_H
> +# define INCLUDE_WATCHDOG_H
> +
> +extern int watchdog_set_timeout(unsigned);

extern is not needed here.

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

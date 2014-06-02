Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrNlO-0008Un-OY
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 08:38:39 +0000
Date: Mon, 2 Jun 2014 10:38:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602083813.GY15686@pengutronix.de>
References: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] net: picoping: try to make it asynchronious: fail
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>

On Fri, May 30, 2014 at 01:14:08PM +0400, Antony Pavlov wrote:
> Picotcp tends to work in an asynchronious way.
> 
> E.g. for ping we have to use "pico_icmp4_ping()"
> (to start ping task) and the special icmp4 handler
> (callback function) "cb_ping()".
> 
> But the ping command in barebox works in very simple
> way:
> 
>   * user types 'ping <IP>' in the barebox shell command line;
>   * the ping command takes all control until it gets the positive
>     or a negative result;
>   * the control is returned to the barebox shell.
> 
> To use asynchronious-oriented picotcp functions in syncronious-oriented
> barebox workflow we have to work out necessary picotcp usage template.
> 
> This patch propose simplest template. But this template has two major
> disadvantages:
> 
>   * user can't completely cancel ping using ctrl-c,
>     the ping request send task continue to work in the background:
> 
>     barebox@barebox sandbox:/ picoping 10.0.0.2
>     48 bytes from 10.0.0.2: icmp_req=1 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=2 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=3 ttl=64 time=0 ms
>     <ctrl-c> pressed
>     barebox@barebox sandbox:/ picoping 10.0.0.2
>     48 bytes from 10.0.0.2: icmp_req=1 ttl=64 time=1 ms
>     48 bytes from 10.0.0.2: icmp_req=5 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=2 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=6 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=3 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=7 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=4 ttl=64 time=0 ms
>     48 bytes from 10.0.0.2: icmp_req=8 ttl=64 time=0 ms
> 
>   * user has to press <ctrl-c> after the last ping response is received
>     to return to barebox shell.
> 
> Has anybody any ideas how to improve the situation?

This must be solved in the pico_icmp4.c code. The counterpart of
pico_tree_insert (pico_tree_delete?) must be called as an response to
ctrlc().

How I see it pico_icmp4_ping should return the cookie so that a ping
abort function can be implemented:

void pico_icmp4_ping_abort(struct pico_icmp4_ping_cookie *cookie)
{
	pico_tree_delete(cookie);

	release_whatever_resources();
}

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

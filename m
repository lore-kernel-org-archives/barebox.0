Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSf38-00049k-Kx
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 09:25:29 +0000
Date: Fri, 30 Nov 2018 10:25:12 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20181130092512.xc7sto4xdqvl6zw5@pengutronix.de>
References: <20181129102127.17158-1-s.hauer@pengutronix.de>
 <20181129102127.17158-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129102127.17158-3-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] net: dns: return error codes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 29, 2018 at 11:21:27AM +0100, Sascha Hauer wrote:
> The resolv() function used to return the IP address. When net_udp_new()
> fails we return an error code though which the callers of resolv() take
> as an IP address. This is wrong of course and we could return 0 in this
> case. Instead we return an error code and pass the resolved IP as a
> pointer which allows us to return proper error codes.
> =

> This patch also adds error messages and error returns to the various
> callers of resolv() which used to just continue with a zero IP and
> let the user figure out what went wrong.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thanks, that looks good, thanks.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmTOs-00068N-6N
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 16:25:30 +0000
Date: Thu, 28 Jul 2011 18:23:01 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110728162301.GW16561@pengutronix.de>
References: <201107282343278288537@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201107282343278288537@qq.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox can update itself by tftp?
To: 154554381 <154554381@qq.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jul 28, 2011 at 11:43:30PM +0800, 154554381 wrote:
> can barebox update self by tftp ?
> for example
> tftp barebox.bin /dev/self0
This should work, you might have to erase /dev/self0 first though. You
can even test without writing to flash by adding a partitioning to
/dev/ram, tftp into a partition and then go $startaddressofpartition.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

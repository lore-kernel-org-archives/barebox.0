Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEvLH-0000uV-AF
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 09:50:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1cEvKu-0007Rl-6B
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 10:49:56 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1cEvKt-0004BN-Ve
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 10:49:55 +0100
Date: Thu, 8 Dec 2016 10:49:55 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20161208094955.4k66mbkpqvdaxqpn@pengutronix.de>
References: <20161208093922.23194-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208093922.23194-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: only read from bus when data is needed
To: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 10:39:22AM +0100, Uwe Kleine-K=F6nig wrote:
> This optimization reduced the time to transfer 40 MB at 50 Hz from
This should be MHz ------------------------------------------^^

Best regards
Uwe
> 214 seconds to 203 seconds.

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

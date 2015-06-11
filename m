Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z34iT-0004SC-Jk
 for barebox@lists.infradead.org; Thu, 11 Jun 2015 15:48:30 +0000
Date: Thu, 11 Jun 2015 17:48:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150611154805.GR18985@pengutronix.de>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1434005650-28131-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/4] include pyserial trunk
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On Thu, Jun 11, 2015 at 08:54:09AM +0200, Sascha Hauer wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> =

> The current pyserial is broken, this version contains the fix for:
> http://sourceforge.net/p/pyserial/bugs/166/
> =

> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
I reported a bug to the Debian bug tracker[1] and there is a fixed
package available in the Pengutronix Debian archive[2]. Maybe this patch
is sensible enough to make it into Debian Jessie.

Judge for yourself if that is enough to drop this patch.

Best regards
Uwe

[1] http://bugs.debian.org/788439
[2] http://debian.pengutronix.de/debian

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

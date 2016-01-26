Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNxcg-0003ZM-7E
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 07:01:07 +0000
Date: Tue, 26 Jan 2016 08:00:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160126070042.GY13058@pengutronix.de>
References: <1453491220-25044-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453491220-25044-1-git-send-email-uwe@kleine-koenig.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] kwboot: do a filetype check before sending the image
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org, Trent Piepho <tpiepho@kymetacorp.com>

On Fri, Jan 22, 2016 at 08:33:40PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> Changes since (implicit) v1, sent with
> Message-Id: 1453276010-4669-1-git-send-email-uwe@kleine-koenig.org:
> =

> - whitespace fix
> - error out if a problem is detected
> - add a commit log
> =

> Changes since v2, sent with
> Message-Id: 1453277701-10367-1-git-send-email-uwe@kleine-koenig.org:
> =

> - add -f to not quit on failed test
> - add const to img parameter
> - check image length first
> - write error messages to stderr instead of stdout
> - simplify logic
> =

> Thanks to Sascha, Sebastian and Trend for the feedback.
> =

>  scripts/kwboot.c | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++=
++++--
>  1 file changed, 70 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

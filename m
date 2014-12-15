Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y0SQo-0000OI-Ur
 for barebox@lists.infradead.org; Mon, 15 Dec 2014 09:59:11 +0000
Date: Mon, 15 Dec 2014 10:58:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141215095848.GC30369@pengutronix.de>
References: <1418331093-18640-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418331093-18640-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 0/3] arm/cpu/lowlevel cleanups
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 09:51:30PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> compared to (implicit) v1 this changes the order to make the i-cache fix =
the
> first patch to address Sascha's review remarks. I also removed the explic=
it
> dropping of branch predictor entries which Lucas pointed out to be unnece=
ssary.
> =

> Uwe Kleine-K=F6nig (3):
>   arm/cpu/lowlevel: invalidate i-cache before enabling
>   arm/cpu/lowlevel: add and fix comments for CPSR and SCTLR accesses
>   arm/cpu/lowlevel: Don't save the return address in another register
> =

>  arch/arm/cpu/lowlevel.S | 38 ++++++++++++++++++++++++++++----------
>  1 file changed, 28 insertions(+), 10 deletions(-)

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

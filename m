Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YnrLl-0004kA-S3
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 16:30:10 +0000
Date: Thu, 30 Apr 2015 18:29:44 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150430162944.GC25193@pengutronix.de>
References: <1430403678-31458-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430403678-31458-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] mtd: of_mtd_fixup(): fix given DT not the default one
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hei Marc,

On Thu, Apr 30, 2015 at 04:21:18PM +0200, Marc Kleine-Budde wrote:
> We have to start searching for the mtd node starting in the given root no=
de not
> the defaukt (=3D barebox internal) one. This means the internal DT is alw=
ays
> fixed up. This leads to booting not fixed up DT when using external DTs.
> =

> This patch fixes the problem.
this seems to be the explanation for the question that arose in the
"mtd: partition: Fix OF partition fixup" thread. Namely why isn't there
a mismatch of the register sizes when using an external device tree.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Did you check since when this is broken? A Fixes tag would be nice.

Best regards and thanks for looking into this
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YqHcT-0003Vr-8c
 for barebox@lists.infradead.org; Thu, 07 May 2015 08:57:25 +0000
Date: Thu, 7 May 2015 10:57:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150507085702.GR6325@pengutronix.de>
References: <1430988346-25450-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430988346-25450-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] devfs: be more lax with partition boundaries
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 07, 2015 at 10:45:45AM +0200, Uwe Kleine-K=F6nig wrote:
> If a partition starts inside its parent device but is too big such that
> it extends over the device boundary, just chop it to the device's end.
> =

> This matches the behaviour of Linux.
> =

> The motivation for this change is that it makes it possible in some
> cases to have the partitioning in a device tree fixed and still allow
> different flash sizes.

When doing it someone is probably annoyed about the warning pretty soon.
I know we just talked whether I would accept this patch, but now I
realized that the correct way to extend the last partition to the end of
the device is to use size 0. This works under barebox and Linux.

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

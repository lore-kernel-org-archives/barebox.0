Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YqHoK-0002pN-77
 for barebox@lists.infradead.org; Thu, 07 May 2015 09:09:41 +0000
Date: Thu, 7 May 2015 11:09:17 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150507090917.GJ12306@pengutronix.de>
References: <1430988346-25450-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20150507085702.GR6325@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150507085702.GR6325@pengutronix.de>
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
Subject: Re: [PATCH] devfs: be more lax with partition boundaries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Thu, May 07, 2015 at 10:57:02AM +0200, Sascha Hauer wrote:
> On Thu, May 07, 2015 at 10:45:45AM +0200, Uwe Kleine-K=F6nig wrote:
> > If a partition starts inside its parent device but is too big such that
> > it extends over the device boundary, just chop it to the device's end.
> > =

> > This matches the behaviour of Linux.
> > =

> > The motivation for this change is that it makes it possible in some
> > cases to have the partitioning in a device tree fixed and still allow
> > different flash sizes.
> =

> When doing it someone is probably annoyed about the warning pretty soon.
> I know we just talked whether I would accept this patch, but now I
well, we talked about a change in barebox that makes it match the
behaviour of Linux. So critic to the actual implementation is fine.

> realized that the correct way to extend the last partition to the end of
> the device is to use size 0. This works under barebox and Linux.
Great. Just tested this and it works fine. (I don't know if Linux really
handles this this way, but barebox does and gives the right explicit
size to Linux.)

\o/
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

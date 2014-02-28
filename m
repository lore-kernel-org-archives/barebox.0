Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJO8d-0005eJ-Cn
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:10:08 +0000
Date: Fri, 28 Feb 2014 15:09:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140228140945.GS6865@pengutronix.de>
References: <1393533550-1865-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140228072548.GT17250@pengutronix.de>
 <20140228074530.GU17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140228074530.GU17250@pengutronix.de>
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
Subject: Re: [PATCH v2 00/10] new partitioning helper
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Fri, Feb 28, 2014 at 08:45:30AM +0100, Sascha Hauer wrote:
> On Fri, Feb 28, 2014 at 08:25:48AM +0100, Sascha Hauer wrote:
> > Applied this series. I skipped the pca100 patch as this one has the
> > partition layout in the devicetree now.
> =

> And I had a merge conflict in fs/devfs-core.c with:
> =

> commit 0c76b7e3779d1d38b8b70596b122bab076d9f26e
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Tue Jan 14 11:51:35 2014 +0100
> =

>     mtd: register mtd partitions as real mtd devices
>     =

>     So far mtd partitions were mtd devices, but these were not registered.
>     This patch changes this. mtd partitions are now registered like real
>     mtd devices. This makes them part of the device hierarchy.
>     =

>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> I'm confident I did it right, but maybe you better have a look at the
> result in -next.
Looking at ff202f715c23 (Merge branch 'for-next/partitionhelper' into
next) that looks exactly as I had resolved the problem.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

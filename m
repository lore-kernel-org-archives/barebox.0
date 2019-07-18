Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho5NY-000428-U4
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 12:19:22 +0000
Date: Thu, 18 Jul 2019 14:19:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190718121916.3pfn6qp2uql3uc42@pengutronix.de>
References: <1562758050-447264-1-git-send-email-s.riedmueller@phytec.de>
 <20190711070147.weq5bwqh4adw6sfe@pengutronix.de>
 <cdbaf9d5-940e-db3a-3df9-db3bba5a3ed4@phytec.de>
 <a845e767-c324-127d-efdd-de5f26bd92c4@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a845e767-c324-127d-efdd-de5f26bd92c4@phytec.de>
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
Subject: Re: [PATCH] mtd: ubi: Max out default wear-leveling threshold
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 18, 2019 at 10:24:52AM +0200, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> do you guys have an idea or proposal how to disable the wear-leveling
> properly? I will gladly take another look at it and it would be nice to g=
et
> your input as I only started to dive into ubi.

What I meant was simply something like this:

#define UBI_WL_THRESHOLD INT_MAX

Put a comment above it why it is done and remove the Kconfig entry for
it and be done.

We found out that UBI wear leveling doesn't work reliably in barebox, so
we should make sure that it's disabled completely and not just change
the defaults (which could be changed back by an unwary user)

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

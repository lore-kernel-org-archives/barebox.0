Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8WZo-0000v9-VP
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 13:52:45 +0000
Date: Thu, 21 Feb 2013 14:52:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221135242.GS1906@pengutronix.de>
References: <20130214193135.GA1906@pengutronix.de>
 <1361265445-11731-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361265445-11731-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 1/3] env: add register_persistent_environment
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Tue, Feb 19, 2013 at 10:17:23AM +0100, Eric B=E9nard wrote:
> - heavily copied from register_persistant_environment which was
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

I'm not 100% sure this is the right thing to do. It seems the only
usecase of this function is to print slightly more useful error messages th=
an
we would get should we only call devfs_add_partition("disk.1",...)
from boards directly.

Anyway, two boards are using it, the whole thing has a negative
diffstat, so I applied it.

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

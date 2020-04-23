Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYuJ-0001UA-VJ
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 10:16:38 +0000
Date: Thu, 23 Apr 2020 12:16:31 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200423101631.rwqopetiy52nr77r@pengutronix.de>
References: <20200421211545.32353-1-u.kleine-koenig@pengutronix.de>
 <20200421211545.32353-2-u.kleine-koenig@pengutronix.de>
 <20200423081324.tzfe67tx4ah7krnm@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423081324.tzfe67tx4ah7krnm@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] commands/*: Replace license and copyright
 boilerplate by SPDX identfiers
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello Roland,

On Thu, Apr 23, 2020 at 10:13:24AM +0200, Roland Hieber wrote:
> It's already applied now, but for the future, such large patches are
> really easier to review when they do only one thing at a time (replacing
> the boilerplate with license identifiers, changing copyright tags,
> changing old to new identifiers, adding new identifiers etc.).
> =

> That that, I couldn't find any errors, but that doesn't mean there
> aren't any. :)

That's one side of the coin. The other is that several patches touching
all the same area result in more work to create the patches and make
patch and commit handling more complicated. While I agree in general
that one-patch-does-one-thing is a good concept I think for
rearrangements like this fixing all files in a directory in one go is
fine. Otherwise the result are patches that just add empty lines before
comments which IMHO doens't justify a patch. Doing this en passant is
fine however.

Sascha, what's your position here?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

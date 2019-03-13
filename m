Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oj-0007xL-Cz
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:06 +0000
Date: Wed, 13 Mar 2019 10:42:00 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190313094200.fl23pb4ng4htleus@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <068ce15e-1a72-9b02-2b1f-40a5d32523a0@rempel-privat.de>
 <20190310204225.4sh6lam2drv66ok6@pengutronix.de>
 <20190310210626.GA21252@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190310210626.GA21252@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] include: add SPDX GPL-2.0-only license tags where
 applicable
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Sun, Mar 10, 2019 at 10:06:26PM +0100, Sam Ravnborg wrote:
> Hi Roland.
> 
> On Sun, Mar 10, 2019 at 09:42:25PM +0100, Roland Hieber wrote:
> > Hi,
> > 
> > this thread has been open for some time now without any more responses.
> > The only motion against it was from Oleksij, who asked me remove the
> > license headers in favour of having only the SPDX-License-Identifier
> > tags.  I replied that I think both the human-understandable license
> > headers and the machine-readable tags have their own value, but there
> > was no further argument.
> I agree with Oleksij here.
> We have the license information we need expressed using the SPDX tag,
> and we shall avoid the remaining license boiler plate.
> 
> If one needs to read the license text it is in the tree.
> And when we do not have it in the file one does not have to read
> it both in the file and in the tree when this is relevant
> to look into.
> The rest of us is just glad to have less boilerplate to
> drag around with.

OK thanks. There was less feedback than I'd hoped for, but what was
there went in the same direction, so I'll spin a v2 without the headers.

 - Roland

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

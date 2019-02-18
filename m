Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveJa-0008Kj-2Y
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:30:17 +0000
Date: Mon, 18 Feb 2019 09:30:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218083011.5e5gf6qswd5gpddu@pengutronix.de>
References: <20190215125348.12851-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190215125348.12851-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH 0/8] Bootchooser Documentation Update
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2019 at 01:53:40PM +0100, Enrico Jorns wrote:
> This is a collection of some documentation updates, fixes and
> clarifications for the bootchooser framework.
> 
> Enrico Jorns (8):
>   doc: bootchooser: fix typos etc.
>   doc: bootchooser: explicitly note configuration vs. storage backend
>   doc: bootchooser: be more explicit what bootchooser.state_prefix is
>     for
>   doc: bootchooser: be more explicit about attempts reset on successful
>     boot
>   doc: bootchooser: note how to actually start the bootchooser
>   doc: bootchooser: be more explicit about when the bootchooser
>     terminates
>   doc: bootchooser: add details about bootchooser.reset_attempts
>     handling
>   doc: bootchooser: add retry handling to algorithm description
> 
>  Documentation/user/bootchooser.rst | 94 +++++++++++++++++++++++-------
>  1 file changed, 72 insertions(+), 22 deletions(-)

Applied, thanks. I applied it to master to get it out on the website
sooner.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

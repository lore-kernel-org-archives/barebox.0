Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnWNy-0000ex-6h
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 12:44:22 +0000
Date: Mon, 23 Aug 2010 14:44:19 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100823124419.GC8018@pengutronix.de>
References: <1282544653-11508-1-git-send-email-s.hauer@pengutronix.de>
	<1282544653-11508-8-git-send-email-s.hauer@pengutronix.de>
	<20100823114015.GU8693@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100823114015.GU8693@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/9] menu: fix memory corruption
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 23, 2010 at 01:40:15PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 08:24 Mon 23 Aug     , Sascha Hauer wrote:
> > menu_free and menu_entry_free are called on not fully initialized
> > entries, so we have to check for validity before freeing the
> > members.
> > =

> I disagree free is suposed to not fail evenif we pass a NULL pointer
Ack.  (ie. free must accept NULL without barfing.)

free(3) has this feature:

	"free() frees the memory space pointed to by ptr [...].  If ptr
	 is NULL, no operation is performed."

and kfree in the kernel accepts NULL, too.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

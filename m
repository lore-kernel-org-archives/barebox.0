Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji9zv-0002Pi-Db
 for barebox@lists.infradead.org; Mon, 08 Jun 2020 05:07:00 +0000
Date: Mon, 8 Jun 2020 07:06:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200608050657.GH11869@pengutronix.de>
References: <20200606051304.14547-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606051304.14547-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] startup: allow to abort dryrun just before starting
 the OS
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Jun 06, 2020 at 07:13:04AM +0200, Oleksij Rempel wrote:
> The dryrun in this function is used two times:
> - with "Would run %s\n" and return
> - to store dryrun for later use
> 
> The second one makes no sense since the first one will abort execution.
> Since it is needed for debugging any way, it is better to allow to abort
> later, just before starting the OS.

I think that we must abort before running the command, not afterwards.
Originally it was thought that the bootscripts only configure the setup
for a following bootm. Many bootscripts failed to do so and just
start something right away, for these we indeed have to abort before
running the command.
You are right, this makes the second if(dryrun) pointless of course.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

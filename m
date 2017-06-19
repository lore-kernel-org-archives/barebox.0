Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMt7m-00062t-Kh
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 09:37:37 +0000
Date: Mon, 19 Jun 2017 11:37:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619093712.qyb2uvi64xjjnznd@pengutronix.de>
References: <20170615111420.5318-1-aleksander@aleksander.es>
 <20170619064618.jxlrucmy5fd4ikbs@pengutronix.de>
 <437cc444-41fc-0cb4-57ce-8fdb6b0af74e@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <437cc444-41fc-0cb4-57ce-8fdb6b0af74e@aleksander.es>
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
Subject: Re: [PATCH 00/16] RATP logic fixes and improvements
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Mon, Jun 19, 2017 at 11:07:09AM +0200, Aleksander Morgado wrote:
> Hey,
> 
> On 19/06/17 08:46, Sascha Hauer wrote:
> >> I went through the RFC916 and ended up preparing a set of fixes and improvements for the RATP logic in barebox.
> >> Let me know what you think.
> > As far as I can say the patches look good. It's quite a while since I
> > last looked at the RATP code, so I can't really judge. To which extent
> > are the patches tested? Have you explicitly tested for the corner cases
> > you fix in each patch? You probably have tested against your new
> > library. Have you also tested against the python implementation?
> 
> I did test against bbremote, and also did several fixes there as well.
> I haven't tested against the "ratp filesystem support" feature though,
> maybe I should do that as well.

That would be great, yes.

> 
> Regarding which corner cases are tested, well, some of them apply to
> code paths that I believe wouldn't really apply to barebox right now
> (e.g. barebox doing active open at the same time as bbremote doing
> active open), so that's hard to test.

Indeed, yes. This path has been untested before aswell.

> I could go one by one over each
> patch and try to provide logs before/after applying the patch, how
> about that?

I don't think that's necessary. It might be worth noting to the commit
messages which patches you made because there was something not working
and which patches you made because the standard was not correctly
implemented.

> 
> BTW; how would you debug barebox (e.g. get the debug messages
> generated) while testing the RATP link over the TTY? Right now I
> validated the barebox behavior just by looking at which RATP messages
> were returned to me.

Use different consoles for debug messages and RATP. During development
we used a board with two serial ports, but you could also use network
console as an alternative console.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMqSO-00084j-UU
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:46:42 +0000
Date: Mon, 19 Jun 2017 08:46:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619064618.jxlrucmy5fd4ikbs@pengutronix.de>
References: <20170615111420.5318-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170615111420.5318-1-aleksander@aleksander.es>
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

Hi Aleksander,

On Thu, Jun 15, 2017 at 01:14:04PM +0200, Aleksander Morgado wrote:
> Hey Sascha,
> 
> I went through the RFC916 and ended up preparing a set of fixes and improvements for the RATP logic in barebox.
> Let me know what you think.

As far as I can say the patches look good. It's quite a while since I
last looked at the RATP code, so I can't really judge. To which extent
are the patches tested? Have you explicitly tested for the corner cases
you fix in each patch? You probably have tested against your new
library. Have you also tested against the python implementation?

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

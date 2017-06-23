Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dOMuo-0000mB-7D
 for barebox@lists.infradead.org; Fri, 23 Jun 2017 11:38:20 +0000
Date: Fri, 23 Jun 2017 13:37:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170623113756.gnd2amqfj4hczrw5@pengutronix.de>
References: <20170621191323.18191-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170621191323.18191-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH v2 00/16] RATP logic fixes and improvements
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Wed, Jun 21, 2017 at 09:13:07PM +0200, Aleksander Morgado wrote:
> Hey Sascha,
> 
> This v2 series of patches includes just changes in the commit
> messages, trying to explain which of the patches apply to barebox
> and/or the barebox<->bbremote interactions. I did test all these
> patches also with RATP FS, and I didn't see any regression.
> 
> I did see issues in RATP FS happening with and without my patches,
> though. E.g. "cat"-ing a long file (>1024 bytes) that is being
> exported via RATFS results in each byte read being sent through the
> ratp output console messages one by one (the actual read operation
> over RATFS goes in chunks of 255, but the cat stdout messages via RATP
> go byte by byte...). After that, the additional read operations above
> offset 1024 end up timing out. I believe I'm going to have to work
> with RATFS in the near future, so I'll likely spend some time looking
> at those issues soon anyway.

Ok, you see RATP FS issues, but they are unrelated to your series. Fine
then, let's leave this for a future task. Applied, thanks

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

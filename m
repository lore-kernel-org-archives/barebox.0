Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KeM-0002gq-Gc
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 08:24:07 +0000
Date: Wed, 19 Feb 2020 09:24:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200219082404.s2aoyh6lmsbnpcqu@pengutronix.de>
References: <20200210130952.19779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210130952.19779-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] reset_source: introduce reset_source_xlate to
 translate specific type
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2020 at 02:09:49PM +0100, Ahmad Fatoum wrote:
> We have a few places where driver code prints reset_source_name() to
> console after setting the reset source.
> 
> This working is probe order dependent, because reset_source_name()
> prints the highest priority reset_source so far, which doesn't
> necessarily have to be the one that was just computed.
> 
> Implement reset_source_xlate, so drivers can be migrated to use it.

I renamed reset_source_xlate to reset_source_to_string which IMO makes
it more clear what this function does.

Applied, thanks

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

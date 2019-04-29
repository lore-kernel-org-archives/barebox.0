Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0EF-0007Q6-0J
 for barebox@lists.infradead.org; Mon, 29 Apr 2019 06:57:38 +0000
Date: Mon, 29 Apr 2019 08:57:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190429065726.n2sezyznkd3ggjwi@pengutronix.de>
References: <20190424102650.9257-1-s.hauer@pengutronix.de>
 <20190424102650.9257-4-s.hauer@pengutronix.de>
 <20190426123705.payrtca5k5a3ilsj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190426123705.payrtca5k5a3ilsj@pengutronix.de>
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
Subject: Re: [PATCH 4/4] defaultenv: Convert init script to C
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Apr 26, 2019 at 02:37:05PM +0200, Roland Hieber wrote:
> Hi Sascha,
> 
> small note: one might want to interrupt long-running processes during
> the init sequence, e.g. if an init script contains a "dhcp" call or does
> some NFS mount, but the board is currently not connected to the network.

Do you have a better example? You shouldn't run dhcp in an init script.

> Now it is no longer possible to interrupt such processes, even when
> global.autoboot_abort_key is set to anything else than "ctrl-c". Was
> this use case considered?

You can't abort the init sequence, but you can prevent it from being
executed at all. So when you are in such a situation, reset the board
and use ctrl-c or 'q' to not run the init sequence.

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

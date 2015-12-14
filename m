Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QKi-0007dj-Pw
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:26:22 +0000
Date: Mon, 14 Dec 2015 11:25:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151214102558.GG11966@pengutronix.de>
References: <1449793397.26955.94.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449793397.26955.94.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] cdev: When creating a new cdev, initialize device_node
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Dec 11, 2015 at 12:23:11AM +0000, Trent Piepho wrote:
> If a new cdev doesn't have a device_node defined when passed to
> devfs_create(), set it to the device_node of the parent device, if one
> exists.
> 
> For non-partitions, like ocotp or eeprom devices, this is the correct
> thing to do.  Partitions need to use, and do use, a different node.
> 
> The code from commit 274e0b8dc48956babeaa2faf70bf8066e656b621 to set
> device_node in ocotp can be removed.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
> Tested this to work for loading the env from an at24 eeprom.  Should work
> for any other non-partitioned device too.

Applied, thanks

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

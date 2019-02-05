Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqzHM-00012n-QY
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 11:52:42 +0000
Date: Tue, 5 Feb 2019 12:52:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190205115238.jep3ych42bz5licz@pengutronix.de>
References: <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
 <20190122144240.t7bknlqpipjpzeda@pengutronix.de>
 <12201721548173536@iva5-750e13568e4d.qloud-c.yandex.net>
 <20190123091134.2ibecc3f2sxgr6gc@pengutronix.de>
 <39543571548237706@iva8-6be7d23653d9.qloud-c.yandex.net>
 <20190123101735.faeyxjmmfxogvwqt@pengutronix.de>
 <8696391548418684@myt4-929fb874f3f2.qloud-c.yandex.net>
 <61845721548425461@sas2-80cfc068821c.qloud-c.yandex.net>
 <20190128084615.ssynohnulsd4sjwi@pengutronix.de>
 <5044551549275222@myt3-2475c4d2af83.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5044551549275222@myt3-2475c4d2af83.qloud-c.yandex.net>
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
Subject: Re: [HELP] DT isues
To: Seraphim Dolbilov <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Feb 04, 2019 at 01:13:42PM +0300, Seraphim Dolbilov wrote:
> Hello friends,
> 
> I'm trying to modify DT dynamically while Barebox is running, but it
> doesn't work the way I expect. E.g. I use of_delete_node(), but `of_dump`
> shows all nodes that are expected to be deleted, so the corresponding 
> devices are available both from Barebox and Linux.

I have no indication that of_delete_node() doesn't work. Are you sure
you are deleting nodes from the same tree that you actually show with
of_dump?

Note that of_delete_node() only deletes from the current barebox device
tree. When you start Linux with another devicetree then the node will
be there again of course. If you want to delete a node from the Linux
Device tree then have a look at the -f option to the of_node command.

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

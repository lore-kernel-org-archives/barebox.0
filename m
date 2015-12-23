Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aBpMh-0001a5-Au
 for barebox@lists.infradead.org; Wed, 23 Dec 2015 19:46:28 +0000
Date: Wed, 23 Dec 2015 20:46:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151223194602.GJ11966@pengutronix.de>
References: <20151223191058.4ffb07f4@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151223191058.4ffb07f4@berta>
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
Subject: Re: [RFC] device probe order
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Peter,

On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> Dear All,
> 
> I've ported an UHCI driver from the u-boot to the barebox (WIP). To
> interoperate with the EHCI driver, the UHCI driver should be probed
> ater the EHCI driver. Both drivers are binded via the device tree
> mechanism. How can i achieve the correct probe order?

Do you have an example binding to look at? Normally I would assume that
the binding makes sure somehow that the uhci driver has to be probed.

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

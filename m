Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ97P-0001I7-9M
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 07:41:52 +0000
Date: Mon, 1 Feb 2016 08:41:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160201074127.GK13058@pengutronix.de>
References: <1453139715-11612-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453139715-11612-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC] usb: port UHCI driver from the u-boot
To: pmamonov@gmail.com
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Jan 18, 2016 at 08:55:15PM +0300, pmamonov@gmail.com wrote:
> From: Peter Mamonov <pmamonov@gmail.com>
> 
> Here is a UHCI driver ported from the u-boot.
> There are a few pending FIXMEs, but the driver should work.
> 
> Can anyone test it?

I'm afraid nobody can test it here. Personally I have never seen a board
with uhci controller. I could review the driver though if you need more
input.

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

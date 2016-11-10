Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4l3g-0004Na-7o
 for barebox@lists.infradead.org; Thu, 10 Nov 2016 08:50:09 +0000
Date: Thu, 10 Nov 2016 09:49:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161110084945.r5jahnxqy6qe6wbl@pengutronix.de>
References: <20161107181624.4262-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161107181624.4262-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH 0/4] net/designware: A few patches from U-Boot
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Mon, Nov 07, 2016 at 06:16:20PM +0000, Ian Abbott wrote:
> Here are a few old-ish patches for the Synopsys Designware Ethernet
> driver, ported over from U-Boot.
> 
> 1) net/designware: Consecutive writes to the same register to be avoided
> 2) net/designware: Do not select MIIPORT for RGMII interface
> 3) net: designware: Respect "bus mode" register contents on SW reset
> 4) net/designware: add explicit reset of {tx|rx}_currdescnum

The patches look ok to me. Do you want me to apply them or should we
rather wait until you resolved your network issues?

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

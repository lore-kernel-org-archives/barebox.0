Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ30w-0000KU-PK
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 13:27:43 +0000
Date: Sat, 14 Apr 2012 15:27:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120414132737.GZ3852@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-6-git-send-email-s.hauer@pengutronix.de>
 <20120414104658.GC2074@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414104658.GC2074@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] net mii: Add mii_open/mii_close functions
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 12:46:58PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> > Some phys need board specific fixups. To be able to do this
> > from board code add mii_open/mii_close functions so that the
> > board can use the regular mii_read/mii_write functions.
> I don't like this
> 
> we can import the phylib from the kernel

I'm afraid what I want to do here is a board specific hack to a generic
phy. Unfortunately this is a top secret product without datasheet
available :(

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

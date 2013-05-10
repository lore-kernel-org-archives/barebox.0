Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UanKL-0006XW-HY
 for barebox@lists.infradead.org; Fri, 10 May 2013 13:25:38 +0000
Date: Fri, 10 May 2013 15:25:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130510132512.GN32299@pengutronix.de>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1368093171-17845-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130509111639.GF31290@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130509111639.GF31290@titan.lakedaemon.net>
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
Subject: Re: [PATCH v3 2/7] scripts: add kwboot tool
To: Jason Cooper <jason@lakedaemon.net>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Thu, May 09, 2013 at 07:16:39AM -0400, Jason Cooper wrote:
> Thomas,
> 
> On Thu, May 09, 2013 at 11:52:46AM +0200, Thomas Petazzoni wrote:
> > This tool is used with Marvell EBU SoC to trigger the UART boot mode
> > provided by the SoC BootROM, and push the bootloader image to the
> > target using the Xmodem protocol.
> > 
> > It has been taken from the U-Boot source code, with minor
> > modifications to make it work with Armada 370/XP platforms.
> 
> Could you add a note which revision of u-boot it was pulled from?  That
> should make later syncs between the two versions much easier.
> 
> To that end, Sascha, do you think it is worth the extra commit to have
> one commit copying the file over, and a second adding changes to make it
> work with Armada 370/XP?

The revision the tool originally came from should be enough I think.
Anyway, if Thomas is willing to split this into two patches I'll take
that version instead.

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

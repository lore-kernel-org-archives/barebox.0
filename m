Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rarll-0007mg-Rt
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 16:33:27 +0000
Date: Wed, 14 Dec 2011 17:33:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214163315.GI27267@pengutronix.de>
References: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
 <1323866587-2385-5-git-send-email-s.hauer@pengutronix.de>
 <20111214151033.GC7553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111214151033.GC7553@game.jcrosoft.org>
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
Subject: Re: [PATCH 4/5] ppc: switch to libfdt based oftree implementation
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2011 at 04:10:33PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	here you remove the multi image support
> 
> 	so so
> 
> 	standard way on ppc

Don't worry, it will come back very soon, shinier than ever. I noticed
that ppc is broken anyway atm. The switch to the kernel zlib implementation
made that zlib now checks for NULL pointers in the destination buffer.
On ppc the kernel is normally extracted to NULL though and zlib refuses
to work.

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

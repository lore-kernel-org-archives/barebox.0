Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7sCN-0002HY-9M
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 18:45:53 +0000
Date: Tue, 19 Feb 2013 19:45:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130219184546.GZ1906@pengutronix.de>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
 <1360915901-3420-1-git-send-email-s.hauer@pengutronix.de>
 <20130215081251.GJ1906@pengutronix.de>
 <20130217105856.GA949@x61s.8.8.8.8>
 <20130218102432.GR1906@pengutronix.de>
 <20130219132242.GA4129@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130219132242.GA4129@x61s.8.8.8.8>
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
Subject: Re: [PATCH] nor flash: integrate into mtd
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2013 at 02:23:10PM +0100, Alexander Aring wrote:
> Hi,
> 
> I was thinking to add a "depends on MTD" to these drivers. But I
> detect that cfi_flashs doesn't need a MTD support.
> 
> With this move we got a mtd layer in barebox, when we uses
> cfi_flash only.
> 
> The cfi_flashs only uses struct mtd_info to save information about
> common flashs like erasesize, etc... and a little callback to call
> the erase function.
> 
> I mean it's a good move to move this into mtd section, but will the other
> mtd functions which are not necessary not get into barebox because size
> optimiziation?

Yes, that's the downside of this patch. Unfortunately we have the
situation that UBI attaches to mtd, so the cfi flash driver was broken
for cfi flashes. We used to add a fake mtd struct especially for UBI
on nor flashes, but the recently introduced ubiformat didn't cope with
that. This patch fixes this with the cost of increasing the binary size.

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

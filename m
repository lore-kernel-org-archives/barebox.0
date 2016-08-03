Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUomw-00043G-RR
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 05:32:19 +0000
Date: Wed, 3 Aug 2016 07:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160803053157.GF20657@pengutronix.de>
References: <1468958994-10875-1-git-send-email-akurz@blala.de>
 <20160721061819.GQ20657@pengutronix.de>
 <alpine.DEB.2.00.1607281236250.327@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1607281236250.327@blala.de>
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
Subject: Re: [PATCH] mfd mc13xxx: add MC13892_REVISION_3_6
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 28, 2016 at 12:54:05PM +0200, Alexander Kurz wrote:
> Hi,
> thanks for applying this quickly, unfortunately this patch is not 
> correct.
> 
> The observed MC13892 is attached to a MC508 in two different variants of 
> e-book readers. When .max_speed_hz is set faster than 16MHz (default is
> 20MHz since patch 6e18b3a48ee4), the device is identified as
> > Found MC13892 ID: 0x0067fe [Rev: 3.6]
> 
> while indeed this device is a
> > Found MC13892 ID: 0x0045d4 [Rev: 2.4]
> 
> Is it possible to drop this patch or should I post a revert patch on it?

It's still in next, so I just dropped it. You can send a corrected patch
if you wish.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs0h4-0000DC-Kv
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 07:03:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fs0gq-0002P3-Lz
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 09:02:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fs0gq-0003Nb-Dx
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 09:02:56 +0200
Date: Tue, 21 Aug 2018 09:02:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180821070256.4owzz75fhuumiaxl@pengutronix.de>
References: <20180816072116.2946-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180816072116.2946-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: Disable OTG controller during startup
To: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 16, 2018 at 09:21:16AM +0200, Sascha Hauer wrote:
> When booting from USB it's sometimes observed that the USB stack on
> the remote host gets confused. This happens when we adjust the PLLs
> the USB controller is hanging on. The ROM just leaves the USB controller
> enabled when it passes control to the bootloader, so make sure we
> disable it before doing any critical clock operations.
> 
> This is currently done for i.MX51, i.MX53 and i.MX6, but a similar thing
> can happen on other i.MXes aswell.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I won't apply this one. With this patch we can't make sure that the
clocks for the USB controller are enabled. When they are not, the bus
accesses can hang the system. Checking if the clocks are turned on is
SoC specific, so this needs a bit more work.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRChH-0002cC-1S
 for barebox@lists.infradead.org; Thu, 16 May 2019 09:29:10 +0000
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
 <66bf01c678b62668909177d16748247669c71dfa.1556875750.git-series.s.trumtrar@pengutronix.de>
 <alpine.DEB.2.20.1905110726590.25765@blala.de>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <alpine.DEB.2.20.1905110726590.25765@blala.de>
Date: Thu, 16 May 2019 11:29:02 +0200
Message-ID: <73pnoihhnl.fsf@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 02/10] spi: Generalize SPI "master" to "controller"
To: Alexander Kurz <akurz@blala.de>
Cc: Barebox List <barebox@lists.infradead.org>


Hi Alexander,

Alexander Kurz <akurz@blala.de> writes:

> Hi Steffen,
> this commit seems to be the origin of a crash when running the 
> spi 
> command, e.g.
>

I just sent a patch that should fix this problem:

    [PATCH] commands: spi: fix NULL pointer dereference


Thanks for testing,
Steffen

-- 
Pengutronix e.K.                          | Steffen Trumtrar 
|
Industrial Linux Solutions                | 
http://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany| Phone: 
+49-5121-206917-0   |
Amtsgericht Hildesheim, HRA 2686          | Fax: 
+49-5121-206917-5555|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

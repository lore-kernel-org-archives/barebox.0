Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcAU-0008KD-VM
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:42:59 +0000
Message-ID: <1454424156.5358.10.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 02 Feb 2016 15:42:36 +0100
In-Reply-To: <1454411855-4839-6-git-send-email-p.zabel@pengutronix.de>
References: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
 <1454411855-4839-6-git-send-email-p.zabel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 6/6] net: phy: micrel: errata for KSZ9031
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

Am Dienstag, den 02.02.2016, 12:17 +0100 schrieb Philipp Zabel:
> The KSZ9031 erratum #2 stats:
>     The 125MHz reference clock (CLK125_NDO pin) output
>     has duty cycle variation when the KSZ9031 links up in
>     1000Base-T Slave mode, resulting in wide variation on
>     the falling clock edge.
> 
> The recommended workaround is to either only use the rising edge of
> the CLK125_NDO output for PLL locking, or to
> 
>     Set KSZ9031 to always link up in 1000Base-T Master mode
>     by setting register 9h, bits [12:11] to '11'.
> 
> Since we can't guarantee the former, this patch does the latter.
> Original patch by Markus Niebel <Markus.Niebel@tqs.de>.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Please disregard this one. If in fact the PLL can lock only to the
rising CLK125_NDO edge, we shouldn't force master mode unconditionally.
This should probably only be enabled by a boolean device tree property.

regards
Philipp


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

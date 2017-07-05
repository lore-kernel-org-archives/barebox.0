Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSmzz-0007vP-U5
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 16:17:57 +0000
Message-ID: <1499271453.22075.33.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 18:17:33 +0200
In-Reply-To: <20170705153809.20050-1-o.rempel@pengutronix.de>
References: <20170705153809.20050-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] update snvs_lpgpr driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.07.2017, 17:38 +0200 schrieb Oleksij Rempel:
> v2:
> - move snvs-lpgpr to arch/arm/dts/imx6qdl.dtsi
> - remove ".. *dcfg"  from the probe function
> 
> Oleksij Rempel (2):
>   nvmem: snvs_lpgpr: sync with latest version for kernel
>   dts: arm: imx6qdl: provide snvs-lpgpr device

Applied, thanks.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

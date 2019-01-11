Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghueg-0007xR-W0
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 11:07:19 +0000
Date: Fri, 11 Jan 2019 12:07:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190111110713.44lzu7ulhxnnfcoz@pengutronix.de>
References: <20190110164335.2970-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190110164335.2970-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: nitrogen6x: remove conflicting upstream SPI NOR
 partitions
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 10, 2019 at 05:43:35PM +0100, Philipp Zabel wrote:
> Since kernel commit 44eac6ef3779 ("ARM: dts: imx6qdl-nitrogen6x: Add SPI
> NOR partitions"), included in barebox commit a9c5f6b9ec88 ("dts: update
> to v4.16-rc1"), the upstream device tree contains partition definitions
> that conflict with preexisting barebox partitions:
> 
>   ERROR: m25p0.env: New partition m25p0.env conflicts with m25p0.barebox
>   ERROR: m25p0.splash: New partition m25p0.splash conflicts with m25p0.barebox
> 
> Remove them so we can add the larger barebox and barebox-environment
> partitions that are used since commit 3fb70de496b3 ("ARM: i.MX: increase
> barebox partition sizes").
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-nitrogen6x.dtsi | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

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

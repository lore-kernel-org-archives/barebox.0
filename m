Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIAPg-0004UE-RS
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:50:25 +0000
Date: Tue, 15 Sep 2020 14:50:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915125023.GN4498@pengutronix.de>
References: <20200914205259.834746-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914205259.834746-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] ARM: dts: stm32mp: drop no longer needed PSCI version
 override
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Sep 14, 2020 at 10:52:59PM +0200, Ahmad Fatoum wrote:
> 52cc061f50aa ("ARM: dts: stm32mp: report psci v0.2 at least") adds a
> barebox override, because the upstream device tree's compatible was
> outdated.  Since abef60363d8e ("dts: update to v5.8-rc1"), the
> upstream device tree has &{/psci} { compatible = "arm,psci-1.0"; }; ,
> so now we can drop our override again without adverse effect.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/dts/stm32mp151.dtsi | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

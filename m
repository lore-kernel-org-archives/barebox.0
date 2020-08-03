Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2fzv-0002En-Ua
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:19:48 +0000
Date: Mon, 3 Aug 2020 21:19:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803191946.GE31536@pengutronix.de>
References: <20200722082141.23590-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722082141.23590-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] i2c: stm32: support new st,stm32mp15-i2c compatible
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 22, 2020 at 10:21:41AM +0200, Ahmad Fatoum wrote:
> Linux v5.8-rc1 has gained support for the FastMode+ registers on the
> stm32mp15, but those are incompatible between the stm32mp15 and the
> stm32f7, so a new compatible was introduced. The old compatible was
> replaced for the MP15 SoC, breaking I2C in barebox.
> Add the new compatible to fix this.
> 
> Unlike Linux, we just use the same setup parameters as for the stm32f7.
> This is ok as long we don't want to support FastMode+.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Hello Sascha,
> 
> Yet another v5.8-rc1 dts/ sync breakage.
> If possible, please reorder before the dts/ sync.
> Otherwise, please apply to master

Applied to master, thanks

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

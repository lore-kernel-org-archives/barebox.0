Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkXX-0002It-JQ
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:01:36 +0000
Message-ID: <1558605693.5135.6.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 23 May 2019 12:01:33 +0200
In-Reply-To: <20190521155626.9906-4-a.fatoum@pengutronix.de>
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 3/5] clk: imx6: Mask mmdc_ch1 handshake for
 periph2_sel and mmdc_ch1_axi_podf
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: pza@pengutronix.de

On Tue, 2019-05-21 at 17:56 +0200, Ahmad Fatoum wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> MMDC CH1 is not used on i.MX6Q, so the handshake needed to change the
> parent of periph2_sel or the divider of mmdc_ch1_axi_podf will never
> succeed.
> Disable the handshake mechanism to allow changing the frequency of
> mmdc_ch1_axi, allowing to use it as a possible source for the LDB DI
> clock.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> [afa: ported to barebox from Linux commit f13abeff2c]
> [afa: moved call site to where it would've been moved in following commit]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

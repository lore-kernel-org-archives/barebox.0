Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8jyc-0008K8-Bi
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 12:47:31 +0000
Date: Thu, 20 Aug 2020 14:47:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200820124728.GY13023@pengutronix.de>
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
 <20200817045332.28099-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817045332.28099-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/3] video: ipuv3: parallel-display: support of_graph
 binding
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 17, 2020 at 06:53:31AM +0200, Ahmad Fatoum wrote:
> "fsl,imx-parallel-display"-compatible devices are supposed to support
> two bindings to query the connected LCD's parameters:
> 
>   - A display timings sub node
>   - A of_graph pointing to a panel or a bridge
> 
> So far only the first was supported. Mimic what LDB is already doing, so
> we support both.
> 
> Unlike LDB, if both are specified, the display timings node takes
> precedence. This is to maintain backwards compatibility.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/imx-pd.c | 31 +++++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 10 deletions(-)

Applied 2/3 and 3/3, thanks

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

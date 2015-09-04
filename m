Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXjar-0008IM-Eu
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 05:31:22 +0000
Date: Fri, 4 Sep 2015 07:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150904053059.GN18700@pengutronix.de>
References: <1441175928-38242-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441175928-38242-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: Add include to strip am33xx clocks
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 02, 2015 at 08:38:47AM +0200, Daniel Schultz wrote:
> Include this file to disable all clocks.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/dts/am33xx-clocks-strip.dtsi | 79 +++++++++++++++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 arch/arm/dts/am33xx-clocks-strip.dtsi

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

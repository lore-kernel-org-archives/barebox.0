Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexjF-00019F-L7
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:52:19 +0000
Date: Wed, 11 Dec 2019 09:52:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211085214.ydhd5ywgaqn6clj2@pengutronix.de>
References: <20191210220322.47425-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210220322.47425-1-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/4] ARM: zynq: zedboard: split out PS7 init
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2019 at 11:03:19PM +0100, Lucas Stach wrote:
> Move the PS7 inititalization into its own function. This helps
> readability and logically splits the FPGA toolchain generated
> setup from the reset of the board init.
> 
> Also execute the PS7 setup after the lowlevel CPU init, as this
> is the regular order used in the Barebox codebase.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/avnet-zedboard/lowlevel.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)

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

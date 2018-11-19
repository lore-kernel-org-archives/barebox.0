Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOedV-00007C-1q
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:10:26 +0000
Date: Mon, 19 Nov 2018 09:10:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181119081013.lo6i7wfsafum57l6@pengutronix.de>
References: <20181116101032.3358-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181116101032.3358-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 0/4] random fixes
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 16, 2018 at 11:10:28AM +0100, Oleksij Rempel wrote:
> Some random fixes for issues found by https://app.codacy.com
> 
> Oleksij Rempel (4):
>   ddr_spd: remove unused array
>   video/ssd1307fb: fix potential memory leak on error
>   clk: imx: cpu: avoid use after free on error
>   of: partition: set ret for error cases
> 
>  common/ddr_spd.c          | 2 --
>  drivers/clk/imx/clk-cpu.c | 4 +++-
>  drivers/of/partition.c    | 4 ++--
>  drivers/video/ssd1307fb.c | 7 +++++--
>  4 files changed, 10 insertions(+), 7 deletions(-)

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

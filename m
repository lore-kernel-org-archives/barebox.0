Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5rT-0006eq-TT
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 19:03:37 +0000
Date: Tue, 2 Jul 2013 21:03:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130702190313.GH516@pengutronix.de>
References: <1372667121-12240-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372667121-12240-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] pcm049: Add platformcode for omap4 framebuffer
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 01, 2013 at 10:25:21AM +0200, Jan Weitzel wrote:
> From: Christoph Fritz <chf.fritz@googlemail.com>
> 
> For splashscreen support on pcm049, this patch adds omap4 framebuffer
> platform data and configures display pd050vl1, g104x1, pm070wl4, pd104slf,
> edt_etm0350G0dh6, edt_etm0430G0dh6, edt_etmv570G2dhu and edt_etm0700G0dh6
> 
> Also add extra  muxing and defconfig
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

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

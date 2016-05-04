Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axwQd-00026g-Ng
 for barebox@lists.infradead.org; Wed, 04 May 2016 13:01:27 +0000
Date: Wed, 4 May 2016 15:01:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160504130100.GN19714@pengutronix.de>
References: <1462345152-3509-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462345152-3509-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: phytec-som-imx6: add automount for first partition
 on eMMC
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, May 04, 2016 at 08:59:12AM +0200, Stefan Christ wrote:
> For the phyCORE-i.MX6 add an automount command for the first partition
> on the eMMC device.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  .../phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount      | 3 +++
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

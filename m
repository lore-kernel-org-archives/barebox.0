Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGj3p-0005xt-LT
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 06:58:42 +0000
Date: Thu, 29 Jan 2015 07:58:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129065819.GO12209@pengutronix.de>
References: <1422439875-21347-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422439875-21347-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH v2] ARM: i.MX6: use generic calculation in nand bbu handler
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 28, 2015 at 11:11:15AM +0100, Stefan Christ wrote:
> The parameters ECC Strength, BadBlockMarkerByte and BadBlockMarkerStartBit in
> the FCB structure depends on the nand chip's pagesize and oobsize. Instead of
> hardcoding these values into the imx6 bbu handler calculate these values on the
> fly. Therefore we export the necessary functions from the nand_mxs driver to
> use them in the bbu handler.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>

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

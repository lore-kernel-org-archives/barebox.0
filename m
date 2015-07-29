Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKKP4-0004QI-0s
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 05:59:46 +0000
Date: Wed, 29 Jul 2015 07:59:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150729055924.GF18700@pengutronix.de>
References: <1437999653-15630-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437999653-15630-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: [phyFLEX,phyCARD]-i.MX6: rename define in
 flash-headers
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 27, 2015 at 02:20:53PM +0200, Stefan Christ wrote:
> The files flash-header-*.imxfg contains two defines which are use in
> include files flash-header-phytec-*.h. The first define is SETUP_MDCFG0.
> In the second define name some RAM size value were used, e.g.
> SETUP_S_DL_512MB_1GB or SETUP_1GIB_2GIB_4GIB.
> 
> It's better to name also the second define after the register names,
> here MMDC1_MDCTL and MMDC1_MDASP, because these values changes for every
> RAM configurations and it's consistent with the first define.
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

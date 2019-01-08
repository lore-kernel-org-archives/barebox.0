Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gglwo-00024z-HI
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 07:37:16 +0000
Date: Tue, 8 Jan 2019 08:37:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190108073709.ed2x5ey7gc4kowcq@pengutronix.de>
References: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 0/4] arm: boards: phytec-som-am335x: Add bootchooser
 support
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 07, 2019 at 09:17:05AM +0100, Teresa Remmet wrote:
> Hello,
> 
> this patchstack from Daniel adds bootchooser support to phytec am335x boards.
> I updated the patchstack to a more recent barebox version and added some small fixes.
> 
> Teresa
> 
> Daniel Schultz (4):
>   ARM: configs: omap_defconfig: Add bootchooser
>   ARM: dts: am335x-phytec-state: Reduce partition size
>   ARM: dts: am335x-phytec-state: Add state partition for bootchooser
>   arm: boards: phytec-som-am335x: Add bootchooser to bootsource

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

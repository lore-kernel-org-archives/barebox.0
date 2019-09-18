Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZG0-0005hu-PP
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 12:40:30 +0000
Date: Wed, 18 Sep 2019 14:40:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190918124026.63dz27qfwkcv75lr@pengutronix.de>
References: <20190917115518.14953-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917115518.14953-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] ARM: layerscape: streamline and document boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2019 at 01:55:12PM +0200, Ahmad Fatoum wrote:
> v1 -> v2:
>   - Not calling back into bootm code. We now read barebox and invoke
>     it directly in the bootm handler (Sascha)
>   - Dropped copy_file_2 implementation, because it's no longer needed
>   - Fixed a commit message typo (Roland)
> 
> Ahmad Fatoum (6):
>   ARM: Layerscape: add bootm handler for images
>   ARM: Layerscape: don't generate second-stage 2nd.image
>   filetype: support fastboot barebox_update with layerscape image
>   scripts: pblimage: explicitly set architecture to ARM
>   ARM: layerscape: tqmls1046a: disable all SGMII PHYs
>   Documentation: boards: document layerscape support

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXjZc-00075z-1f
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 05:30:04 +0000
Date: Fri, 4 Sep 2015 07:29:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150904052938.GM18700@pengutronix.de>
References: <1441175817-37597-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441175817-37597-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: am33xx: Add barebox_update eMMC option
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 02, 2015 at 08:36:56AM +0200, Daniel Schultz wrote:
> With this patch the barebox_update command will be extended by the possibility
> to flash the MLO to eMMC devices.
> 
> The MLO will be flashed to the following addresses:
> 0x20000
> 0x40000
> 0x60000
> 
> The MBR at addr. 0x0 won't be overwritten.
> Therefore it's necessary to remove the MLO in the boot partition.

Couldn't you instead write the MLO to 0x0 but keep the partition table?
It seems the first 512 bytes from the MLO are unused execpt for the
CHSETTINGS header which does not conflict with the partition table.

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

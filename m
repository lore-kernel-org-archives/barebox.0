Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bolli-0002Bx-FZ
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 06:21:31 +0000
Date: Tue, 27 Sep 2016 08:21:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160927062108.yvnmv2xwcoi4weyt@pengutronix.de>
References: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
 <20160926105233.26387-1-iw3gtf@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160926105233.26387-1-iw3gtf@arcor.de>
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
Subject: Re: [PATCH 0/2 (try 2)] mtd: ubi: implement the new command
 'ubirename'
To: Giorgio Dal Molin <iw3gtf@arcor.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 26, 2016 at 12:52:31PM +0200, Giorgio Dal Molin wrote:
> Here a new set of patches implementing the command 'ubirename'.
> 
> They are based on a patch serie from Sascha that restructures a bit
> the barebox UBI APIs. In particular it is now easier to find the ubi
> volume ids from the command code. Moreover the command code uses now
> api functions to do the rename.
> 
> This new set also fixes some minor cosmetic details noted by Sascha and
> a real problem found in the function 'get_vol_id()': it was missing
> a call to 'ubi_close_volume(desc)' hence leaving ubi volumes busy.
> A simple test that showed the problem was:
> 
> bb> ubimkvol /dev/nand0.ubi_volumes.ubi vol_A 10MiB
> bb> ubirename /dev/nand0.ubi_volumes.ubi vol_A vol_B
> bb> ubirmvol /dev/nand0.ubi_volumes.ubi vol_B
> 
> The last command, ubirmvol, failed because 'vol_B' appeared to be still
> busy after the rename (vol->readers==1).
> 	
> Giorgio Dal Molin (2):
>   mtd: ubi: add API call to rename volumes.
>   mtd: ubi: commands: added the new command 'ubirename'.

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

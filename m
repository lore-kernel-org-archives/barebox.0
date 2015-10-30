Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs49m-00037a-Mo
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 07:31:27 +0000
Date: Fri, 30 Oct 2015 08:31:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151030073104.GZ25308@pengutronix.de>
References: <20151029160409.2ad22e14@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151029160409.2ad22e14@berta>
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
Subject: Re: [BUG] ata: disk_ata_drive: SSD drive doesn't pass check for ata
 id validity
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Juergen Borleis <jbe@pengutronix.de>

+Cc Juergen

On Thu, Oct 29, 2015 at 04:04:09PM +0300, Peter Mamonov wrote:
> Hi!
> 
> Barebox refuses to deal with OCZ-VERTEX4 ssd sata drive, because:
> 	ata1: ata id invalid
> 
> This error is triggered by the following piece of code :
> 
> static int ata_id_is_valid(const uint16_t *id)
> {
> 	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
> 		pr_debug("Drive's ID seems invalid\n");
> 		return -EINVAL;
> 	}
> 
> 	return 0;
> }
> 
> The "id" is a sector-sized block of bytes, received after
> issuing ATA_CMD_ID_ATA command.
> 
> If I remove this check, the drive works fine.
> 
> Can someone with better knowledge of ATA standard comment on this
> issue?

Juergen, do you have an idea what this check is for? Neither U-Boot nor
the Kernel seem to ever check for bit 0 in this field.

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

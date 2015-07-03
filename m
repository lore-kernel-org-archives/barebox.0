Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAxWr-0002yI-Rp
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 09:45:06 +0000
Date: Fri, 3 Jul 2015 11:44:42 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20150703094442.GK18700@pengutronix.de>
References: <1435909794-17349-1-git-send-email-mkl@pengutronix.de>
 <55963F13.9080106@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55963F13.9080106@pengutronix.de>
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
Subject: Re: [PATCH v2] mtd: mark devname argument of add_mtd_device as const
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 03, 2015 at 09:51:47AM +0200, Marc Kleine-Budde wrote:
> On 07/03/2015 09:49 AM, Marc Kleine-Budde wrote:
> > This patch fixes the following warning:
> > 
> > | drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
> > | drivers/mtd/devices/m25p80.c:271:14: warning: assignment discards 'const' qualifier from pointer target type
> > |   flash_name = dev->id_entry->name;
> > |                 ^
> > 
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> This patch applies to master. I can rebase it to -next if needed.

Not necessary. It's already included as:

commit 5f11e80670a7cf9acfca05b91b3ccf054b8457ae
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Jun 29 07:04:52 2015 +0200

    mtd: Make devname argument to add_mtd_device const
    
    add_mtd_device duplicates the string where necessary, so make it
    const.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

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

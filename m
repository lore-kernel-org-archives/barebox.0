Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YNcwt-0002SY-HO
 for barebox@lists.infradead.org; Tue, 17 Feb 2015 07:52:04 +0000
Date: Tue, 17 Feb 2015 08:51:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150217075140.GO12209@pengutronix.de>
References: <1424091798-23393-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424091798-23393-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] common/bootargs: add blkdevparts variables
To: h.feurstein@gmail.com
Cc: Hubert Feurstein <hubert.feurstein@deto.at>, barebox@lists.infradead.org

On Mon, Feb 16, 2015 at 02:03:18PM +0100, h.feurstein@gmail.com wrote:
> From: Hubert Feurstein <hubert.feurstein@deto.at>
> 
> The kernel command line option blkdevparts works like mtdparts, but for all
> block devices. So it can be used for eMMC devices without the need of a
> traditional partition table.

Uh, wrong world. For mtd devices I would be glad if the partition table
would be stored on the device. Now we get support for separating the
partition tables for block devices. Anyway, applied, thanks

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

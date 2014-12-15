Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y0S75-00076H-2n
 for barebox@lists.infradead.org; Mon, 15 Dec 2014 09:38:49 +0000
Date: Mon, 15 Dec 2014 10:38:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141215093817.GA30369@pengutronix.de>
References: <548872F5.6090704@ophrys.net>
 <20141211070458.GZ30369@pengutronix.de>
 <54895E46.5040109@ophrys.net>
 <20141211113246.GH30369@pengutronix.de>
 <548988BA.3080700@ophrys.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <548988BA.3080700@ophrys.net>
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
Subject: Re: Logical partition on barebox
To: Victorien Vedrine <victorien.vedrine@ophrys.net>
Cc: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 01:06:18PM +0100, Victorien Vedrine wrote:
> Thanks,
> 
> I debug common/partitions/dos.c and the problem is
> "dos_extended_partition() is not executed. I found why :
> On dos_partition function there is a test to know the type of
> partition (line 212). The comment says "partition type 0x05 or 0x0f
> can be extended and just 0x0f is tested. The type extended partition
> on my SD card is 0x05 and then it doesn't work.
> I modify the source code of common/partitions/dos.c with
>             if ((pentry.dos_partition_type ==
> 0x0f)||(pentry.dos_partition_type == 0x05)) {
> and now it's work.

Nice. Care to send a patch to fix this upstream?

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKlYk-0003Y2-FJ
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 07:13:48 +0000
Date: Thu, 19 Apr 2012 09:13:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120419071325.GB13302@pengutronix.de>
References: <037201cd1df7$94b2b600$be182200$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <037201cd1df7$94b2b600$be182200$@com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: New user: need a hand booting the kernel from NAND
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 11:42:25PM -0700, George Pontis wrote:
> Machine is a custom at91sam9g45 board with NOR and NAND flash. The bootstrap
> loader and barebox, and barebox environment are in the NOR flash. All seems
> to be working well there. The NAND is partitioned into 2 chunks:
> 2560K(kernel),-(root)
> 
>  
> 
> I used ubimkvol to create a volume on root and the nfs command to put a root
> filesystem on it. Seems to work fine if I get the kernel via NFS.
> 
>  
> 
> I have a good working kernel in uImage format, and used "nfs
> /var/share/uImage  /dev/nand0.kernel.bb" in an attempt to write it to the
> 2560K partition. The nfs copy seemed to work fine. However, it will not
> accept the image. I get messages about an unknown format, suggesting to try
> -f. Was it the wrong procedure that I used to copy the uImage ?

Have you erased you nand before (erase /dev/nand0.kernel.bb)?

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

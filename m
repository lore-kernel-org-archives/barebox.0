Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nfpym-0004ND-Mt
	for barebox@lists.infradead.org; Fri, 12 Feb 2010 07:30:21 +0000
Date: Fri, 12 Feb 2010 08:30:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100212073013.GR17643@pengutronix.de>
References: <faef843a1002112302u6b80cb57we22db316d94e792e@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <faef843a1002112302u6b80cb57we22db316d94e792e@mail.gmail.com>
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
Subject: Re: Regarding nandwrite issue for huge files ?
To: R Arun Kumar <paiarunk@gmail.com>
Cc: barebox@lists.infradead.org

Hi Arun,

On Fri, Feb 12, 2010 at 12:32:19PM +0530, R Arun Kumar wrote:
> Hai,
> 
> I am able to successfully port the barebox for my custom IMX31 board and
> also boot linux on the same.
> I am trying to write the uImage and the root.jffs2 file from barebox and
> found that even though uImage is written successfully and able to boot from
> nand flash also. The nand file write for files more than 3.5 mega size is
> not able to write and the barebox loader is hanged.
> 
> Please help or suggest what could be the issue ?

I don't know what is going wrong here. I often use this driver with
files > 3.5Mb, works for me. Can you add a #define DEBUG in
drivers/nand/nand.c and see if it's always the same location that fails?
You could also make your kernel partition a bit bigger so that the
rootfs starts at another place and see if it's still the same location
that fails.
Have you tried lowering the Nand clock?

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

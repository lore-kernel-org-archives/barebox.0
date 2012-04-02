Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SElMF-0000Qx-0O
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 17:48:00 +0000
Date: Mon, 2 Apr 2012 19:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402174750.GD3852@pengutronix.de>
References: <CAFEF1dF7M15xAgvYLdkVowavpXnvThkzXwtXe0fe4TEEYMFokQ@mail.gmail.com>
 <20120402142929.GY3852@pengutronix.de>
 <CAFEF1dGsAF1zYw+3NDW9sq98sTTp=K9VbyOoHA1kLn2Ltx7=Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEF1dGsAF1zYw+3NDW9sq98sTTp=K9VbyOoHA1kLn2Ltx7=Eg@mail.gmail.com>
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
Subject: Re: Boot linux from cramfs on USB
To: Jakob Malm <jakob.malm@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 02, 2012 at 05:33:11PM +0200, Jakob Malm wrote:
> Hi,
> 
> Thanks for your prompt reply!
> 
> Den 2 april 2012 16:29 skrev Sascha Hauer <s.hauer@pengutronix.de>:
> > That said, your setup seems a bit crazy. What is inside your cramfs? The
> > kernel? You should rather put your kernel into a plain partition on the
> > USB disk. Or do you only have your rootfs inside the cramfs? I rather
> > recommend ext2 or ext3 for this.
> 
> The cramfs would contain the rootfs, including kernel.
> 
> I want to be able to have FAT on the disk, preferably with a single
> file (possibly two), containing the kernel and rootfs, and then load
> up the rootfs into memory and start the kernel with that rootfs. I
> suppose I could create a command specific for our case, but it seems
> like a common enough scenario to me that someone else should have done
> something similar...

You can extract the kernel from your cramfs image by fixing the cramfs
support. I just saw that cramfs expects a /dev/ file, that is it expects
a devfs file. This could be changed by using regular open/read/write
functions.
It would be easier though if you live with two files, one cramfs image
and one kernel image.

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

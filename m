Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSlf-0001bI-ES
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:56:51 +0000
Date: Mon, 3 Dec 2012 10:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203095649.GM10369@pengutronix.de>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <20121203094625.GJ10369@pengutronix.de>
 <alpine.DEB.2.02.1212030449190.9853@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212030449190.9853@oneiric>
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
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 03, 2012 at 04:50:24AM -0500, Robert P. J. Day wrote:
> On Mon, 3 Dec 2012, Sascha Hauer wrote:
> 
> > I just rechecked, current master works fine for me on my beagle (no
> > xM though). Just a guess, have you used the barebox-flash-image link
> > instead of barebox.bin? Since the image is compressed now it becomes
> > important to use the link (which points to the compressed image).
> 
>   whoops, no, i didn't ... will test right this instant.  what *name*
> do i copy it to the SD card under?

xload: cp barebox-flash-image /mnt/MLO
barebox: cp barebox-flash-image /mnt/barebox.bin

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

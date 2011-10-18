Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG4xq-0004Ix-EU
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 08:23:59 +0000
Date: Tue, 18 Oct 2011 10:23:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111018082356.GJ18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
	<20111017195801.GF18141@pengutronix.de>
	<CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
	<20111018065810.GH18141@pengutronix.de>
	<CAM9uW_4vV0=8ZrAy2ChFHy4oix6ouCD-aP2E=Yb3mG0KY1GGiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_4vV0=8ZrAy2ChFHy4oix6ouCD-aP2E=Yb3mG0KY1GGiw@mail.gmail.com>
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
Subject: Re: NAND Boot Issue
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 18, 2011 at 09:35:38AM +0200, Kamel BOUHARA wrote:
> I tried with a zImage, here is what I'm getting :
> 
> barebox:/ bootz /dev/nand0.kernel.bb
> invalid magic 0x00002018
> 
> And here the ls -l /dev/nand0.* output :
> 
>  barebox:/ ls -l /dev/nand0.*
> crw-------     393216 /dev/nand0.barebox.bb
> crw-------     131072 /dev/nand0.bareboxenv.bb
> crw-------    2883584 /dev/nand0.kernel.bb
> crw-------  533200896 /dev/nand0.root.bb
> crw-------  533667840 /dev/nand0.root
> crw-------    2764800 /dev/nand0.kernel
> crw-------     131072 /dev/nand0.bareboxenv
> crw-------     307200 /dev/nand0.barebox
> 
> Here is how I did my kernel and root partitions, following this steps :
> 
> addpart /dev/nand0 300k(barebox)ro,128k(bareboxenv),2700k(kernel),-(root)

Ok, that puts some light into this. Please make sure your partitions are
aligned to eraseblock boundaries, usually 128k. so:

addpart /dev/nand0 512k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)

barebox currently does not enforce this, it's probably time to change
this. Unaligned partitions are fine, but the partition code should mark
them as readonly.
Currently we have no way of passing the eraseblocksize through to the
partition code, so it's not trivial to enforce alignment.

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

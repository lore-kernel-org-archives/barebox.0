Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwXrH-0000BQ-P2
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 10:40:13 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 7 Mar 2011 11:37:46 +0100
References: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
	<201103071018.00650.jbe@pengutronix.de>
	<20110307094002.GD8042@jasper.tkos.co.il>
In-Reply-To: <20110307094002.GD8042@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201103071137.47053.jbe@pengutronix.de>
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
Subject: Re: [RFC/PATCH v2] S3C24xx: NAND management changes to support
	booting from NAND
To: barebox@lists.infradead.org

Baruch Siach wrote:
> On Mon, Mar 07, 2011 at 10:18:00AM +0100, Juergen Beisert wrote:
> > Juergen Beisert wrote:
> > > This is revision two of my patch series to make the mini2440 booting
> > > from NAND. This seems somehow tricky: The mini2440 with a 64 MiB NAND
> > > works fine here, but the one with 128 MiB does currently boot only.
> > > In the first patch series where some errors in page address
> > > calculation, so they cannot work. This patch series might do it in a
> > > correct manner, but now only tested on 64 MiB and 128 MiB NAND. At
> > > least booting from NAND is now working also from 128 MiB. But the ECC
> > > handling fails, and I have no idea whats wrong now: Reading the
> > > environment fails with 'err: -74'...
> >
> > Here the main question:
> > - what is the difference in ECC handling in the S3C2440 CPU when using
> >   a "small page" or a "large page" NAND?
> >   "Small page" ECC seems to work, but "large page" ECC fails. Anyone here
> > with more experience with S3C2440/NAND? The Linux driver works well on
> > the large page NANDs, but not the barebox's one.
>
> I don't have experience with the S3C2440 NAND controller, but I'm working
> on a similar problem in the i.MX NAND controller Linux driver. NAND chips
> with 2k page size work fine, but 4k devices fail in the kernel. The cause
> for this is the wrong nand_ecclayout. In the i.MX case, the .eccpos table
> was too small for the larger ECC table of the 4k devices. This caused a
> corruption of the OOB data at the higher level of the NAND stack. Fixing
> this requires upgrade to a newer kernel (I currently use 2.6.36).
>
> As the nand_s3c2410 Barebox driver (like the kernel one) has only one
> nand_ecclayout struct for the 512 bytes page size, this may be the cause of
> your problem.
>
> I hope this helps.

\o/ The S3C2440 is using a 4 bytes ECC for 2048 sized page NANDs. After 
changing it, barebox is now able to write and read the environment.

Thanks,
jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

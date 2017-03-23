Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr65r-0004Kq-5c
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 17:00:17 +0000
Message-ID: <1490288388.29056.48.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Mar 2017 17:59:48 +0100
In-Reply-To: <15ffeb4b-92e9-bf89-57b2-dc73251bb90c@eurekelettronica.it>
References: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
 <1490282153.29056.39.camel@pengutronix.de>
 <15ffeb4b-92e9-bf89-57b2-dc73251bb90c@eurekelettronica.it>
Mime-Version: 1.0
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
Subject: Re: Information regarding iMX6 QuadPlus and iMX6 DualLite
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 23.03.2017, 17:56 +0100 schrieb gianluca:
> On 03/23/2017 04:15 PM, Lucas Stach wrote:
> > Hi,
> >
> > Am Donnerstag, den 23.03.2017, 16:04 +0100 schrieb gianluca:
> >> Hello,
> >> I was looking around to have a common Barebox binary to bootup two
> >> boards based on iMX6 SoC.
> >>
> >> The PCB are at 99.8% the same.
> >> PCB#0 has iMX6QP and a VDDCore of 1.38V (LDO enabled)
> >> PCB#1 has iMX6DL and a VDDCore of 1.32V (LDO enabled)
> >>
> >> I was wondering how other boards (like Nitrogen6x) does for booting.
> >>
> >> As soon as my boards have the same DDR Memory routing and types, the oly
> >> thing I can think is the different memory address space for DDR controller.
> >
> > Even if the external memory is the same, you need 2 different DRAM
> > setups. Quad and DualLite differ in IOMUX setup and maximum DRAM
> > frequency, the QuadPlus needs additional setup for the NoC.
> >
> 
> So you need two DRAM setup only? And no problem for NoC. Our boards will 
> have only QuadPlus and DualLite.

Do you mean the regular Quad model? The QuadPlus has the NoC.

> 
> >> In fact, the Nitrogen6x boards, differs from the #include of the ddr
> >> controller (one is for dual-lite, the other for quad).
> >
> > For the Nitrogen boards we just build multiple images for different
> > SoC/DRAM configurations. This is the easiest and most reliable way of
> > dealing with this issue.
> >
> 
> So you will have different device-tree .dts file? One for each SoC even 
> if the pinout are the same?
> 
> In this way, having two DRAM Setups, two IOMUX setup, different DRAM 
> Frequencies and two device-tree blobs, this leads me to a conclusion:
> 
> -- They are TWO DIFFERENT BOARDS (even the PCB and the pinouts are the same)

Well, welcome to the i.MX6 world. :)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

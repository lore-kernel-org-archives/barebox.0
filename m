Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr4TJ-0004nZ-QF
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 15:16:19 +0000
Message-ID: <1490282153.29056.39.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Mar 2017 16:15:53 +0100
In-Reply-To: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
References: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
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

Hi,

Am Donnerstag, den 23.03.2017, 16:04 +0100 schrieb gianluca:
> Hello,
> I was looking around to have a common Barebox binary to bootup two 
> boards based on iMX6 SoC.
> 
> The PCB are at 99.8% the same.
> PCB#0 has iMX6QP and a VDDCore of 1.38V (LDO enabled)
> PCB#1 has iMX6DL and a VDDCore of 1.32V (LDO enabled)
> 
> I was wondering how other boards (like Nitrogen6x) does for booting.
> 
> As soon as my boards have the same DDR Memory routing and types, the oly 
> thing I can think is the different memory address space for DDR controller.

Even if the external memory is the same, you need 2 different DRAM
setups. Quad and DualLite differ in IOMUX setup and maximum DRAM
frequency, the QuadPlus needs additional setup for the NoC.

> In fact, the Nitrogen6x boards, differs from the #include of the ddr 
> controller (one is for dual-lite, the other for quad).

For the Nitrogen boards we just build multiple images for different
SoC/DRAM configurations. This is the easiest and most reliable way of
dealing with this issue.

> 
> But I do not found any switch between choosing one Soc or another.
> Where is done the startup entry?

If you want a single binary, you need build a 2 stage barebox. First
stage needs to be loaded into SRAM, then you can look at which board you
are running and do the specific DRAM setup. Then you can load the bigger
2nd stage into DRAM, where you again need to look at the board you are
running at and select the correct devicetree for barebox to use.

> And the maximum clock speed??? Those SoC has different clock maximum 
> speed, so I think someone has to tell it to run @800 Mhz or @1Ghz. Is 
> this true?

Clock speeds are defined by the CPU OPPs in the devicetree and the fuse
settings of the SoC.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

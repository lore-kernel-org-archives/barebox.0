Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cr62n-0003u5-AM
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 16:57:04 +0000
References: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
 <1490282153.29056.39.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <15ffeb4b-92e9-bf89-57b2-dc73251bb90c@eurekelettronica.it>
Date: Thu, 23 Mar 2017 17:56:37 +0100
MIME-Version: 1.0
In-Reply-To: <1490282153.29056.39.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Information regarding iMX6 QuadPlus and iMX6 DualLite
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 03/23/2017 04:15 PM, Lucas Stach wrote:
> Hi,
>
> Am Donnerstag, den 23.03.2017, 16:04 +0100 schrieb gianluca:
>> Hello,
>> I was looking around to have a common Barebox binary to bootup two
>> boards based on iMX6 SoC.
>>
>> The PCB are at 99.8% the same.
>> PCB#0 has iMX6QP and a VDDCore of 1.38V (LDO enabled)
>> PCB#1 has iMX6DL and a VDDCore of 1.32V (LDO enabled)
>>
>> I was wondering how other boards (like Nitrogen6x) does for booting.
>>
>> As soon as my boards have the same DDR Memory routing and types, the oly
>> thing I can think is the different memory address space for DDR controller.
>
> Even if the external memory is the same, you need 2 different DRAM
> setups. Quad and DualLite differ in IOMUX setup and maximum DRAM
> frequency, the QuadPlus needs additional setup for the NoC.
>

So you need two DRAM setup only? And no problem for NoC. Our boards will 
have only QuadPlus and DualLite.

>> In fact, the Nitrogen6x boards, differs from the #include of the ddr
>> controller (one is for dual-lite, the other for quad).
>
> For the Nitrogen boards we just build multiple images for different
> SoC/DRAM configurations. This is the easiest and most reliable way of
> dealing with this issue.
>

So you will have different device-tree .dts file? One for each SoC even 
if the pinout are the same?

In this way, having two DRAM Setups, two IOMUX setup, different DRAM 
Frequencies and two device-tree blobs, this leads me to a conclusion:

-- They are TWO DIFFERENT BOARDS (even the PCB and the pinouts are the same)

Luckly the Linux kernel is the same, and even the rootfilesystem too.


>>
>> But I do not found any switch between choosing one Soc or another.
>> Where is done the startup entry?
>
> If you want a single binary, you need build a 2 stage barebox. First
> stage needs to be loaded into SRAM, then you can look at which board you
> are running and do the specific DRAM setup. Then you can load the bigger
> 2nd stage into DRAM, where you again need to look at the board you are
> running at and select the correct devicetree for barebox to use.
>
>> And the maximum clock speed??? Those SoC has different clock maximum
>> speed, so I think someone has to tell it to run @800 Mhz or @1Ghz. Is
>> this true?
>
> Clock speeds are defined by the CPU OPPs in the devicetree and the fuse
> settings of the SoC.
>

Ok, I will check that.

Thank you for now,

-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

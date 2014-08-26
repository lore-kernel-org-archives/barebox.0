Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XML9v-0008KP-AD
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 18:07:55 +0000
Received: by mail-wi0-f177.google.com with SMTP id ho1so4591365wib.10
 for <barebox@lists.infradead.org>; Tue, 26 Aug 2014 11:07:33 -0700 (PDT)
Message-ID: <53FCCCE1.5090305@gmail.com>
Date: Tue, 26 Aug 2014 20:07:29 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
 <53FC9530.7020009@gmail.com> <20140826161543.GB8789@arch.cereza>
In-Reply-To: <20140826161543.GB8789@arch.cereza>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 08/26/2014 06:15 PM, Ezequiel Garcia wrote:
> On 26 Aug 04:09 PM, Sebastian Hesselbarth wrote:
>> On 08/23/2014 10:19 PM, Ezequiel Garcia wrote:
>>> This commit adds NAND support for the controller present in Kirkwood SoCs.
>>
>> I just did a quick check through all public MVEBU datasheets. It looks
>> like Kirkwood is really the only SoC with this specific IP while Dove,
>> Armada 370, and XP have a different one.
>>
> 
> Indeed. Dove's NAND controller seems to be NFC (aka NFC v1), which is
> probably similar to the one in PXA3xx. Armada 370/375/380/XP documents
> it as NFC v2. Both versions are similar enough to use the same pxa3xx-nand
> driver.
> 
> I plan to push support for NFCv2 only in Barebox.

Ok, I'll add NFCv1 differences when I find a way to easily boot barebox
on d{2,3}plug. AFAIKT, both lack UART boot mode switches like Cubox has.

> Regarding the so-called Orion driver, grepping Linux it seems the IP is
> used in Kirkwood and Orion5x.

Ach, silly me, I didn't check Orion5x FS because it is not available
on marvell.com. If it is the same IP, nand_orion.c of course *is* the
correct name. Sorry for the noise.

>>> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
>>> ---
>>>  drivers/mtd/nand/Kconfig      |   7 ++
>>>  drivers/mtd/nand/Makefile     |   1 +
>>>  drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++++++++++
>>>  3 files changed, 170 insertions(+)
>>>  create mode 100644 drivers/mtd/nand/nand_orion.c
>>>
>>> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
>>> index 04fe3c8..ccf1f9c 100644
>>> --- a/drivers/mtd/nand/Kconfig
>>> +++ b/drivers/mtd/nand/Kconfig
>>> @@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
>>>  	  Support for NAND flash using GPMC. GPMC is a common memory
>>>  	  interface found on Texas Instrument's OMAP platforms
>>>
>>> +config NAND_ORION
>>> +	bool
>>> +	prompt "Orion NAND driver"
>>> +	depends on ARCH_MVEBU
>>
>> Therefore, we should limit this to ARCH_KIRKWOOD. Also, we could choose
>> to call the driver nand_kirkwood.c. OTOH, I am fine with Orion as long
>> as we find another good name for the other IP. Remember that Dove is
>> still kind-of-Orion.
>>
> 
> Sure, I'm fine with naming this nand-kirkwood.c and limit it to ARCH_KIRKWOOD
> to avoid confusion.

nand_orion.c is ok, but still we should limit it to ARCH_KIRKWOOD.

>> FWIW,
>>
>> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>>
>> I'll give it a try on Guruplug later, too.
>>
> 
> Good. Any test is very well-received (although this one is almost a
> copy-paste from Linux, given it's really simple).
> 

Yeah, probably.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

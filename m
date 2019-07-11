Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVyo-00047A-Mr
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 10:07:12 +0000
References: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
 <20190711064307.lbnenmog7qwbzu3a@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <7a2bd530-e2fb-ab56-9a9b-b47ce469a1ae@phytec.de>
Date: Thu, 11 Jul 2019 12:07:08 +0200
MIME-Version: 1.0
In-Reply-To: <20190711064307.lbnenmog7qwbzu3a@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v2 1/8] ARM: phytec-som-imx6: Add low cost variant for
 imx6dl phycore
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

> Hi Stefan,
> 
> On Wed, Jul 10, 2019 at 01:17:28PM +0200, Stefan Riedmueller wrote:
>>   
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phytec_phycore_som_nand, SZ_256M, true);
>> +PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_nand_256mb, imx6dl_phytec_phycore_som_lc_nand, SZ_256M, true);
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_1gib, imx6dl_phytec_phycore_som_nand, SZ_1G, true);
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phytec_phycore_som_emmc, SZ_1G, true);
>> +PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_emmc_1gib, imx6dl_phytec_phycore_som_lc_emmc, SZ_1G, true);
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec_phycore_som_nand, SZ_1G, true);
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phytec_phycore_som_nand, SZ_1G, true);
>>   PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_emmc, SZ_1G, true);
> 
> I am a bit worried that with this series the combinatoric explosion of
> the Phytec boards goes into another round. For some reason the lowcost
> NAND version has 256MiB SDRAM and the eMMC version has 1GiB SDRAM. I
> guess different combinations are not supported because you haven't
> produced them yet, but they might appear sooner or later. Even now it is
> really hard to pick a board from the shelf and find the right barebox
> binary for it. Do you have any ideas/plans to improve this?

I agree and I don't like the amount of images much either. We already had 
some discussions here about this but did not find a satisfying solution yet.

> 
> It seems all boards have EEPROMs. Wouldn't it be an option to store some
> information there?

The problem here is that the EEPROM is an option and there are SOMs out 
there which do not have it (people try to save money where ever they can). 
There are plans to make use of the EEPROM but they probably won't affect the 
i.MX 6 for reasons I just mentioned.

> 
> Another point is: Do we really need image variants for eMMC and NAND? In
> the end the drivers detect automatically if one or the other is equipped
> on the board.

There is also a problem here as both options share some pins. So pinmuxing 
would still be something to take care of.

> 
> Let's go crazy now. How about a QR code on the board with a link that
> describes which hardware (SoC variant, amount of memory, NAND/eMMC) I
> am looking at?

That would be very convenient and I will gladly pass this idea to the 
product management.

> 
> Anyway, applied, thanks. It would just be nice to see some improvements
> here.

Thanks
Stefan

> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

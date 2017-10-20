Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.iad3a.emailsrvr.com ([173.203.187.69])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e5WR6-0001GJ-Gr
 for barebox@lists.infradead.org; Fri, 20 Oct 2017 12:30:02 +0000
Received: from smtp25.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp25.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 0477825415
 for <barebox@lists.infradead.org>; Fri, 20 Oct 2017 08:29:34 -0400 (EDT)
Received: by smtp25.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id BBB6625410
 for <barebox@lists.infradead.org>; Fri, 20 Oct 2017 08:29:33 -0400 (EDT)
References: <3f726d4d-d6b8-e89b-805b-6a0ebfa5227a@mev.co.uk>
 <73sheetfcq.fsf@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <12eb4f70-71f2-ef6b-68d8-9c3ffd58a974@mev.co.uk>
Date: Fri, 20 Oct 2017 13:29:32 +0100
MIME-Version: 1.0
In-Reply-To: <73sheetfcq.fsf@pengutronix.de>
Content-Language: en-GB
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
Subject: Re: Terasic DE0 Nano SoC / SoCkit confusion
To: barebox@lists.infradead.org

On 20/10/17 09:04, Steffen Trumtrar wrote:
> 
> Hi!
> 
> Ian Abbott <abbotti@mev.co.uk> writes:
> 
>> Hi,
>>
>> I have a Terasic DE0-Nano-SoC Kit / Atlas-SoC Kit board:
>>
>> http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=205&No=941
>> https://rocketboards.org/foswiki/Documentation/AtlasSoCDevelopmentPlatform
>>
>> In the barebox menuconfig, if I select "Terasic DE0-NANO-SoC aka Atlas"
>> (MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) for the preloader configuration, the
>> preloader image boot fails at the SDRAM calibration stage.  I need to
>> select "Terasic SoCKit" (MACH_SOCFPGA_TERASIC_SOCKIT) instead, which
>> seems to work fine.  Indeed, when using the
>> "scripts/socfpga_import_preloader" script to import settings from
>> Terasic's FPGA handoff files for DE0-Nano-SoC, the results are a much
>> better match to barebox's "arch/arm/boards/terasic-sockit/" than they
>> are to "arch/arm/boards/terasic-de0-nano-soc/". I got the handoff files
>> from Terasic's CD-ROM zip files at
>> http://www.terasic.com/downloads/cd-rom/de0-nano-soc/ .
>> There are two CD-ROM zip files for different board revisions, but the
>> handoff files are all the same across both CD-ROM zip files.
>>
> 
> The problem with the handoff files is, that it is next to impossible to
> say anything about if they are right or wrong with just looking at them.
> According to f3b493750a304791b057eda246b473810aa8bf40 the handoff files
> somehow come from
> 
>     https://rocketboards.org/foswiki/Documentation/AtlasSoCDevelopmentPlatform
> 
>> I'm currently using "Terasic SoCKit" for the preloader and "Terasic
>> DE0-NANO-SoC aka Atlas" for the main barebox.
>>
> 
> If you have the board an can test which handoff files are correct and
> work on the hardware, I'd say: Send patches :)

At the moment, I'm treating it as a bit of a mystery.  I don't really 
want to update barebox's version of the terasic-de0-nano-soc files just 
yet because I've found out that they match the data in the equivalent 
u-boot files exactly (except that u-boot's 
board/terasic/de0-nano-soc/sdram_config.h includes some dummy settings 
for an "extratime1" register in the SDRAM controller).  I just 
configured u-boot with socfpga_de0_nano_soc_defconfig, built 
"u-boot-with-spl.sfp", dd'ed it to the SD card. It boots into u-boot 
fine, which only adds to the mystery!

> I can't verify if the current support works or not as I don't have
> access to the hardware.
> 
>> My other problem is that there are differences in the "compatible"
>> strings that Linux devicetrees use compared to barebox, which causes the
>> blspec loader to fail to load entries containing devicetree files with
>> different "compatible" strings for what should be the same board.
>>
>> For MACH_SOCFPGA_TERASIC_DE0_NANO_SOC:
>>
>>      barebox:
>>
>> 	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5",
>> "altr,socfpga";
>>
>>      (closest match in) Linux:
>>
>> 	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", "altr,socfpga";
>>
[snip]
>> Would the best fix for those be to replace the existing compatible
>> strings, or use a union between the current barebox and Linux strings?
> 
> Use the one from linux and fixup the board.c files in barebox. The
> barebox compatibles are there, because the upstream bindings didn't
> have board specific compatibles.

Which of the following options would you prefer for the dts files?

1. Linux only:
  	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", 
"altr,socfpga";

2. Linux listed before barebox:
	compatible = "terasic,de0-atlas", "terasic,de0-nano-soc", 
"altr,socfpga-cyclone5", "altr,socfpga";

3. Barebox listed before Linux:
	compatible = "terasic,de0-nano-soc", "terasic,de0-atlas", 
"altr,socfpga-cyclone5", "altr,socfpga";

Best regards,
Ian.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp101.iad3a.emailsrvr.com ([173.203.187.101])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4rZi-0002qD-MS
 for barebox@lists.infradead.org; Wed, 18 Oct 2017 16:52:13 +0000
Received: from smtp13.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp13.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C6A4C55C8
 for <barebox@lists.infradead.org>; Wed, 18 Oct 2017 12:51:45 -0400 (EDT)
Received: by smtp13.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id 75F2A5654
 for <barebox@lists.infradead.org>; Wed, 18 Oct 2017 12:51:45 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <3f726d4d-d6b8-e89b-805b-6a0ebfa5227a@mev.co.uk>
Date: Wed, 18 Oct 2017 17:51:44 +0100
MIME-Version: 1.0
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
Subject: Terasic DE0 Nano SoC / SoCkit confusion
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I have a Terasic DE0-Nano-SoC Kit / Atlas-SoC Kit board:

http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=205&No=941
https://rocketboards.org/foswiki/Documentation/AtlasSoCDevelopmentPlatform

In the barebox menuconfig, if I select "Terasic DE0-NANO-SoC aka Atlas" 
(MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) for the preloader configuration, the 
preloader image boot fails at the SDRAM calibration stage.  I need to 
select "Terasic SoCKit" (MACH_SOCFPGA_TERASIC_SOCKIT) instead, which 
seems to work fine.  Indeed, when using the 
"scripts/socfpga_import_preloader" script to import settings from 
Terasic's FPGA handoff files for DE0-Nano-SoC, the results are a much 
better match to barebox's "arch/arm/boards/terasic-sockit/" than they 
are to "arch/arm/boards/terasic-de0-nano-soc/". I got the handoff files 
from Terasic's CD-ROM zip files at
http://www.terasic.com/downloads/cd-rom/de0-nano-soc/ .
There are two CD-ROM zip files for different board revisions, but the 
handoff files are all the same across both CD-ROM zip files.

I'm currently using "Terasic SoCKit" for the preloader and "Terasic 
DE0-NANO-SoC aka Atlas" for the main barebox.

My other problem is that there are differences in the "compatible" 
strings that Linux devicetrees use compared to barebox, which causes the 
blspec loader to fail to load entries containing devicetree files with 
different "compatible" strings for what should be the same board.

For MACH_SOCFPGA_TERASIC_DE0_NANO_SOC:

    barebox:

	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5", 
"altr,socfpga";

    (closest match in) Linux:

	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", "altr,socfpga";

For MACH_SOCFPGA_TERASIC_SOCKIT:

     barebox:

	compatible = "terasic,sockit", "altr,socfpga";

     Linux:

         compatible = "terasic,socfpga-cyclone5-sockit", 
"altr,socfpga-cyclone5", "altr,socfpga";

For MACH_SOCFPGA_ALTERA_SOCDK:

     barebox:

	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";

     Linux:

	compatible = "altr,socfpga-cyclone5-socdk", "altr,socfpga-cyclone5", 
"altr,socfpga";


Would the best fix for those be to replace the existing compatible 
strings, or use a union between the current barebox and Linux strings?

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

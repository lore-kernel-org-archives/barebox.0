Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erP7i-000320-1i
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 14:23:56 +0000
Received: from vsmx003.vodafonemail.xion.oxcs.net (unknown [192.168.75.197])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id B9BE13E0593
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2018 14:23:35 +0000 (UTC)
Received: from null (app-45.app.xion.oxcs.net [10.10.1.45])
 by mta-7-out.mta.xion.oxcs.net (Postfix) with ESMTPA id A3F17300610
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2018 14:23:33 +0000 (UTC)
Date: Thu, 1 Mar 2018 15:23:33 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <377910125.70611.1519914213534@mail.vodafone.de>
MIME-Version: 1.0
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
Subject: problems with am335x_sdram_size()
To: barebox@lists.infradead.org

Hi,

working with the TI AM335x Evaluation Module I noticed that the function
am335x_sdram_size() always returns 0 instead of the computed sdram size.

I could trace back the problem to the fact that the function does its 
computation based on the value of the register CM_EMIF_SDRAM_CONFIG
(addr. 0x44e10110), but this register is not written to by the function
am33xx_config_sdram() and just returns its initial value (0).
The datasheet says CM_EMIF_SDRAM_CONFIG should have the same value as
AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (addr. 0x4c000008)

To conclude, to fix the problem with am335x_sdram_size() you can either
use AM33XX_EMIF4_0_REG(SDRAM_CONFIG) instead of CM_EMIF_SDRAM_CONFIG
in am335x_sdram_size()

 or

initialize CM_EMIF_SDRAM_CONFIG in am33xx_config_sdram() with the same value
as AM33XX_EMIF4_0_REG(SDRAM_CONFIG) (regs->sdram_config)

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

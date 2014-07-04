Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X33W6-0002bb-Ur
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 13:27:07 +0000
Date: Fri, 4 Jul 2014 15:26:35 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
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
Subject: Re: Problems with pyhBoard-Wega-AM335x
To: florian.frede@ma-info.de
Cc: barebox@lists.infradead.org

Hi Florian,

On Fri, Jul 04, 2014 at 12:12, Florian Wrede wrote:
> I like to update from barebox 2013.11 to barebox 2014.06.0 with the 
> phyBoard-Wega-AM335x. After reconfigure the barebox I get the error:
> 
>       LD images/start_am33xx_phytec_phycore_sram.pbl
>     arch/arm/boards/built-in-pbl.o: In function `pcm051_board_init':
>     :(.text.pcm051_board_init+0x94): undefined reference to
>     `__dtb_am335x_phytec_phycore_start'
>     make[2]: *** [images/start_am33xx_phytec_phycore_sram.pbl] Error 1
>     make[1]: *** [images] Error 2

I've had the same problem after updating my beaglebone project to a newer 
barebox version.

Could you please check your barebox configuration?
The new config item "Allow multiple boards to be selected" in "System 
Type"->"OMAP Features" needs to be selected. After that you should be able to select the "Phytec 
phyCORE pcm051" board.

A rebuild will create a file called "am335x-phytec-phycore-dtb.S" in the 
folder arch/arm/dts. This file contains the missing symbols.

Best regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

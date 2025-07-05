Delivery-date: Sat, 05 Jul 2025 13:58:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uY1Xi-00EJpP-1C
	for lore@lore.pengutronix.de;
	Sat, 05 Jul 2025 13:58:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uY1Xh-0006Fp-HJ
	for lore@pengutronix.de; Sat, 05 Jul 2025 13:58:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8nmvlhGKlSza/hdNG57KyCr4kmCnyfiJHDSNYGx4+wY=; b=AKJvVGRRveWnyKE/a4RZCbmh11
	ZRELNJ1Xw+Mt7THqrffPkT6CoXQpeUnAndbJ6MSpGnHbvSGBeIqgfuA3WCs4oLfOWoDhF+pMIAjg8
	Brjnp3bKFpXSRLx4QmqkS2+vPPL/eHPDKtxB49Qkz/73ALVyue29DyJxfaX+eex6qUlRjN/QJdGQA
	Z/PetaRe+YiSSGzcYq3r/QHoGmfc4uzwd5j8HLD2oY0oWOchOzAqZz/zK6ywldw9+hDFm/j6Rl+Fu
	CQD7h1GT/05RL8NGjCUxq7JwecGV/7iRE4KfZnpbKDQilV3WcIuOAu2PJy6lD49JeQhaVSa3MaObP
	ada2W0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY1Wy-0000000GT7H-1dml;
	Sat, 05 Jul 2025 11:58:08 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY1Wv-0000000GT6w-0qys
	for barebox@lists.infradead.org;
	Sat, 05 Jul 2025 11:58:07 +0000
Received: from Precision-T3610 ([84.147.167.150]) by mrelayeu.kundenserver.de
 (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1MeTwY-1v8SoI48ZA-00oJUZ; Sat, 05 Jul 2025 13:58:03 +0200
Date: Sat, 5 Jul 2025 13:57:53 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Message-ID: <aGkTQRkhI7HZGOyb@Precision-T3610>
References: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
 <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de>
 <aGgRkmkiFhNGq+Qg@Precision-T3610>
 <1dd8b780-1150-421a-932c-081aa31ae775@trabucayre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1dd8b780-1150-421a-932c-081aa31ae775@trabucayre.com>
X-Provags-ID: V03:K1:1IUT3zxnqXQJyPzGHHUWnW76Fm3q+/X5XE/F2Wz6KYKL52VmnrF
 tAjoBBPUsxY28wJYQolrnJgkKBnI8Tjbx9TVonCo+tvWL5alnkEz9FcdGv/XtZiTvE25UMm
 VljdRAsZ5ok1FSM9JGBSwNyAjTy8O9Xl36ypTxLAa3h/pbf/74oXbjtGD32GCxxeEcVBFmq
 6RguhGYkdsoUOpatOAryQ==
UI-OutboundReport: notjunk:1;M01:P0:1wiXyrXxGdE=;FNo/Bjc6Z/wKpehURqnLXxQa2ob
 3lRHFitkhEjh8c+OfvpQZP6B+gkRO6w+wANghAx4c5xjTkqcCzhsaCuY3nefakeeqS66h7dsg
 EN2SLh0LeEHKbzZXmbVK6Enw0s7/WydRM7UEPDdwu4NceLuHruf23V0SP2YEF7aTUcKBlq8wu
 TUWtJuGQYUXcZxA+k0AUW6SLEeux8eB0UXbIyxOC2b3LnWoRb990qlQcIJQFtwcUvNzk6Yzlm
 yFQJ1PcPdYQomLogVk5kX+V/TYZO05JwARyFrQKBqvBE+EZrft52EM5ybHAV4031gfGAcHhpd
 xmoQXZXT2yvlYqOyBhK3HHt8JlmDDY7ww/jApLJniq/2pBi5VAoxs0ihTAXaVErif6A2xUMVr
 WaVG5UPFYY1278l4kEEWfYES2uOnGrnqS2EdaALqO6JXdBBA+i3OZnp12WA/EJQLolK9p7VYz
 F42xE7YLSPLwqoCqbh+Pe1wmYcUM8jg/lC2eWUpbf4gdfgO6+qpGZgY5DMRZlf9VK9fj5+6k5
 ub30qrCJKiWVNNVnCdfAcsqk2K8IXOW4/wjXiMI4r/ZBfA+yiTVGnRYRzjXBBtUq0Es5xKuG1
 3x4fxYCxZ6AsbVEw+4M8Gs4g55wucM4jANuYal2wiG1qKO5yvAObXxWmnfa65WrPX1MQILm2o
 cjdDm0xYYsqY2Tv7AqhTUZEjfqi9VIVWm7wekf4SHOvGn/Tpe6tYTl+fCt+/4LPZ+eOP7KG1w
 oQpBFdjZcgaVgRN8IIE6N7qF586ci1CbzKBKP+VzQVaEFBb9YZxd90QX08cDBxZ8LscJnLeqO
 imsJSiliInRs48EkR9V5+3endiAlQ5BDrLgK1OfrkCGUd3s4hkoPEDkIFvkpu5szGlTHdY8RU
 jtvs1T1q37/jaHfe/RIvQACCeCDHdIIknPY2vCFY6MOzFZ+u8di3Gc7ZriXCDpQ60aPBCC0OW
 93M4KHIsc6zk3oYRPNUoOu7aJ4fDheTEunjOPi3h4/GF/uKOX7yhgjENZ7qjz258nfm0ynp54
 tymm9GYYkspjDxQlhe7J9mC1tuXZcP4+9DJL4nDLb2GREuerQvGfIFfYxeSds2zPeRmECMxr3
 mGOiW0LEuUGkOyMdfl6+rpS+AJsF5VlJML7ymnOM7W7mhYJ+cga4rz1dYDiBaYNd7j5TSVuP+
 HkKXw3MrpTyAOTLNjpCRUbkfj/BNMJd+IHNaascTex28QOmeVUKk0FJVBpg/TXGXvJRwtP8B+
 /BNJVC7RT8HySa4TVl6jc0IuV/2xhCa5dXC4lG+nIuxqvmcVI+4qU15AzdyPczGS4rrsktkNR
 mbS7T7rOVGHfsuFFYxWJD8TNWVesjiZlNreF8yV6hlTO7zdvnbi4FXmQ1PF64iPIf4HPnZuRh
 7bjABa62ZT3NfDpvkG+e+ir/bv9AY0+13habrTqTQODCFj+Mnvq17PkWVk0cenAb61jK3kiHR
 VNQUvMUpfjKRis7PAvAuw/Wp60Hm4XahgSm4DhN7xnNtbj8oIDWeKtCVj4Etn7V1Gxc9D17dM
 wTb5soKrzW5l4pb7o4/oxIFCVoB4sxupLnppZX2c+HhLlMWyAk5YQvDf4AwZhK216y8dhXiCY
 fvAeV7d6PJ5qq6nkG0nBFrkK3XtLvYO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_045805_542980_4D93B308 
X-CRM114-Status: GOOD (  41.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Am Sat, Jul 05, 2025 at 09:01:38AM +0200 schrieb Gwenhael Goavec-Merou:
> Hi,
> Thanks for informations: after deleting everything but the last two lines,
> barebox starts has expected.

Sounds good. So, you are getting to barebox 3 second countdown and you
can activate the hush shell, right?

> Now I have and error with SDCard but maybe related to lines removes or
> something similar.

I also got some errors with the SD-Cards on my Digilent Cora Z7 Board. 

One error was that the Chip Detect and Write Protect pins where not set
correctly in the pinmux. I had to add the following line to lowlevel.c
to resolve this:

	/* Set SD Detect and Write Protect Pin to 47 */
	writel(0x002f002f, 0xF8000830);

My board had a micro-SD card slot with no Write Protect pin. That is why
I used MIO47 for both CD and WP. On your board, you have a Write protect
pin available, so you can set the register to 0x002f002e.

The second error I faced was, that the clock for the SD card IP was set
too low. By increasing it to 250 MHz, it worked properly.

The clock divider selection is done over the following register also in
lowlevel.c:

	writel(0x00000401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_SDIO_CLK_CTRL);

Maybe tinkering with this value also helps you to boot from the SD Card.

If you are getting it working, maybe submitting a patch with your
changes would be a good idea to make it easier for others to use barebox
with the Zedboard.

Best regards,
Johannes

> 
> Thanks!
> 
> Gwenhael
> 
> Le 04/07/2025 à 7:38 PM, Johannes Roith a écrit :
> > Hi Gwenhael, hi Ahmad
> > 
> > Am Fri, Jul 04, 2025 at 04:56:01PM +0200 schrieb Ahmad Fatoum:
> > > Hi Gwenhael,
> > > 
> > > On 7/3/25 09:18, Gwenhael Goavec-Merou wrote:
> > > > Dear all,
> > > > 
> > > > I'm trying to uses my zedboard with barebox but can't be able to boot this.
> > > > 
> > > > According to mails found in this mailing list I have done this sequence:
> > > > 
> > > > export ARCH=arm
> > > > export CROSS_COMPILE=$SOMEWHERE/arm-buildroot-linux-gnueabihf-
> > > > 
> > > > make zynq_defconfig
> > > > make -j$(nproc)
> > > 
> > > That looks correct IMO.
> > > 
> > > > And copied in the first SDCard FAT partition:
> > > > - images/barebox-avnet-zedboard.img as BOOT.bin
> > > > - barebox.bin
> > > 
> > > Which binary is barebox.bin?
> > 
> > The first one is the correct one. Just copy the images/barebox-avnet-zedboard.img
> > with the name BOOT.bin to an SD-Card whose first partition is FAT32.
> > > 
> > > > But I have nothing displayed through serial port.
> > > 
> > > Two things come to mind:
> > > 
> > > - The Image is 184K. Does the Zynq enforce a maximum limit on the BOOT.BIN?
> > 
> > Yes, there is a limitation for the size of the First Stage Bootloader
> > (FSBL) as Xilinx calls it, which is the available SRAM size in the ZYNQ
> > 7000 (192 kBytes). Currently Barebox PBL and Barebox Proper are combined
> > to one image (images/barebox-avnet-zedboard.img) but you will get an
> > error in the build process, if your image exceeds this size.
> > > 
> > > - Does DEBUG_LL produce any output? For details on how to configure
> > > DEBUG_LL, see the troubleshooting guide I just Cc'd you on.
> > > 
> > > > Are there somewhere details on how to prepare SD Card for a zynq board?
> > > 
> > > I haven't done work with the Zynq 7000 so far, but Lucas and Johannes
> > > did. I Cc'd them as they may be able to give some tips for troubleshooting.
> > 
> > I would also take a look at this message on the mailing list:
> > 
> > https://lore.barebox.org/barebox/DB7PR02MB43323CD77E0507E560475BCAABF00@DB7PR02MB4332.eurprd02.prod.outlook.com/
> > 
> > Here, the content of the file
> > arch/arm/boards/avnet-zedboard/zedboard.zynqcfg caused a boot error for
> > barebox. With my Digilent Cora Z7 board, I also had to modify the file
> > by deleting everything but the last line, to get barebox booting. Have
> > you already tried this?
> > 
> > > 
> > > Cheers,
> > > Ahmad
> > > 
> > > > 
> > > > Thanks
> > > > 
> > > > Gwenhael
> > > > 
> > > > 
> > > 
> > > -- 
> > > Pengutronix e.K.                  |                             |
> > > Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> > > 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> > > Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> > > 
> > 
> > Best regards,
> > Johannes
> 



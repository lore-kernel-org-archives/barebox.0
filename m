Delivery-date: Fri, 16 May 2025 21:04:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG0M7-006GoG-0t
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 21:04:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG0M6-0004eA-JO
	for lore@pengutronix.de; Fri, 16 May 2025 21:04:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wdHO9tXQHsIPL7yu7EeoidHaQ1FZh2HGsBOtgAt8Oqc=; b=D9ux5pauxm/3tDQFHhTLS6u2dZ
	wvemtRveOh6vLLAD5z9EWwIdO0oBXsen1agl7gC47H6J2GJBg3iW3Ds25PmuQ1hWa8Sxc6Fvg/tuP
	dIt1y6Mu52Vlv0135EgynlzTdMbMvti2pb5wTiFVvyefZKITy1uJIoshd312onViIo4+66Z3RTkiD
	0k7rEX7aIpigpJQyPJDiVgOewUvFYgM57LbwF3aSGEq6SxOn5FwSy+TSFuUidVc4Us31z1v+78JwR
	Eoli0M+kXhVZ/i9zktrsbhQ4dLyX/ysk5h0I2yNDrAyQ7YUjh4n/4I5T80t0iVRwoA7Q2suVWuCK2
	1pFsjiJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0LV-00000004PEP-42oF;
	Fri, 16 May 2025 19:03:49 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0LS-00000004PD3-3Wa5
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 19:03:48 +0000
Received: from Precision-T3610 ([93.239.129.162]) by mrelayeu.kundenserver.de
 (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MlwBf-1ufTk30VH9-00agUb; Fri, 16 May 2025 21:03:44 +0200
Date: Fri, 16 May 2025 21:03:28 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <aCeMAO9MFhGJBStt@Precision-T3610>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
X-Provags-ID: V03:K1:73WYDtzhXQZzkaZI9SoqM9KHG3gzUnUfmj4BQE3AeNUYfPbOT0V
 NT+PO+v+8nxNe05QQEVAIJKmfpg4Lg9LD+SFk4SsAtdD48MtrDxjiKPgS7vb9Nbvsusi3Xl
 sxiNT45CDdBQDP+WRg72MekMGiRrLSeyBeRGdOnSLDWivZiA8EDwQY8sQmK+ZU1KMTdFVFm
 GnX5NUgVTurb0/Q3O6Ogg==
UI-OutboundReport: notjunk:1;M01:P0:rkNFcxkgyCE=;VI3CHBufzQYsAL9NFuS0bJO6KHO
 n2bw1G8KwyYerfpvmuB6OcfNAOH07xXG7CWfzWVnsnWeOP1S7SvC/CYLL2rtGI2lFxPNQh097
 o04ZcreLcZy1eVzNsSkp/J5TNYMnAf2wpApu/NLXcZNTrhkeVHMrdzsV8QDgKEoLJpFryC266
 qUcw+GIlMxL1zPW03ITBxXHYlLdygZKvAw6mCSkzftJVpvo+NBQL5SCAgpWxrHcHh8HN0+iBz
 I346DS0zkCbS1sjWtCFvirLsYGDOLKrsXMPC2idPbRKVoIt368Vx2UyvEtIqrKNCT8ZxGnlA2
 cTeIrBmmR9CkI1iitvZpSVAZxHon5V0t2AUZ8eLFgjqQP9WfCWKRzQAVDGiNl7vE7/Vqx0iTV
 ljbq0cC20KTwL0WhPGKE7GJ9Jk3xD0GE5MrqMw1xmOeWkiPV/nTADmMybK+uU7KlQg3S/KaZ+
 KBF4y65VOLfbjzxGYF3i6/h+B1GP51nkfNsv5NfztxIKi0wBi7+RiWDw4jzF+HiHkqkcs+Ahi
 MjeYibDnjQyslewMvgnmnOQGbf6qZEnyDw3IvtXBWlr4jqj0z6qj8UJ/eBKipGNKhLPr8YQdb
 8zeA56mNPYZvamtS3ao06FHX4FYn3DK5kfdO/mK8J78uEpIQM1kLtl2lJIVRb3RYwBFWsg114
 l7aCX7jVm0d1nxNnLUKGLxdzGLVSMZpTUxkm3zlB6lIXvuhobCkrZDlAyYun+0cPrWwAwNcA2
 blRd2o70q20R7jBkxj5gkXIT5l8SBuvtAwLnF5wmpthNHQslwlvZNKhyBFXpAAEqIAFgT8/ci
 WbRKEAuICpbTgUe1sCy0ez57K2PisKLY/NBe5t112lp+mgsZnQSTmBzwyTDXnz8xuJOzigpWH
 5lsdB6o0yZIRpzpUOQy3y/tXpOnaGFBczcaYoYkfjqd8DR6aLEHzm/M7VCO0FzO/bwNIqzT+y
 MVhZhjMXQD6NIi+OjpHrYnEo9fURtdkUSIAJA7VaU3JuRTl/17Tqdh4tu5jaUdn0wq5p98I68
 y7uuifbP4RH6N2fKPaztM2HesxpFQw9Tir5JPHzhOyFHhKvWzEskRvU37N+4F2Wq84jZPQ85i
 23ToEv8whUPxP46jMuE45qBybSNcBsa80sOu9ycgOYd1geyNnQToh0htT8EQSJoOY4Ic/W5OX
 VhGFrS9o5G3z4iF/RvzqZXbweI1ddd1YrUWWUfGoWRH2RYzGZtoxLNLIS4j7vQR5UcJHV20Gl
 a3eQYPcFTie2hepCOnIJdIan5OERazYG5Pc2RFLHMmUjWXc4wVbKDhAlliLZOrQ/+dPwOMNuB
 ra6q2UFurcZNkIto1wtkcFIldMHAutmda5FBNX+5wsluEh407TXQ8qKhpemVmV8MoRAHgIDnU
 OVarae+fxB5ofP8tLa2MCpC3oTzrrPmb8N7k5yFuiGQHDylrgKvOeMBk5f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_120347_180828_3FED8098 
X-CRM114-Status: GOOD (  34.62  )
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Mon, Mar 23, 2020 at 03:18:22PM +0000 schrieb Michael Graichen:
Hi Michael, hi Lucas,
> 
> ________________________________________
> Von: Lucas Stach <l.stach@pengutronix.de>
> Gesendet: Donnerstag, 19. März 2020 11:53
> An: Michael Graichen; barebox@lists.infradead.org
> Betreff: Re: Barebox for Zedboard
> 
> Hi Michael,
> 
> Am Donnerstag, den 19.03.2020, 10:38 +0000 schrieb Michael Graichen:
> > Hey,
> >
> > i have just started working on a Zedboard (http://zedboard.org/product/zedboard) with an Xilinx Zynq XC7Z020 SOC.
> > I have seen that Barebox has an defconfig for the zynq
> > so i tried
> >
> > export ARCH=arm
> > export CROSS_COMPILE=arm-cortexa9-linux-gnueabihf-
> > export PATH=/opt/OSELAS.Toolchain/arm-cortexa9-linux-gnueabihf/bin:$PATH
> > make zynq_defconfig
> > make -j`nproc`
> >
> > which compiles me the image
> >
> > barebox-flash-image -> images/barebox-avnet-zedboard.img
> >
> > when using u-boot i had to generate a BOOT.bin file with Xilinx's ./bootgen tool
> >
> > dev$ bootgen -image bootimage.bif -o i BOOT.bin
> >
> > and .bif file was
> >
> > dev$ cat bootimage.bif
> > //arch = zynq; split = false; format = BIN
> > the_ROM_image:
> > {
> >      [bootloader]FSBL.elf
> >      design_1_wrapper.bit
> >      u-boot.elf
> > }
> >
> >
> > that i copied onto an SD-Card and powed up the board.
> >
> > But since i want to use Barebox how do i produce the BOOT.bin file?
> 
> The barebox-avnet-zedboard.img already is the BOOT.bin image, just copy
> it to the SD card with this name and you are done.
> 
> > and how is the programming of the FPGA Logic done?

Michael, did you implement something here? In the latest barebox version
I can't find anything related to FPGA loading. But if you have developed
something and you could share it, it would be interesting for me and 
highly appreciated.

> 
> Barebox currently doesn't support loading the FPGA bitstream. We are
> still lacking a driver for the DevC PCAP interface. Zynq support in
> Barebox is only a spare time (and thus toy) project at this time. It
> works okay for booting Linux on the PS part of the system, but almost
> fully lacks support for the PL part.

I would like to try bringing PL support to barebox, but I need a bit of
guidance. In the Linux kernel there are drivers available for the ZYNQ
FPGA and there is the FPGA manager. As barebox "reuses" Linux drivers
maybe that would be the way to go.

I would love to have one barebox command available to load a bitstream
to the PL. For doing so I would need to implement a fpgamgr-lib where I
provide the interfaces used by the Linux FPGA drivers. The drivers also
need to be modified a bit. Then finally I can implement the command.

Am I missing something? Do you have any advice or sample code I could
take a look at or use for orientation? Any comments are welcome.

The big advantage of using such an approach would be support for similar
devices (e.g. the UltraScale+ ZYNQMP devices) could be added easily by
porting the Linux drivers to barebox.

> 
> That said I wouldn't mind helping with getting the missing bits added
> by reviewing/testing patches. :)
> 
> Regards,
> Lucas
> 
> Hey Lucas, 
> 
> "That said I wouldn't mind helping with getting the missing bits added
> by reviewing/testing patches. :)"
> 
> Did you made any attempts to do this?
> 
> As far as I can see there are basicly two ways.  
> The "Xilinx-Way" by packing everything in Boot.bin.
> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image
> and the "Linux-Way"
> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841645/Solution+Zynq+PL+Programming+With+FPGA+Manager
> using the FPGA manager 
> https://elixir.bootlin.com/linux/latest/source/drivers/fpga/zynq-fpga.c
> 
> Best regards
> Michael
> 
> 
>  
> 
> 
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Best regards,
Johannes



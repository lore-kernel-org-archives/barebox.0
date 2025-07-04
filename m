Delivery-date: Fri, 04 Jul 2025 19:40:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXkOR-00E40p-1K
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 19:40:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXkOQ-0004mk-Qn
	for lore@pengutronix.de; Fri, 04 Jul 2025 19:40:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPM+FTeHdcvrl8grRieLBbQCl+zN2vmo+skFZGEKlYs=; b=pEut1K5pSst+rJaSeVtDBX+MJr
	IWMOIDjQFaj/YjrlOxjP/LkrYwyWpGzdI3ITD9ofRK2QHQgUf6uIMKeCnkS0wASM0/cKt39g19Zj1
	6nPErqpgmg2bv+BOoRhpwSRh/q1vl+/GkaaKviLzmOzSUtsHgd5zREDZ7Difnm/36ei74EySuObls
	9SsOuhFijx89w7cRIduGlOJIcYvJ/zwVH465gSvqYt8lKjioF4QDULalw4WaJvNo+L3RqgBXjMeqd
	Xg9tyZTJQPqD6+Ua5p7v0+MJu9LZEq3+JoxHrpgZDqyRyrWl6+rXh3+rREMu+MhPmcBSPrX36nEuD
	G39vj4BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXkNn-0000000F7FW-2aS1;
	Fri, 04 Jul 2025 17:39:31 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXkMu-0000000F72X-44k7
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 17:38:38 +0000
Received: from Precision-T3610 ([84.147.167.150]) by mrelayeu.kundenserver.de
 (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MPGBR-1uJmoX41hF-00Ho9E; Fri, 04 Jul 2025 19:38:33 +0200
Date: Fri, 4 Jul 2025 19:38:26 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aGgRkmkiFhNGq+Qg@Precision-T3610>
References: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
 <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de>
X-Provags-ID: V03:K1:q2pZvvstK91/8gcPGEKassIvkKcTNzy5FDVSXuwwfTZzfnNSTvU
 FD2rSbTh+RChCM1ciLmczE0POUJgMPqCaaTVWHSSVTtA6kfpIq6poi8JkwhCoMODSMcR9kN
 6XM3/5DRaMuRvYH3ExZlbXRWMX5FOE1yU5824xdRSCNVQcfbj22pcqfO4tc3Lz7tY09Zqn9
 IlxwjfXBpTPeB8qvg4rMg==
UI-OutboundReport: notjunk:1;M01:P0:aquXIQ92Rp4=;hBYloP9su2TT/i5jr2Gn7DSHrUv
 PuoNm/bhwZfmfG7nBaT1ndl/Jd+H2v+tH4Ep6X4YAv4d/X3wKSaLMatw1Lj9r7BmMRAxKvOEB
 0cUW6XSSAjWGD5JohoLIZ+Wfo1S/1ushVwYBTHOjuTg8WnGbRauixThOSN0G5UQL5hXcL1frh
 ClW37wxL6qxrDbKHNttktKpn03btO88ptN7GcZSgSCXhYblo/qTxCGEYmI5S4B6wNtnDrZRgp
 tC0mZsctQs1worInL3BIszF93dDiDwPVMLiIoGFVqZciejBg3l6LPF8sLNbxGXsinwitSPFOk
 7GYq86V3Deq491jOAuJTRxNrAocnQdkbvBPizyux0YRiG7DfogYc6HgfthtYyyBIu8yaS0oYK
 UH3Ha71hA4Qsp4iyDkPGwX0dp9s/0QG3k6mIHEVfmczdd1JFm+XpPs70mknIRGmccn3v+LNAf
 SINxPUW8qfm1pZcfmxTj3PFrYCuhCo+sFha913/MjJuWkpQDCnwoR0exPBmYjznXmudCmDTM7
 XK46wiDVDamiIALBiRE8nTJQwR7TVyumF56LI+P5EI6/YpXjFEyf5DwLHHtfvuGIuokZWa+5S
 DMkuLT0Bz93SCOciLdoUG+WEUkUqpBjBHirudOT0LZDXFyWfgm+MM8d7+pektsBk+SRc7Fqoo
 qxIR6QAyFI+vutc5PA3NwerHoA6MaPcBlc9Uiyo5ekzrYAPpTqlFErGjkwCG3/Qaqk2RBTbef
 OdAIswljuRDdinPF19t9bbEyzL384sUX2rmbvZKqxXUSRtUrMPHNe3jeb5R4j+4BZK3N86G28
 UIPJgFY1p+uxYM4tzRvyfZNLA7Vh3Gyto0lPhuQ2hoMkkgKfXlPlFFogbEl+tqog1G3hq43Mz
 AU6tfKrqO5PFx2bZ/VKtyVZnbVFRteGrAaDhBar0MRAvfBffUpPthwgTQoZHWHx317Tv6eTv/
 VyR9o2C6rndigj8myV3G0Iw5Y/h3fCA0UTe2CZdDysT1jf9tbv08/Z+NF6eP26SFOX7OlmseM
 psm5foJ4cNMA3acDGEW8A6zivY8TG+veoFX3B5v4J++c176Hkwq+fS/bi/fY9aeXE5wFd6JX0
 sntx6p1zsTVTybwWbAxHfInkgTBLqjdtZP3FjGM9uX8e3Remf1GDAdCTBb8+B3Atu1U5N8C4a
 PrpskiFYrcKVEeb42zYU8/2aeOB3yzFxQlfKP5nw/Qn2wb6CnkjNuz2eW3XMPYlq9+o6vlG9V
 3il+UFxXqzr8uj2790VhFn1+ZjBfhTvWZCYzniFu4csS2pZtIVQT+eSIngL4FA8gNQK5acy+M
 ueEthXX6k0wrIs4FtNmpUX1EcWpPtW4K/ejtDKqdfAeudYUMhS+UjGtkrrT5ePQSmr0238hr2
 3DC4nCmgW447CQl5Qd8dqh59QggIhL4UdVEHMPF/4SQP/SucvLNDb/irt65rBH/VjdkW66RZ2
 8yGie04a/suFF0Pny4FVpmbXUPWs7T+QBIx7dxKm02fFq52acZ8frPqJwOMAG9w6Qd4znVU2I
 Mq02AS+yg+gVcUKaXOSSMxaSqvvsEXlPQZFofAFU8+qYxrvVFCAJ1FlhCNRkGA1KUhgWOwGer
 QKZyEo6t4E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_103837_299638_8708C865 
X-CRM114-Status: GOOD (  25.24  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Gwenhael, hi Ahmad

Am Fri, Jul 04, 2025 at 04:56:01PM +0200 schrieb Ahmad Fatoum:
> Hi Gwenhael,
> 
> On 7/3/25 09:18, Gwenhael Goavec-Merou wrote:
> > Dear all,
> > 
> > I'm trying to uses my zedboard with barebox but can't be able to boot this.
> > 
> > According to mails found in this mailing list I have done this sequence:
> > 
> > export ARCH=arm
> > export CROSS_COMPILE=$SOMEWHERE/arm-buildroot-linux-gnueabihf-
> > 
> > make zynq_defconfig
> > make -j$(nproc)
> 
> That looks correct IMO.
> 
> > And copied in the first SDCard FAT partition:
> > - images/barebox-avnet-zedboard.img as BOOT.bin
> > - barebox.bin
> 
> Which binary is barebox.bin?

The first one is the correct one. Just copy the images/barebox-avnet-zedboard.img
with the name BOOT.bin to an SD-Card whose first partition is FAT32.
> 
> > But I have nothing displayed through serial port.
> 
> Two things come to mind:
> 
> - The Image is 184K. Does the Zynq enforce a maximum limit on the BOOT.BIN?

Yes, there is a limitation for the size of the First Stage Bootloader
(FSBL) as Xilinx calls it, which is the available SRAM size in the ZYNQ
7000 (192 kBytes). Currently Barebox PBL and Barebox Proper are combined
to one image (images/barebox-avnet-zedboard.img) but you will get an
error in the build process, if your image exceeds this size.
> 
> - Does DEBUG_LL produce any output? For details on how to configure
> DEBUG_LL, see the troubleshooting guide I just Cc'd you on.
> 
> > Are there somewhere details on how to prepare SD Card for a zynq board?
> 
> I haven't done work with the Zynq 7000 so far, but Lucas and Johannes
> did. I Cc'd them as they may be able to give some tips for troubleshooting.

I would also take a look at this message on the mailing list:

https://lore.barebox.org/barebox/DB7PR02MB43323CD77E0507E560475BCAABF00@DB7PR02MB4332.eurprd02.prod.outlook.com/

Here, the content of the file
arch/arm/boards/avnet-zedboard/zedboard.zynqcfg caused a boot error for
barebox. With my Digilent Cora Z7 board, I also had to modify the file
by deleting everything but the last line, to get barebox booting. Have
you already tried this?

> 
> Cheers,
> Ahmad
> 
> > 
> > Thanks
> > 
> > Gwenhael
> > 
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

Best regards,
Johannes



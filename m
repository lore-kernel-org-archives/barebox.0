Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx3.wp.pl ([212.77.101.7])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlI4K-00067b-4a
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 11:44:13 +0000
Received: from out.poczta.wp.pl ([212.77.101.240])
 (envelope-sender <jurekgabpl@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with SMTP
 for <barebox@lists.infradead.org>; 19 Dec 2012 12:44:06 +0100
Date: Wed, 19 Dec 2012 12:44:06 +0100
From: "Jerzy Grzegorek" <jurekgabpl@wp.pl>
Message-ID: <50d1a8869abc04.36394132@wp.pl>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7935264995693862372=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox under qemu for beagleboard
To: barebox@lists.infradead.org

--===============7935264995693862372==
Content-Type: text/html; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
Content-Disposition: inline

<style>blockquote {padding-left: 1ex; margin: 0px 0px 0px 0.8ex; border-left: #cccccc 1px solid;} p {margin: 0px;padding: 0px;} </style>
<p>Hi,<br><br></p><p>I was trying to run barebox-2012.12.1 under linaro-qemu 2012.12, for beagleboard.<br></p><p>I build MLO (omap3530_beagle_xload_defconfig) and barebox-flash-image (omap3530_beagle_defconfig).</p><p> I prepared two partitions sd image - beagle.sd.img (first partition FAT : MLO, barebox.bin, barebox-flash-image, zImage;&nbsp; second partition EXT3 : rootfs).<br></p><p>I run linaro-qemu</p><p>qemu-system-arm -M beagle -m 256M -nographic -sd beagle.sd.img<br></p><p>and I 
got<br></p><p><br></p><p>barebox 2012.12.1 #1 Wed Dec 19 08:35:21 CET 2012<br><br><br>Board: Texas Instrument's Beagle<br>NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba ( ), page size: 2048, OOB size: 64<br>omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0<br>mci mci0: registered disk0<br>malloc space: 0x87bfff10 -&gt; 0x87ffff0f (size&nbsp; 4 MB)<br>stack space:&nbsp; 0x4020f000 -&gt; 0x4020fc00 (size&nbsp; 3 kB)<br>unknown boot source. Fall back to nand<br>booting from NAND<br>failed to 
get image size<br>booting failed<br><br></p><p>next qemu freezes.<br></p><p><br></p><p>Any idea?<br></p><p>Thanks,<br></p><p><br></p><p>Jurek<br></p><br />




--===============7935264995693862372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7935264995693862372==--

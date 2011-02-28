Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PtyaY-0007jF-0K
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 08:36:18 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 28 Feb 2011 09:36:14 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D51@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: partitions
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I'm not that familiar with partitions in Barebox. On my i.MX27 board, I now have :

barebox:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----imx_spi1
|----mc137830 (pmic)
|----mem2 (ram0)
|----imx_nand0
|----nand0 (nand0, nand_oob0, self_raw, env_raw, nand0.barebox, nand0.bareboxenv, nand0.kernel, nand0.root)
|----fec_imx0
|----miidev0 (phy0)
|----eth0

drivers:
imx_serial
     ramfs
     devfs
   fec_imx
    miidev
  imx_nand
 cfi_flash
   imx_spi
     imxfb
   mc13783
       mem
barebox:/

and :

barebox:/ ls -l /dev
cr-------- 4294967295 zero
crw-------       6125 defaultenv
crw------- 4294967295 mem
crw-------        256 pmic
crw-------  134217728 ram0
crw-------  268435456 nand0
cr--------    8388608 nand_oob0
crw-------         32 phy0
crw-------     262144 self_raw
crw-------     262144 self0
crw-------     131072 env_raw
crw-------     131072 env0
crw-------     262144 nand0.barebox
crw-------     131072 nand0.bareboxenv
crw-------    2097152 nand0.kernel
crw-------  265945088 nand0.root
barebox:/

I think this looks OK.
However, I expected this to work (I took this from descriptions on the Internet...) :

barebox:/ erase /dev/nand0.kernel.bb
stat /dev/nand0.kernel.bb: No such file or directory
barebox:/

and

barebox:/ tftp zImage /dev/nand0.kernel.bb
open: Read-only file system
barebox:/


Is there any documentation that handles/describes this ? (e.g. what's the extension .bb ?)


Filip



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

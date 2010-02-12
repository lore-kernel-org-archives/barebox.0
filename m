Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f195.google.com ([209.85.222.195])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NfpXi-0000Bq-UW
	for barebox@lists.infradead.org; Fri, 12 Feb 2010 07:02:27 +0000
Received: by pzk33 with SMTP id 33so2914296pzk.2
	for <barebox@lists.infradead.org>; Thu, 11 Feb 2010 23:02:20 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 12 Feb 2010 12:32:19 +0530
Message-ID: <faef843a1002112302u6b80cb57we22db316d94e792e@mail.gmail.com>
From: R Arun Kumar <paiarunk@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2104047227=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Regarding nandwrite issue for huge files ?
To: barebox@lists.infradead.org

--===============2104047227==
Content-Type: multipart/alternative; boundary=001636b1498d3a15a2047f61d98f

--001636b1498d3a15a2047f61d98f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hai,

I am able to successfully port the barebox for my custom IMX31 board and
also boot linux on the same.
I am trying to write the uImage and the root.jffs2 file from barebox and
found that even though uImage is written successfully and able to boot from
nand flash also. The nand file write for files more than 3.5 mega size is
not able to write and the barebox loader is hanged.

Please help or suggest what could be the issue ?

Arun

my log
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

barebox 2009.12.0 (Feb 12 2010 - 12:19:11)

Board: Phytec phyCORE-i.MX31
cfi_probe: cfi_flash base: 0xa0000000 size: 0x02000000

NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB
3,3V 8-bit)
Scanning device for bad blocks
Bad eraseblock 2046 at 0x0ffc0000
Bad eraseblock 2047 at 0x0ffe0000
got MAC address from EEPROM: 00:08:EE:01:86:71
Malloc space: 0x87b00000 -> 0x87f00000 (size  4 MB)
Stack space : 0x87af8000 -> 0x87b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3

type update_kernel nand|nor [<imagename>] to update kernel into flash
type update_root nand|nor [<imagename>] to update rootfs into flash

barebox:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----cfi_flash0 (nor0, self0, env0, nor0.barebox, nor0.bareboxenv,
nor0.kernel, nor0.root)
|----mem2 (sram0)
|----imx_nand0
|----nand0 (nand0, nand_oob0, nand0.kernel, nand0.root)
|----smc911x0
|----miiphy0 (phy0)
|----eth0
|----mem3 (ram0)

drivers:
imx_serial
     ramfs
     devfs
   smc911x
    miiphy
  imx_nand
 cfi_flash
       mem
barebox:/ erase /dev/nand0.kernel.bb
barebox:/
barebox:/
barebox:/ tftp uImage_080210 /dev/nand0.kernel.bb
phy0: Link is up - 100/Full
TFTP from server 192.168.50.247; our IP address is 192.168.50.182

Filename 'uImage_080210'.
Loading: *=08##############################################################=
###
	 #################################################################
	 #################################################################
	 #################################################################
	 #################################################################
	 ###############################
done
Bytes transferred =3D 1822080 (1bcd80 hex)
barebox:/
barebox:/
barebox:/
barebox:/

barebox:/ erase /dev/nand0.root.bb
Skipping bad block at 0x0ffc0000
Skipping bad block at 0x0ffe0000
barebox:/
barebox:/
barebox:/
barebox:/ tftp root-pcm037.jffs2 /dev/nand0.root.bb
phy0: Link is up - 100/Full
TFTP from server 192.168.50.247; our IP address is 192.168.50.182

Filename 'root-pcm037.jffs2'.
Loading: *=08##############################################################=
###
	 #################################################################
	 #################################################################
	 ############################################################T #####
	 #################################################################
	 #################################################################
	 #####################(hanged)




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

--001636b1498d3a15a2047f61d98f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hai,<br><br>I am able to successfully port the barebox for my custom IMX31 =
board and also boot linux on the same.<br>I am trying to write the uImage a=
nd the root.jffs2 file from barebox and found that even though uImage is wr=
itten successfully and able to boot from nand flash also. The nand file wri=
te for files more than 3.5 mega size is not able to write and the barebox l=
oader is hanged. <br>
<br>Please help or suggest what could be the issue ?<br><br>Arun<br><br>my =
log<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><pre>barebox 2009.12.0 (Feb 12 2010 - 12:19:=
11)<br><br>Board: Phytec phyCORE-i.MX31<br>cfi_probe: cfi_flash base: 0xa00=
00000 size: 0x02000000<br>
<br>NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB =
3,3V 8-bit)<br>Scanning device for bad blocks<br>Bad eraseblock 2046 at 0x0=
ffc0000<br>Bad eraseblock 2047 at 0x0ffe0000<br>got MAC address from EEPROM=
: 00:08:EE:01:86:71<br>
Malloc space: 0x87b00000 -&gt; 0x87f00000 (size  4 MB)<br>Stack space : 0x8=
7af8000 -&gt; 0x87b00000 (size 32 kB)<br>envfs: wrong magic on /dev/env0<br=
>no valid environment found on /dev/env0. Using default environment<br>
running /env/bin/init...<br><br>Hit any key to stop autoboot:  3<br><br>typ=
e update_kernel nand|nor [&lt;imagename&gt;] to update kernel into flash<br=
>type update_root nand|nor [&lt;imagename&gt;] to update rootfs into flash<=
br>
<br>barebox:/ devinfo <br>devices:<br>|----imx_serial0<br>|----cs0<br>|----=
ramfs0<br>|----devfs0<br>|----mem0 (defaultenv)<br>|----mem1 (mem)<br>|----=
cfi_flash0 (nor0, self0, env0, nor0.barebox, nor0.bareboxenv, nor0.kernel, =
nor0.root)<br>
|----mem2 (sram0)<br>|----imx_nand0<br>|----nand0 (nand0, nand_oob0, nand0.=
kernel, nand0.root)<br>|----smc911x0<br>|----miiphy0 (phy0)<br>|----eth0<br=
>|----mem3 (ram0)<br><br>drivers:<br>imx_serial<br>     ramfs<br>     devfs=
<br>
   smc911x<br>    miiphy<br>  imx_nand<br> cfi_flash<br>       mem<br>bareb=
ox:/ erase /dev/<a href=3D"http://nand0.kernel.bb">nand0.kernel.bb</a> <br>=
barebox:/ <br>barebox:/ <br>barebox:/ tftp uImage_080210 /dev/<a href=3D"ht=
tp://nand0.kernel.bb">nand0.kernel.bb</a> <br>
phy0: Link is up - 100/Full<br>TFTP from server 192.168.50.247; our IP addr=
ess is 192.168.50.182<br><br>Filename &#39;uImage_080210&#39;.<br>Loading: =
*=08#################################################################<br>
	 #################################################################<br>	 ##=
###############################################################<br>	 ######=
###########################################################<br>	 ##########=
#######################################################<br>
	 ###############################<br>done<br>Bytes transferred =3D 1822080 =
(1bcd80 hex)<br>barebox:/ <br>barebox:/ <br>barebox:/ <br>barebox:/ <br><br=
>barebox:/ erase /dev/<a href=3D"http://nand0.root.bb">nand0.root.bb</a> <b=
r>
Skipping bad block at 0x0ffc0000<br>Skipping bad block at 0x0ffe0000<br>bar=
ebox:/ <br>barebox:/ <br>barebox:/ <br>barebox:/ tftp root-pcm037.jffs2 /de=
v/<a href=3D"http://nand0.root.bb">nand0.root.bb</a><br>phy0: Link is up - =
100/Full<br>
TFTP from server 192.168.50.247; our IP address is 192.168.50.182<br><br>Fi=
lename &#39;root-pcm037.jffs2&#39;.<br>Loading: *=08#######################=
##########################################<br>	 ###########################=
######################################<br>
	 #################################################################<br>	 ##=
##########################################################T #####<br>	 ####=
#############################################################<br>	 ########=
#########################################################<br>
	 #####################(hanged)<br><br></pre><br><br><br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>

--001636b1498d3a15a2047f61d98f--


--===============2104047227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2104047227==--

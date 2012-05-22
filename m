Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWnwi-0007HW-Bo
 for barebox@lists.infradead.org; Tue, 22 May 2012 12:12:13 +0000
Received: by ghbf11 with SMTP id f11so823556ghb.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 05:12:10 -0700 (PDT)
MIME-Version: 1.0
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 22 May 2012 14:11:46 +0200
Message-ID: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=e89a8f3ba4b990371c04c09eed80
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Booting mx25 based device from SD and NOR
To: barebox@lists.infradead.org

--e89a8f3ba4b990371c04c09eed80
Content-Type: multipart/alternative; boundary=e89a8f3ba4b990371704c09eed7e

--e89a8f3ba4b990371704c09eed7e
Content-Type: text/plain; charset=ISO-8859-1

Hi

I have been trying to boot a customized mx25 based device using barebox and
I seem to be missing a few basic pointers, I believe, since it does not
work. I have attached my config and put my current patch-set online:
http://pastebin.com/KUVAwWRk. It's based on git commit 'dadcf5bd8f715'.

I don't know if the way of adding the boatloader to the SD card for later
installing it onto NOR flash is the correct one. I currently issue a:

sudo dd if=barebox.bin of=/dev/sdc bs=512 skip=2 seek=2 && sync

sdc being the SD card. I wonder if the environment has to be put somewhere
into a partition or if it can be glued into the barebox image. Because
loading the barebox.bin as a secondary stage bootloader from within uboot
version 2009.08 works somehow:

Board: SID1 NOAH
registered netconsole as cs1
imx-esdhc@mci0: registered as mci0
imx-esdhc@imx-esdhc0: timeout 1
Cannot reset the SD/MMC card
ehci@ehci0: USB EHCI 1.00
cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash

sid1-noah:/
sid1-noah:/ devinfo
devices:
`---- net
`---- imx_serial0
     `---- cs0
`---- mem0
     `---- 0x00000000-0x03ffffff: /dev/ram0
`---- imx_iim0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
`---- ramfs0
`---- devfs0
`---- mem1
     `---- 0x00000000-0x000017e7: /dev/defaultenv
`---- mem2
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- cs1
`---- i2c-imx0
`---- imx-esdhc0
     `---- mci0
`---- fec_imx0
     `---- miidev0
          `---- 0x00000000-0x0000003f: /dev/phy0
     `---- eth0
`---- ehci0
`---- cfi_flash0
     `---- 0x00000000-0x03ffffff: /dev/nor0
     `---- 0x00000000-0x0003ffff: /dev/self
     `---- 0x00040000-0x0005ffff: /dev/env0
     `---- 0x00000000-0x0003ffff: /dev/nor0.barebox
     `---- 0x00040000-0x0005ffff: /dev/nor0.bareboxenv
     `---- 0x00060000-0x0035ffff: /dev/nor0.kernel
     `---- 0x00360000-0x03ffffff: /dev/nor0.root

drivers:
imx_serial
     ramfs
     devfs
       fat
      tftp
   imx_iim
   fec_imx
    miidev
 cfi_flash
    <NULL>
      ehci
      ohci
   imx_spi
   i2c-imx
       mci
 imx-esdhc
        fb
     imxfb
     at25x
       mem
    cramfs
sid1-noah:/ meminfo
max system bytes =     516096
system bytes     =     516096
in use bytes     =     495984
sid1-noah:/ iomem
0x00000000 - 0xfffffffe (size 0xffffffff) iomem
  0x43f80000 - 0x43f80fff (size 0x00001000) i2c-imx0
  0x43f90000 - 0x43f90fff (size 0x00001000) imx_serial0
  0x50038000 - 0x50038fff (size 0x00001000) fec_imx0
  0x53fb4000 - 0x53fb4fff (size 0x00001000) imx-esdhc0
  0x53ff0000 - 0x53ff0fff (size 0x00001000) imx_iim0
  0x53ff4500 - 0x53ff44ff (size 0x00000000) ehci0
  0x53ff4540 - 0x53ff453f (size 0x00000000) ehci0
  0x80000000 - 0x83ffffff (size 0x04000000) ram0
    0x83af8000 - 0x83afffff (size 0x00008000) stack
    0x83b00000 - 0x83efffff (size 0x00400000) malloc space
    0x83f00000 - 0x83f3fcf4 (size 0x0003fcf5) barebox
    0x83f42124 - 0x83f48688 (size 0x00006565) bss
  0xa0000000 - 0xa3ffffff (size 0x04000000) cfi_flash0
sid1-noah:/ cpufreq 532
Switched CPU frequency to 532MHz
sid1-noah:/ dump_clocks
mpll:     532000000 Hz
upll:     240000000 Hz
arm:      399000000 Hz
ahb:      133000000 Hz
uart:      33250000 Hz
gpt:       66500000 Hz
nand:      33250000 Hz
lcd:       66500000 Hz
i2c:      120000000 Hz
sdhc1:     66500000 Hz
sid1-noah:/ cpufreq 399
Switched CPU frequency to 399MHz
sid1-noah:/ dump_clocks
mpll:     399000000 Hz
upll:     240000000 Hz
arm:      299250000 Hz
ahb:       99750000 Hz
uart:      24937500 Hz
gpt:       49875000 Hz
nand:      24937500 Hz
lcd:       49875000 Hz
i2c:      120000000 Hz
sdhc1:     49875000 Hz

I'm glad for any pointers.

Best regards
Roberto

--e89a8f3ba4b990371704c09eed7e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<div><br></div><div>I have been trying to boot a customized mx25 based de=
vice using barebox and I seem to be missing a few basic pointers, I believe=
, since it does not work. I have attached my config and put my current patc=
h-set online: <a href=3D"http://pastebin.com/KUVAwWRk">http://pastebin.com/=
KUVAwWRk</a>. It&#39;s based on git commit &#39;dadcf5bd8f715&#39;.</div>

<div><br></div><div>I don&#39;t know if the way of adding the boatloader to=
 the SD card for later installing it onto NOR flash is the correct one. I c=
urrently issue a:</div><div><br></div><div>sudo dd if=3Dbarebox.bin of=3D/d=
ev/sdc bs=3D512 skip=3D2 seek=3D2 &amp;&amp; sync</div>

<div><br></div><div>sdc being the SD card. I wonder if the environment has =
to be put somewhere into a partition or if it can be glued into the barebox=
 image. Because loading the barebox.bin as a secondary stage bootloader fro=
m within uboot version 2009.08 works somehow:</div>

<div><br></div><div><div>Board: SID1 NOAH</div><div>registered netconsole a=
s cs1</div><div>imx-esdhc@mci0: registered as mci0</div><div>imx-esdhc@imx-=
esdhc0: timeout 1</div><div>Cannot reset the SD/MMC card</div><div>ehci@ehc=
i0: USB EHCI 1.00</div>

<div>cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864</div>=
<div>Malloc space: 0x83b00000 -&gt; 0x83efffff (size =A04 MB)</div><div>Sta=
ck space : 0x83af8000 -&gt; 0x83b00000 (size 32 kB)</div><div>envfs: wrong =
magic on /dev/env0</div>

<div>no valid environment found on /dev/env0. Using default environment</di=
v><div>running /env/bin/init...</div><div><br></div><div>Hit any key to sto=
p autoboot: =A03</div><div><br></div><div>type update_kernel nor [&lt;image=
name&gt;] to update kernel into flash</div>

<div>type update_root nor [&lt;imagename&gt;] to update rootfs into flash</=
div><div><br></div><div>sid1-noah:/</div><div>sid1-noah:/ devinfo</div><div=
>devices:</div><div>`---- net</div><div>`---- imx_serial0</div><div>=A0 =A0=
 =A0`---- cs0</div>

<div>`---- mem0</div><div>=A0 =A0 =A0`---- 0x00000000-0x03ffffff: /dev/ram0=
</div><div>`---- imx_iim0</div><div>=A0 =A0 =A0`---- 0x00000000-0x0000001f:=
 /dev/imx_iim_bank0</div><div>=A0 =A0 =A0`---- 0x00000000-0x0000001f: /dev/=
imx_iim_bank1</div>

<div>=A0 =A0 =A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank2</div><div>=
=A0 =A0 =A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank3</div><div>=A0 =
=A0 =A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank4</div><div>=A0 =A0 =
=A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank5</div>

<div>=A0 =A0 =A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank6</div><div>=
=A0 =A0 =A0`---- 0x00000000-0x0000001f: /dev/imx_iim_bank7</div><div>`---- =
ramfs0</div><div>`---- devfs0</div><div>`---- mem1</div><div>=A0 =A0 =A0`--=
-- 0x00000000-0x000017e7: /dev/defaultenv</div>

<div>`---- mem2</div><div>=A0 =A0 =A0`---- 0x00000000-0xfffffffe: /dev/mem<=
/div><div>`---- cs1</div><div>`---- i2c-imx0</div><div>`---- imx-esdhc0</di=
v><div>=A0 =A0 =A0`---- mci0</div><div>`---- fec_imx0</div><div>=A0 =A0 =A0=
`---- miidev0</div>

<div>=A0 =A0 =A0 =A0 =A0 `---- 0x00000000-0x0000003f: /dev/phy0</div><div>=
=A0 =A0 =A0`---- eth0</div><div>`---- ehci0</div><div>`---- cfi_flash0</div=
><div>=A0 =A0 =A0`---- 0x00000000-0x03ffffff: /dev/nor0</div><div>=A0 =A0 =
=A0`---- 0x00000000-0x0003ffff: /dev/self</div>

<div>=A0 =A0 =A0`---- 0x00040000-0x0005ffff: /dev/env0</div><div>=A0 =A0 =
=A0`---- 0x00000000-0x0003ffff: /dev/nor0.barebox</div><div>=A0 =A0 =A0`---=
- 0x00040000-0x0005ffff: /dev/nor0.bareboxenv</div><div>=A0 =A0 =A0`---- 0x=
00060000-0x0035ffff: /dev/nor0.kernel</div>

<div>=A0 =A0 =A0`---- 0x00360000-0x03ffffff: /dev/nor0.root</div><div><br><=
/div><div>drivers:</div><div>imx_serial</div><div>=A0 =A0 =A0ramfs</div><di=
v>=A0 =A0 =A0devfs</div><div>=A0 =A0 =A0 =A0fat</div><div>=A0 =A0 =A0 tftp<=
/div><div>=A0 =A0imx_iim</div><div>

=A0 =A0fec_imx</div><div>=A0 =A0 miidev</div><div>=A0cfi_flash</div><div>=
=A0 =A0 &lt;NULL&gt;</div><div>=A0 =A0 =A0 ehci</div><div>=A0 =A0 =A0 ohci<=
/div><div>=A0 =A0imx_spi</div><div>=A0 =A0i2c-imx</div><div>=A0 =A0 =A0 =A0=
mci</div><div>=A0imx-esdhc</div><div>=A0 =A0 =A0 =A0 fb</div>

<div>=A0 =A0 =A0imxfb</div><div>=A0 =A0 =A0at25x</div><div>=A0 =A0 =A0 =A0m=
em</div><div>=A0 =A0 cramfs</div><div>sid1-noah:/ meminfo</div><div>max sys=
tem bytes =3D =A0 =A0 516096</div><div>system bytes =A0 =A0 =3D =A0 =A0 516=
096</div><div>in use bytes =A0 =A0 =3D =A0 =A0 495984</div>

<div>sid1-noah:/ iomem</div><div>0x00000000 - 0xfffffffe (size 0xffffffff) =
iomem</div><div>=A0 0x43f80000 - 0x43f80fff (size 0x00001000) i2c-imx0</div=
><div>=A0 0x43f90000 - 0x43f90fff (size 0x00001000) imx_serial0</div><div>
=A0 0x50038000 - 0x50038fff (size 0x00001000) fec_imx0</div>
<div>=A0 0x53fb4000 - 0x53fb4fff (size 0x00001000) imx-esdhc0</div><div>=A0=
 0x53ff0000 - 0x53ff0fff (size 0x00001000) imx_iim0</div><div>=A0 0x53ff450=
0 - 0x53ff44ff (size 0x00000000) ehci0</div><div>=A0 0x53ff4540 - 0x53ff453=
f (size 0x00000000) ehci0</div>

<div>=A0 0x80000000 - 0x83ffffff (size 0x04000000) ram0</div><div>=A0 =A0 0=
x83af8000 - 0x83afffff (size 0x00008000) stack</div><div>=A0 =A0 0x83b00000=
 - 0x83efffff (size 0x00400000) malloc space</div><div>=A0 =A0 0x83f00000 -=
 0x83f3fcf4 (size 0x0003fcf5) barebox</div>

<div>=A0 =A0 0x83f42124 - 0x83f48688 (size 0x00006565) bss</div><div>=A0 0x=
a0000000 - 0xa3ffffff (size 0x04000000) cfi_flash0</div><div>sid1-noah:/ cp=
ufreq 532</div><div>Switched CPU frequency to 532MHz</div><div>sid1-noah:/ =
dump_clocks</div>

<div>mpll: =A0 =A0 532000000 Hz</div><div>upll: =A0 =A0 240000000 Hz</div><=
div>arm: =A0 =A0 =A0399000000 Hz</div><div>ahb: =A0 =A0 =A0133000000 Hz</di=
v><div>uart: =A0 =A0 =A033250000 Hz</div><div>gpt: =A0 =A0 =A0 66500000 Hz<=
/div><div>nand: =A0 =A0 =A033250000 Hz</div>

<div>lcd: =A0 =A0 =A0 66500000 Hz</div><div>i2c: =A0 =A0 =A0120000000 Hz</d=
iv><div>sdhc1: =A0 =A0 66500000 Hz</div><div>sid1-noah:/ cpufreq 399</div><=
div>Switched CPU frequency to 399MHz</div><div>sid1-noah:/ dump_clocks</div=
><div>mpll: =A0 =A0 399000000 Hz</div>

<div>upll: =A0 =A0 240000000 Hz</div><div>arm: =A0 =A0 =A0299250000 Hz</div=
><div>ahb: =A0 =A0 =A0 99750000 Hz</div><div>uart: =A0 =A0 =A024937500 Hz</=
div><div>gpt: =A0 =A0 =A0 49875000 Hz</div><div>nand: =A0 =A0 =A024937500 H=
z</div><div>lcd: =A0 =A0 =A0 49875000 Hz</div>

<div>i2c: =A0 =A0 =A0120000000 Hz</div><div>sdhc1: =A0 =A0 49875000 Hz</div=
></div><div><br></div><div>I&#39;m glad for any pointers.</div><div><br></d=
iv><div>Best regards</div><div>Roberto=A0</div>

--e89a8f3ba4b990371704c09eed7e--

--e89a8f3ba4b990371c04c09eed80
Content-Type: application/octet-stream; 
	name="0002-Default-config-file-for-NOAH.patch"
Content-Disposition: attachment; 
	filename="0002-Default-config-file-for-NOAH.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h2ix9l6a1

RnJvbSA0NTk4NTZjM2M5OGM4NDUzZTdkMGUyZjY4YjM1NGU5ODE3MzA4NDU4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2JlcnRvIE5pYmFsaSA8cm5pYmFsaUBnbWFpbC5jb20+CkRh
dGU6IE1vbiwgMjEgTWF5IDIwMTIgMTI6Mzg6MjQgKzAyMDAKU3ViamVjdDogW1BBVENIIDIvNl0g
RGVmYXVsdCBjb25maWcgZmlsZSBmb3IgTk9BSAoKLS0tCiBhcmNoL2FybS9jb25maWdzL25vYWhf
ZGVmY29uZmlnIHwgICA5NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm0vY29uZmlncy9ub2FoX2RlZmNvbmZpZwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZp
Z3Mvbm9haF9kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdzL25vYWhfZGVmY29uZmlnCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjE1MmYwYmYKLS0tIC9kZXYvbnVsbAorKysg
Yi9hcmNoL2FybS9jb25maWdzL25vYWhfZGVmY29uZmlnCkBAIC0wLDAgKzEsOTcgQEAKK0NPTkZJ
R19BUkNIX0lNWD15CitDT05GSUdfQVJDSF9JTVhfRVhURVJOQUxfQk9PVD15CitDT05GSUdfQVJD
SF9JTVgyNT15CitDT05GSUdfTUFDSF9NWDI1X05PQUg9eQorQ09ORklHX0lNWF9DTEtPPXkKK0NP
TkZJR19JTVhfSUlNPXkKK0NPTkZJR19BRUFCST15CitDT05GSUdfQVJNX1VOV0lORD15CitDT05G
SUdfTU1VPXkKK0NPTkZJR19CUk9LRU49eQorQ09ORklHX0VYUEVSSU1FTlRBTD15CitDT05GSUdf
UFJPTVBUPSJzaWQxLW5vYWg6IgorQ09ORklHX0xPTkdIRUxQPXkKK0NPTkZJR19HTE9CPXkKK0NP
TkZJR19DTURMSU5FX0VESVRJTkc9eQorQ09ORklHX0FVVE9fQ09NUExFVEU9eQorQ09ORklHX0RF
RkFVTFRfRU5WSVJPTk1FTlRfR0VORVJJQz15CitDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVF9Q
QVRIPSJhcmNoL2FybS9ib2FyZHMvZnEtc2lkMS1teDI1LW5vYWgvZW52IgorQ09ORklHX0JBUkVC
T1hFTlZfVEFSR0VUPXkKK0NPTkZJR19FTkFCTEVfRkxBU0hfTk9JU0U9eQorQ09ORklHX0VOQUJM
RV9QQVJUSVRJT05fTk9JU0U9eQorQ09ORklHX0VOQUJMRV9ERVZJQ0VfTk9JU0U9eQorQ09ORklH
X0NNRF9FRElUPXkKK0NPTkZJR19DTURfU0xFRVA9eQorQ09ORklHX0NNRF9TQVZFRU5WPXkKK0NP
TkZJR19DTURfRVhQT1JUPXkKK0NPTkZJR19DTURfUFJJTlRFTlY9eQorQ09ORklHX0NNRF9SRUFE
TElORT15CitDT05GSUdfQ01EX1RJTUU9eQorQ09ORklHX0NNRF9BVVRPTU9VTlQ9eQorQ09ORklH
X0NNRF9FQ0hPX0U9eQorQ09ORklHX0NNRF9MT0FEQj15CitDT05GSUdfQ01EX0xPQURZPXkKK0NP
TkZJR19DTURfTE9BRFM9eQorQ09ORklHX0NNRF9TQVZFUz15CitDT05GSUdfQ01EX01FTUlORk89
eQorQ09ORklHX0NNRF9JT01FTT15CitDT05GSUdfQ01EX01ENVNVTT15CitDT05GSUdfQ01EX1NI
QTFTVU09eQorQ09ORklHX0NNRF9TSEEyNTZTVU09eQorQ09ORklHX0NNRF9TSEEyMjRTVU09eQor
Q09ORklHX0NNRF9NVEVTVD15CitDT05GSUdfQ01EX01URVNUX0FMVEVSTkFUSVZFPXkKK0NPTkZJ
R19DTURfRkxBU0g9eQorQ09ORklHX0NNRF9CT09UTV9TSE9XX1RZUEU9eQorQ09ORklHX0NNRF9C
T09UTV9WRVJCT1NFPXkKK0NPTkZJR19DTURfQk9PVE1fSU5JVFJEPXkKK0NPTkZJR19DTURfQk9P
VE1fT0ZUUkVFPXkKK0NPTkZJR19DTURfQk9PVE1fT0ZUUkVFX1VJTUFHRT15CitDT05GSUdfQ01E
X1VJTUFHRT15CitDT05GSUdfQ01EX1JFU0VUPXkKK0NPTkZJR19DTURfR089eQorQ09ORklHX0NN
RF9PRlRSRUU9eQorQ09ORklHX0NNRF9USU1FT1VUPXkKK0NPTkZJR19DTURfUEFSVElUSU9OPXkK
K0NPTkZJR19DTURfTUFHSUNWQVI9eQorQ09ORklHX0NNRF9NQUdJQ1ZBUl9IRUxQPXkKK0NPTkZJ
R19DTURfQk1QPXkKK0NPTkZJR19DTURfR1BJTz15CitDT05GSUdfQ01EX1VOQ09NUFJFU1M9eQor
Q09ORklHX0NNRF9JMkM9eQorQ09ORklHX0NNRF9MRUQ9eQorQ09ORklHX05FVD15CitDT05GSUdf
TkVUX0RIQ1A9eQorQ09ORklHX05FVF9ORlM9eQorQ09ORklHX05FVF9QSU5HPXkKK0NPTkZJR19O
RVRfVEZUUD15CitDT05GSUdfTkVUX1RGVFBfUFVTSD15CitDT05GSUdfTkVUX05FVENPTlNPTEU9
eQorQ09ORklHX05FVF9SRVNPTFY9eQorQ09ORklHX0RSSVZFUl9ORVRfRkVDX0lNWD15CitDT05G
SUdfRFJJVkVSX1NQSV9JTVg9eQorQ09ORklHX0kyQz15CitDT05GSUdfSTJDX0lNWD15CitDT05G
SUdfRFJJVkVSX0NGST15CisjIENPTkZJR19EUklWRVJfQ0ZJX0JBTktfV0lEVEhfMSBpcyBub3Qg
c2V0CisjIENPTkZJR19EUklWRVJfQ0ZJX0JBTktfV0lEVEhfNCBpcyBub3Qgc2V0CitDT05GSUdf
TVREPXkKK0NPTkZJR19VU0I9eQorQ09ORklHX1VTQl9FSENJPXkKK0NPTkZJR19VU0JfT0hDST15
CitDT05GSUdfVVNCX1NUT1JBR0U9eQorQ09ORklHX1ZJREVPPXkKK0NPTkZJR19EUklWRVJfVklE
RU9fSU1YPXkKK0NPTkZJR19NQ0k9eQorQ09ORklHX01DSV9TVEFSVFVQPXkKK0NPTkZJR19NQ0lf
SU1YX0VTREhDPXkKK0NPTkZJR19MRUQ9eQorQ09ORklHX0xFRF9HUElPPXkKK0NPTkZJR19FRVBS
T01fQVQyNT15CitDT05GSUdfRlNfQ1JBTUZTPXkKK0NPTkZJR19GU19URlRQPXkKK0NPTkZJR19G
U19GQVQ9eQorQ09ORklHX0ZTX0ZBVF9XUklURT15CitDT05GSUdfRlNfRkFUX0xGTj15CitDT05G
SUdfQlpMSUI9eQorQ09ORklHX0xaT19ERUNPTVBSRVNTPXkKLS0gCjEuNy45LjUKCg==
--e89a8f3ba4b990371c04c09eed80
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--e89a8f3ba4b990371c04c09eed80--

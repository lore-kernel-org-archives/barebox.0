Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f41.google.com ([74.125.82.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKAXa-0006L1-BH
 for barebox@lists.infradead.org; Sat, 07 Feb 2015 18:55:39 +0000
Received: by mail-wg0-f41.google.com with SMTP id a1so19449596wgh.0
 for <barebox@lists.infradead.org>; Sat, 07 Feb 2015 10:55:14 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150206073318.GI12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <20150206073318.GI12209@pengutronix.de>
Date: Sat, 7 Feb 2015 11:55:12 -0700
Message-ID: <CA+nEJinXNs1G4tSctRPqxSV0PT5WnvSyBU1pKF7nbwwp9GzKNw@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
Content-Type: multipart/mixed; boundary=089e0122e8b6cb7305050e8413bb
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--089e0122e8b6cb7305050e8413bb
Content-Type: text/plain; charset=UTF-8

Sascha,

I've begun working on upgrading to the new environment, but I've
gotten stuck as far as getting Linux to boot.  I've attached the
device list from the old environment and the new one that I'm
currently working on.  I believe they are the same.  My globals are
currently set up as:

  version: 2015.02.0-00003-ga17b7cd-dirty
  model: Atmel sama5d4ek
* hostname: sama5d4ek
  loglevel: 7
  console.input_allow: 1
  bootm.image:
  bootm.image.loadaddr:
  bootm.oftree:
  bootm.initrd:
  bootm.initrd.loadaddr:
  dhcp.rootpath:
  dhcp.tftp_server_name:
  dhcp.bootfile:
  dhcp.oftree_file:
  dhcp.vendor_id:
  dhcp.client_id:
  dhcp.user_class:
  dhcp.client_uuid:
* autoboot_timeout: 3
* allow_color: true
* user: none
* boot.default: nand-ubi
* bootargs.base: console=ttyS0,115200
  linux.bootargs.base:
  linux.bootargs.console:
  linux.bootargs.dyn.ip:
  linux.bootargs.dyn.root:
  editcmd: sedit
  linux.mtdparts.nand0:
atmel_nand:256k(nand0.at91bootstrap),512k(nand0.barebox)ro,256k(nand0.bareboxenv),256k(nand0.bareboxenv2),256k(nand0.spare),512k(nand0.oftree),6M(nand0.kernel),-(nand0.rootfs)

With these settings, it says that it loads the kernel and is booting,
but then just sits there indefinitely.  Any ideas?  Below is the boot
information I get:

barebox 2015.02.0-00003-ga17b7cd-dirty #24 Sat Feb 7 11:19:26 MST 2015


Board: Atmel sama5d4ek
AT91: Detected soc type: sama5d4
AT91: Detected soc subtype: sama5d44
Clocks: CPU 528 MHz, master 176 MHz, main 12.000 MHz
gpio-at91 at91sam9x5-gpio0: AT91 gpio driver registered
gpio-at91 at91sam9x5-gpio1: AT91 gpio driver registered
gpio-at91 at91sam9x5-gpio2: AT91 gpio driver registered
gpio-at91 at91sam9x5-gpio3: AT91 gpio driver registered
gpio-at91 at91sam9x5-gpio4: AT91 gpio driver registered
i2c-gpio i2c-gpio0: using pins 30 (SDA) and 31 (SCL)
atmel_nand: Use On Flash BBT
nand: ONFI param page 0 valid
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
MT29F4G08ABAEAWP), 512MiB, page size: 4096, OOB size: 224
atmel_nand atmel_nand0: Initialize PMECC params, cap: 8, sector: 512
Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01
mdio_bus: miibus0: probed
macb macb0: Cadence GEM at 0xf8020000
m25p80 m25p800: at25df321a (4096 Kbytes)
atmel_mci atmel_mci1: version: 0x600
atmel_mci atmel_mci1: registered as atmel_mci1
mci0: no card inserted
malloc space: 0x26500000 -> 0x26efffff (size 10 MiB)
envfs: wrong magic
running /env/bin/init...

Hit any key to stop autoboot:  0
booting nand-ubi

Loading ARM Linux zImage '/dev/nand0.kernel.bb'
commandline:    root=ubi0:nand0.rootfs ubi.mtd=nand0.rootfs
rootfstype=ubifs
mtdparts=atmel_nand:256k(nand0.at91bootstrap),512k(nand0.barebox)ro,256k(nand0.bareboxenv),256k(nand0.bareboxenv2),256k(nand0.spare),512k(nand0.oftree),6M(nand0.kernel),-(nand0.rootfs)
arch_number: 0
Uncompressing Linux... done, booting the kernel.

On Fri, Feb 6, 2015 at 12:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi,
>
> On Tue, Feb 03, 2015 at 05:16:53PM +0800, Bo Shen wrote:
>> Hi Sascha,
>>
>> On 02/03/2015 04:59 PM, Sascha Hauer wrote:
>> >Note that we started with trying to build a generic default environment
>> >which at some point grew into a monster. We now have the 2nd version of
>> >the generic default environment which is much better. Unfortunately
>> >usage of this new default environment is board specific and your board
>> >isn't converted yet. If you are interested I can show you the steps to
>> >convert it.
>>
>> I am interested in this, could you show me the steps to convert it?
>> Thanks.
>
> Here we go:
>
> - Add "select HAVE_DEFAULT_ENVIRONMENT_NEW" to your board config
> - Enable CONFIG_DEFAULT_ENVIRONMENT in the default config
> - move everything that should be run during startup to one or multiple
>   scripts in /env/init/. For example the at91sam9260ek has some stuff
>   depending on $armlinux_architecture, that should be done in an init
>   script.
> - create /env/boot/* scripts several examples can be found in the tree
> - Create /env/nv/* variables for the corresponding global variables that
>   you wish to have. do a "find -name nv" to see what I mean.
> - /env/config should normally be empty in the board code, then the
>   generic one from defaultenv/defaultenv-2-base/config is used
> - MTD partitions should for now be defined in /env/init/mtdparts-* or later
>   in the device tree.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--089e0122e8b6cb7305050e8413bb
Content-Type: text/plain; charset=US-ASCII; name="NewEnvNotWorking.txt"
Content-Disposition: attachment; filename="NewEnvNotWorking.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i5vct8az0

IyBkZXZpbmZvDQpgLS0gZ2xvYmFsDQpgLS0gbnYNCmAtLSBwbGF0Zm9ybQ0KICAgYC0tIGF0OTFz
YW05eDUtZ3BpbzANCiAgIGAtLSBhdDkxc2FtOXg1LWdwaW8xDQogICBgLS0gYXQ5MXNhbTl4NS1n
cGlvMg0KICAgYC0tIGF0OTFzYW05eDUtZ3BpbzMNCiAgIGAtLSBhdDkxc2FtOXg1LWdwaW80DQog
ICBgLS0gYXQ5MS1waXQNCiAgIGAtLSBhdDkxc2FtOS1zbWMNCiAgIGAtLSBhdG1lbF91c2FydDQN
CiAgICAgIGAtLSBjczANCiAgIGAtLSBtZW0wDQogICAgICBgLS0gMHgwMDAwMDAwMC0weDFmZmZm
ZmZmICggICA1MTIgTWlCKTogL2Rldi9yYW0wDQogICBgLS0gbWVtMQ0KICAgICAgYC0tIDB4MDAw
MDAwMDAtMHgwMDAxZmZmZiAoICAgMTI4IEtpQik6IC9kZXYvc3JhbTANCiAgIGAtLSBzb2MNCiAg
IGAtLSBtZW0yDQogICAgICBgLS0gMHgwMDAwMDAwMC0weGZmZmZmZmZlICggICAgIDQgR2lCKTog
L2Rldi9tZW0NCiAgIGAtLSBpMmMtZ3BpbzANCiAgICAgIGAtLSBpMmMwDQogICAgICAgICBgLS0g
cXQxMDcwMA0KICAgICAgICAgICAgYC0tIGNzMQ0KICAgYC0tIGF0bWVsX25hbmQwDQogICAgICBg
LS0gbmFuZDANCiAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MWZmZmZmZmYgKCAgIDUxMiBNaUIp
OiAvZGV2L25hbmQwDQogICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDIxYmZmZmZmICggICA1NDAg
TWlCKTogL2Rldi9uYW5kMC5yYXcNCiAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MDFiZmZmZmYg
KCAgICAyOCBNaUIpOiAvZGV2L25hbmRfb29iMA0KICAgICAgICAgYC0tIGF0OTFib290c3RyYXBf
cmF3DQogICAgICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDNmZmZmICggICAyNTYgS2lCKTog
L2Rldi9hdDkxYm9vdHN0cmFwX3Jhdw0KICAgICAgICAgYC0tIGJvb3Rsb2FkZXJfcmF3DQogICAg
ICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDdmZmZmICggICA1MTIgS2lCKTogL2Rldi9ib290
bG9hZGVyX3Jhdw0KICAgICAgICAgYC0tIGVudl9yYXcNCiAgICAgICAgICAgIGAtLSAweDAwMDAw
MDAwLTB4MDAwM2ZmZmYgKCAgIDI1NiBLaUIpOiAvZGV2L2Vudl9yYXcNCiAgICAgICAgIGAtLSBl
bnZfcmF3MQ0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgwMDAzZmZmZiAoICAgMjU2IEtp
Qik6IC9kZXYvZW52X3JhdzENCiAgICAgICAgIGAtLSBuYW5kMC5hdDkxYm9vdHN0cmFwDQogICAg
ICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDNmZmZmICggICAyNTYgS2lCKTogL2Rldi9uYW5k
MC5hdDkxYm9vdHN0cmFwDQogICAgICAgICBgLS0gbmFuZDAuYmFyZWJveA0KICAgICAgICAgICAg
YC0tIDB4MDAwMDAwMDAtMHgwMDA3ZmZmZiAoICAgNTEyIEtpQik6IC9kZXYvbmFuZDAuYmFyZWJv
eA0KICAgICAgICAgYC0tIG5hbmQwLmJhcmVib3hlbnYNCiAgICAgICAgICAgIGAtLSAweDAwMDAw
MDAwLTB4MDAwM2ZmZmYgKCAgIDI1NiBLaUIpOiAvZGV2L25hbmQwLmJhcmVib3hlbnYNCiAgICAg
ICAgIGAtLSBuYW5kMC5iYXJlYm94ZW52Mg0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgw
MDAzZmZmZiAoICAgMjU2IEtpQik6IC9kZXYvbmFuZDAuYmFyZWJveGVudjINCiAgICAgICAgIGAt
LSBuYW5kMC5zcGFyZQ0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgwMDAzZmZmZiAoICAg
MjU2IEtpQik6IC9kZXYvbmFuZDAuc3BhcmUNCiAgICAgICAgIGAtLSBuYW5kMC5vZnRyZWUNCiAg
ICAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MDAwN2ZmZmYgKCAgIDUxMiBLaUIpOiAvZGV2L25h
bmQwLm9mdHJlZQ0KICAgICAgICAgYC0tIG5hbmQwLmtlcm5lbA0KICAgICAgICAgICAgYC0tIDB4
MDAwMDAwMDAtMHgwMDVmZmZmZiAoICAgICA2IE1pQik6IC9kZXYvbmFuZDAua2VybmVsDQogICAg
ICAgICBgLS0gbmFuZDAucm9vdGZzDQogICAgICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDFmN2Zm
ZmZmICggICA1MDQgTWlCKTogL2Rldi9uYW5kMC5yb290ZnMNCiAgIGAtLSBtYWNiMA0KICAgICAg
YC0tIG1paWJ1czANCiAgICAgIGAtLSBldGgwDQogICBgLS0gYXRtZWxfc3BpMA0KICAgICAgYC0t
IG0yNXA4MDANCiAgICAgICAgIGAtLSBtMjVwMA0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAt
MHgwMDNmZmZmZiAoICAgICA0IE1pQik6IC9kZXYvbTI1cDANCiAgIGAtLSBhdG1lbF9tY2kxDQog
ICAgICBgLS0gbWNpMA0KICAgYC0tIGF0bWVsX2hsY2RmYg0KYC0tIG1kaW9fYnVzDQpgLS0gc3Bp
DQpgLS0gaTJjDQpgLS0gZnMNCiAgIGAtLSByYW1mczANCiAgIGAtLSBkZXZmczANCmAtLSBuZXQN
CmAtLSBmYjANCiAgIGAtLSAweDAwMDAwMDAwLTB4MDAwYmI3ZmYgKCAgIDc1MCBLaUIpOiAvZGV2
L2ZiMA0K
--089e0122e8b6cb7305050e8413bb
Content-Type: text/plain; charset=US-ASCII; name="OldEnvWorks.txt"
Content-Disposition: attachment; filename="OldEnvWorks.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i5vct8b61

IyBkZXZpbmZvDQpgLS0gZ2xvYmFsDQpgLS0gbnYNCmAtLSBwbGF0Zm9ybQ0KICAgYC0tIGF0OTFz
YW05eDUtZ3BpbzANCiAgIGAtLSBhdDkxc2FtOXg1LWdwaW8xDQogICBgLS0gYXQ5MXNhbTl4NS1n
cGlvMg0KICAgYC0tIGF0OTFzYW05eDUtZ3BpbzMNCiAgIGAtLSBhdDkxc2FtOXg1LWdwaW80DQog
ICBgLS0gYXQ5MS1waXQNCiAgIGAtLSBhdDkxc2FtOS1zbWMNCiAgIGAtLSBhdG1lbF91c2FydDQN
CiAgICAgIGAtLSBjczANCiAgIGAtLSBtZW0wDQogICAgICBgLS0gMHgwMDAwMDAwMC0weDFmZmZm
ZmZmICggICA1MTIgTWlCKTogL2Rldi9yYW0wDQogICBgLS0gbWVtMQ0KICAgICAgYC0tIDB4MDAw
MDAwMDAtMHgwMDAxZmZmZiAoICAgMTI4IEtpQik6IC9kZXYvc3JhbTANCiAgIGAtLSBzb2MNCiAg
IGAtLSBtZW0yDQogICAgICBgLS0gMHgwMDAwMDAwMC0weGZmZmZmZmZlICggICAgIDQgR2lCKTog
L2Rldi9tZW0NCiAgIGAtLSBpMmMtZ3BpbzANCiAgICAgIGAtLSBpMmMwDQogICAgICAgICBgLS0g
cXQxMDcwMA0KICAgICAgICAgICAgYC0tIGNzMQ0KICAgYC0tIGF0bWVsX25hbmQwDQogICAgICBg
LS0gbmFuZDANCiAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MWZmZmZmZmYgKCAgIDUxMiBNaUIp
OiAvZGV2L25hbmQwDQogICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDIxYmZmZmZmICggICA1NDAg
TWlCKTogL2Rldi9uYW5kMC5yYXcNCiAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MDFiZmZmZmYg
KCAgICAyOCBNaUIpOiAvZGV2L25hbmRfb29iMA0KICAgICAgICAgYC0tIGF0OTFib290c3RyYXBf
cmF3DQogICAgICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDNmZmZmICggICAyNTYgS2lCKTog
L2Rldi9hdDkxYm9vdHN0cmFwX3Jhdw0KICAgICAgICAgYC0tIGJvb3Rsb2FkZXJfcmF3DQogICAg
ICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDdmZmZmICggICA1MTIgS2lCKTogL2Rldi9ib290
bG9hZGVyX3Jhdw0KICAgICAgICAgYC0tIGVudl9yYXcNCiAgICAgICAgICAgIGAtLSAweDAwMDAw
MDAwLTB4MDAwM2ZmZmYgKCAgIDI1NiBLaUIpOiAvZGV2L2Vudl9yYXcNCiAgICAgICAgIGAtLSBl
bnZfcmF3MQ0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgwMDAzZmZmZiAoICAgMjU2IEtp
Qik6IC9kZXYvZW52X3JhdzENCiAgICAgICAgIGAtLSBuYW5kMC5hdDkxYm9vdHN0cmFwDQogICAg
ICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDAwMDNmZmZmICggICAyNTYgS2lCKTogL2Rldi9uYW5k
MC5hdDkxYm9vdHN0cmFwDQogICAgICAgICBgLS0gbmFuZDAuYmFyZWJveA0KICAgICAgICAgICAg
YC0tIDB4MDAwMDAwMDAtMHgwMDA3ZmZmZiAoICAgNTEyIEtpQik6IC9kZXYvbmFuZDAuYmFyZWJv
eA0KICAgICAgICAgYC0tIG5hbmQwLmJhcmVib3hlbnYNCiAgICAgICAgICAgIGAtLSAweDAwMDAw
MDAwLTB4MDAwM2ZmZmYgKCAgIDI1NiBLaUIpOiAvZGV2L25hbmQwLmJhcmVib3hlbnYNCiAgICAg
ICAgIGAtLSBuYW5kMC5iYXJlYm94ZW52Mg0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgw
MDAzZmZmZiAoICAgMjU2IEtpQik6IC9kZXYvbmFuZDAuYmFyZWJveGVudjINCiAgICAgICAgIGAt
LSBuYW5kMC5zcGFyZQ0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHgwMDAzZmZmZiAoICAg
MjU2IEtpQik6IC9kZXYvbmFuZDAuc3BhcmUNCiAgICAgICAgIGAtLSBuYW5kMC5vZnRyZWUNCiAg
ICAgICAgICAgIGAtLSAweDAwMDAwMDAwLTB4MDAwN2ZmZmYgKCAgIDUxMiBLaUIpOiAvZGV2L25h
bmQwLm9mdHJlZQ0KICAgICAgICAgYC0tIG5hbmQwLmtlcm5lbA0KICAgICAgICAgICAgYC0tIDB4
MDAwMDAwMDAtMHgwMDVmZmZmZiAoICAgICA2IE1pQik6IC9kZXYvbmFuZDAua2VybmVsDQogICAg
ICAgICBgLS0gbmFuZDAucm9vdGZzDQogICAgICAgICAgICBgLS0gMHgwMDAwMDAwMC0weDFmN2Zm
ZmZmICggICA1MDQgTWlCKTogL2Rldi9uYW5kMC5yb290ZnMNCiAgIGAtLSBtYWNiMA0KICAgICAg
YC0tIG1paWJ1czANCiAgICAgIGAtLSBldGgwDQogICBgLS0gYXRtZWxfc3BpMA0KICAgICAgYC0t
IG0yNXA4MDANCiAgICAgICAgIGAtLSBtMjVwMA0KICAgICAgICAgICAgYC0tIDB4MDAwMDAwMDAt
MHgwMDNmZmZmZiAoICAgICA0IE1pQik6IC9kZXYvbTI1cDANCiAgIGAtLSBhdG1lbF9tY2kxDQog
ICAgICBgLS0gbWNpMA0KICAgYC0tIGF0bWVsX2hsY2RmYg0KYC0tIG1kaW9fYnVzDQpgLS0gc3Bp
DQpgLS0gaTJjDQpgLS0gZnMNCiAgIGAtLSByYW1mczANCiAgIGAtLSBkZXZmczANCmAtLSBuZXQN
CmAtLSBmYjANCiAgIGAtLSAweDAwMDAwMDAwLTB4MDAwYmI3ZmYgKCAgIDc1MCBLaUIpOiAvZGV2
L2ZiMA0K
--089e0122e8b6cb7305050e8413bb
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--089e0122e8b6cb7305050e8413bb--

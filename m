Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIkLe-0002iq-5Y
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 20:45:27 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Tue, 3 Feb 2015 20:44:55 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BAB6F45@mail-ying>
References: <29A2697B0516A946B1023D5E798DFCF67BAB6E85@mail-ying>
 <20150203201134.GQ12209@pengutronix.de>
In-Reply-To: <20150203201134.GQ12209@pengutronix.de>
Content-Language: en-US
Content-Type: multipart/mixed;
 boundary="_002_29A2697B0516A946B1023D5E798DFCF67BAB6F45mailying_"
MIME-Version: 1.0
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
Subject: RE: saveenv & erase with bad blocks present
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--_002_29A2697B0516A946B1023D5E798DFCF67BAB6F45mailying_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok, here's the info:

1. My config: arch/arm/configs/phytec-phycore-omap4460_defconfig=20

2. Output of "ls -l dev/nand0*"
barebox@Phytec phyCORE-OMAP4460:/ ls -l dev/nand0*
crw------- 1064566784 dev/nand0.root.bb
crw------- 1064566784 dev/nand0.root
crw-------    4194304 dev/nand0.splash.bb
crw-------    4194304 dev/nand0.splash
crw-------    4194304 dev/nand0.kernel.bb
crw-------    4194304 dev/nand0.kernel
crw-------          0 dev/nand0.bareboxenv.bb
crw-------     131072 dev/nand0.bareboxenv
crw-------     524288 dev/nand0.barebox.bb
crw-------     524288 dev/nand0.barebox
crw-------     131072 dev/nand0.xload.bb
crw-------     131072 dev/nand0.xload
crw------- 1073610752 dev/nand0.bb
crw------- 1073741824 dev/nand0

3. Barebox startup (MLO from Phytec + Barebox 2015.2.0):

barebox 2012.10.0 #3 Wed Feb 27 19:58:34 EST 2013


Board: Phytec phyCORE pcm049
omap-hsmmc@mci0: registered as mci0
probe buswidth
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xb3 ( ), page size: 2048, OOB=
 size: 64
Malloc space: 0x84000000 -> 0x85ffffff (size 32 MB)
Stack space : 0x8f000000 -> 0x8f008000 (size 32 kB)
booting from NAND


barebox 2015.02.0 #1 Tue Feb 3 15:32:15 EST 2015


Board: Phytec phyCORE-OMAP4460
i2c-omap i2c-omap40: bus 0 rev0.11 at 100 kHz
omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
mci0: detected SD card version 2.0
mci0: registered disk0
smc911x smc911x0: LAN911x identified, idrev: 0x92210000, generation: 4
mdio_bus: miibus0: probed
eth0: got preset MAC address: 50:2d:f4:05:65:82
nand: ONFI param page 0 valid
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xb3 (Micron MT29F8G16AD=
BDAH4), 1024MiB, page size: 2048, OOB size: 64
omap_fb omap_fb: HW-Revision 0x0040 0x0040
omap_fb omap_fb: registered
malloc space: 0x8d000000 -> 0x8effffff (size 32 MiB)
read: Directory not empty
running /env/bin/init...
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
BCH decoding failed
unable to read /dev/nand0.splash.bb
splash: Out of memory

Hit any key to stop autoboot:  0
booting kernel from /dev/nand0.kernel.bb
/dev/nand0.kernel.bb: No such file or directory
Unknown OS filetype (try -f)
handler failed with: Invalid argument


-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de]=20
Sent: February-03-15 3:12 PM
To: Boulais, Marc-Andre
Cc: barebox@lists.infradead.org
Subject: Re: saveenv & erase with bad blocks present

On Tue, Feb 03, 2015 at 04:38:42PM +0000, Boulais, Marc-Andre wrote:
> Hi,
> I have flashed Barebox-2015.02.0 on my omap4 setup (using the Barebox upd=
ate command) and I am now trying to modify the environment from the Barebox=
 prompt. I have modified the env/config file and I would like to save my ch=
anges to NAND.=20
>=20
> For this task, I call the "saveenv" command and I get this result:
>=20
> barebox@Phytec phyCORE-OMAP4460:/ saveenv saving environment
> saveenv: No space left on device
>=20
> The "devinfo" command indicates to me that the /dev/nand0.bareboxenv part=
ition is 128 Kb.=20
> Just to be sure, I erase it and get the following error:
>=20
> barebox@Phytec phyCORE-OMAP4460:/ erase /dev/nand0.bareboxenv.bb
> nand: nand_erase_nand: attempt to erase a bad block at page 0x00000140
> erase: I/O error
>=20
> So I guess I am a bit confused here.=20
> 1) Is "saveenv" the right command to save my changes to the environment ?

Yes.

> 2) How can I erase a NAND partition that has bad blocks ?

when erasing a .bb device (which you did above) should let barebox just ski=
p the bad blocks.

> 3) Can bad blocks be marked by software or are they all marked by the man=
ufacturer ?

You can mark blocks as bad using the 'nand' command.

barebox tries to erase a bad block at page 0x140 which is 0x140 * 2048 =3D =
0xa0000. In the device trees I see the environment partition starts at 0x10=
0000. Could you tell me which config you built, post the startup messages f=
rom barebox and the output of 'ls -l dev/nand0*'?

Sascha

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--_002_29A2697B0516A946B1023D5E798DFCF67BAB6F45mailying_
Content-Type: application/octet-stream;
	name="phytec-phycore-omap4460_defconfig"
Content-Description: phytec-phycore-omap4460_defconfig
Content-Disposition: attachment; filename="phytec-phycore-omap4460_defconfig";
	size=1771; creation-date="Tue, 03 Feb 2015 20:40:09 GMT";
	modification-date="Tue, 03 Feb 2015 20:31:11 GMT"
Content-Transfer-Encoding: base64

Q09ORklHX0FSQ0hfT01BUD15CkNPTkZJR19CQVJFQk9YX01BWF9JTUFHRV9TSVpFPTB4ODAwMDAK
Q09ORklHX0FSQ0hfT01BUDQ9eQpDT05GSUdfTUFDSF9QQ00wNDk9eQpDT05GSUdfQUVBQkk9eQpD
T05GSUdfQVJNX1VOV0lORD15CkNPTkZJR19NTVU9eQpDT05GSUdfVEVYVF9CQVNFPTB4OGYwMDAw
MDAKQ09ORklHX01BTExPQ19TSVpFPTB4MjAwMDAwMApDT05GSUdfS0FMTFNZTVM9eQpDT05GSUdf
UFJPTVBUPSJiYXJlYm94PiAiCkNPTkZJR19MT05HSEVMUD15CkNPTkZJR19HTE9CPXkKQ09ORklH
X0hVU0hfRkFOQ1lfUFJPTVBUPXkKQ09ORklHX0NNRExJTkVfRURJVElORz15CkNPTkZJR19BVVRP
X0NPTVBMRVRFPXkKIyBDT05GSUdfVElNRVNUQU1QIGlzIG5vdCBzZXQKQ09ORklHX0RFRkFVTFRf
RU5WSVJPTk1FTlRfR0VORVJJQz15CkNPTkZJR19ERUZBVUxUX0VOVklST05NRU5UX1BBVEg9ImFy
Y2gvYXJtL2JvYXJkcy9waHl0ZWMtcGh5Y29yZS1vbWFwNDQ2MC9lbnYiCkNPTkZJR19CQVJFQk9Y
RU5WX1RBUkdFVD15CkNPTkZJR19CQVJFQk9YQ1JDMzJfVEFSR0VUPXkKQ09ORklHX0NNRF9FRElU
PXkKQ09ORklHX0NNRF9TTEVFUD15CkNPTkZJR19DTURfU0FWRUVOVj15CkNPTkZJR19DTURfRVhQ
T1JUPXkKQ09ORklHX0NNRF9QUklOVEVOVj15CkNPTkZJR19DTURfUkVBRExJTkU9eQpDT05GSUdf
Q01EX1RJTUU9eQpDT05GSUdfQ01EX0FVVE9NT1VOVD15CkNPTkZJR19DTURfVEZUUD15CkNPTkZJ
R19DTURfRUNIT19FPXkKQ09ORklHX0NNRF9MT0FEQj15CkNPTkZJR19DTURfSU9NRU09eQpDT05G
SUdfQ01EX0ZMQVNIPXkKQ09ORklHX0NNRF9CT09UTV9TSE9XX1RZUEU9eQpDT05GSUdfQ01EX0JP
T1RNX1ZFUkJPU0U9eQpDT05GSUdfQ01EX0JPT1RNX0lOSVRSRD15CkNPTkZJR19DTURfQk9PVE1f
T0ZUUkVFPXkKQ09ORklHX0NNRF9CT09UTV9PRlRSRUVfVUlNQUdFPXkKQ09ORklHX0NNRF9VSU1B
R0U9eQojIENPTkZJR19DTURfQk9PVFUgaXMgbm90IHNldApDT05GSUdfQ01EX1JFU0VUPXkKQ09O
RklHX0NNRF9HTz15CkNPTkZJR19DTURfU1BMQVNIPXkKQ09ORklHX0NNRF9USU1FT1VUPXkKQ09O
RklHX0NNRF9QQVJUSVRJT049eQpDT05GSUdfQ01EX01BR0lDVkFSPXkKQ09ORklHX0NNRF9NQUdJ
Q1ZBUl9IRUxQPXkKQ09ORklHX0NNRF9HUElPPXkKQ09ORklHX0NNRF9JMkM9eQpDT05GSUdfTkVU
PXkKQ09ORklHX0NNRF9ESENQPXkKQ09ORklHX05FVF9ORlM9eQpDT05GSUdfQ01EX1BJTkc9eQpD
T05GSUdfRFJJVkVSX1NFUklBTF9OUzE2NTUwPXkKQ09ORklHX0RSSVZFUl9TRVJJQUxfTlMxNjU1
MF9PTUFQX0VYVEVOU0lPTlM9eQpDT05GSUdfU01TQ19QSFk9eQpDT05GSUdfRFJJVkVSX05FVF9T
TUM5MTFYPXkKIyBDT05GSUdfU1BJIGlzIG5vdCBzZXQKQ09ORklHX0kyQz15CkNPTkZJR19JMkNf
T01BUD15CkNPTkZJR19NVEQ9eQpDT05GSUdfTkFORD15CkNPTkZJR19OQU5EX09NQVBfR1BNQz15
CkNPTkZJR19VQkk9eQpDT05GSUdfVVNCX0hPU1Q9eQpDT05GSUdfVklERU89eQpDT05GSUdfRFJJ
VkVSX1ZJREVPX09NQVA9eQpDT05GSUdfSU1BR0VfUkVOREVSRVI9eQpDT05GSUdfQk1QPXkKQ09O
RklHX01DST15CkNPTkZJR19NQ0lfU1RBUlRVUD15CkNPTkZJR19NQ0lfT01BUF9IU01NQz15CkNP
TkZJR19NRkRfVFdMNjAzMD15CkNPTkZJR19GU19URlRQPXkKQ09ORklHX0ZTX0ZBVD15CkNPTkZJ
R19GU19GQVRfV1JJVEU9eQpDT05GSUdfRlNfRkFUX0xGTj15CkNPTkZJR19MWk9fREVDT01QUkVT
Uz15Cg==

--_002_29A2697B0516A946B1023D5E798DFCF67BAB6F45mailying_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--_002_29A2697B0516A946B1023D5E798DFCF67BAB6F45mailying_--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plexus-g.actel.com ([12.177.68.99])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj2tK-0004dd-4t
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 05:30:47 +0000
From: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Date: Tue, 19 Jul 2011 11:00:35 +0530
Message-ID: <6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6@IN-MSG-01.amer.actel.com>
References: <AcwkMvQr2IoEFQV9To6jK9T6RQPvyABX9l1w>
	<6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
	<CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
In-Reply-To: <CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6INMSG01amerac_"
MIME-Version: 1.0
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
Subject: RE: sandbox build failing on redhat host
To: Vikram Narayanan <vikram186@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--_002_6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6INMSG01amerac_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Vikram,


Here are my latest set of errors for sandbox build. PFA the config file.
Version : barebox-2011.05.0

commands/loads.c:114: error: `load_addr' undeclared (first use in this func=
tion)
commands/loads.c:114: error: (Each undeclared identifier is reported only o=
nce
commands/loads.c:114: error: for each function it appears in.)
commands/loads.c: In function `load_serial':
commands/loads.c:179: warning: implicit declaration of function `barebox_se=
tenv'
commands/loads.c:188: warning: implicit declaration of function `barebox_pu=
tc'
commands/loads.c: In function `read_record':
commands/loads.c:221: error: `gd' undeclared (first use in this function)
commands/loads.c:221: error: `XF_getc' undeclared (first use in this functi=
on)
commands/loads.c:233:6: warning: "CONFIG_COMMANDS" is not defined
commands/loads.c:233:24: warning: "CFG_CMD_SAVES" is not defined
commands/loads.c: At top level:
commands/loads.c:392: error: syntax error before numeric constant
commands/loads.c:396: warning: type defaults to `int' in declaration of `BA=
REBOX_CMD'
commands/loads.c:396: warning: function declaration isn't a prototype
commands/loads.c:396: warning: data definition has no type or storage class
commands/loads.c:404:6: warning: "CONFIG_COMMANDS" is not defined
commands/loads.c:404:24: warning: "CFG_CMD_SAVES" is not defined
make[1]: *** [commands/loads.o] Error 1
make: *** [commands] Error 2


Best Regards,
N.S.S.R.Murthy,

-----Original Message-----
From: Vikram Narayanan [mailto:vikram186@gmail.com]
Sent: Saturday, July 16, 2011 12:16 PM
To: Murthy, Ramana
Cc: barebox@lists.infradead.org
Subject: Re: sandbox build failing on redhat host

On Wed, Jun 8, 2011 at 9:46 AM, Murthy, Ramana
<Ramana.Murthy@microsemi.com> wrote:
> Hi All,
>
>
>
> Can somebody please help me on this. I know sandbox is not priority. But
> this helps me to progress to create a new port.

Please post your .config file.
Which version of barebox you are using?

-
Vikram
>
> Best Regards,
>
> N.S.S.R.Murthy,
>
> Ph # +91-40-67303600, Extn - 3731,
>
> Mobile # +91-9959677780.
>
>
>
> From: Murthy, Ramana
> Sent: Monday, June 06, 2011 3:48 PM
> To: 'barebox@lists.infradead.org'
> Subject: sandbox build failing on redhat host
>
>
>
> Hi All,
>
>
>
> I am trying to build barebox with ARCH =3D sandbox. My make menuconfig is
> successful.
>
> But the actual build is throwing below errors. As I understand, the error=
s
> are because offt_build.c that includes <asm/barebox.h>. But in case of
> ARCH=3Dsandbox,the arch/sandbox/inlcude/asm/barebox.h contains nothing. I=
s
> itsupposed to compile ft_build.c in case of sandbox?
>
>  CHK     include/generated/version.h
>  CHK     include/generated/utsrelease.h
>  SYMLINK include/config.h -> arch/sandbox/board//config.h
>  CC      scripts/mod/empty.o
>  HOSTCC  scripts/mod/mk_elfconfig
>  MKELF   scripts/mod/elfconfig.h
>  HOSTCC  scripts/mod/modpost.o
>  HOSTCC  scripts/mod/sumversion.o
>  HOSTLD  scripts/mod/modpost
>  HOSTCC  scripts/bin2c
>  HOSTCC  scripts/mkimage
>  HOSTCC  scripts/bareboxenv
>  CC      common/hush.o
>  CC      common/date.o
>  CC      common/ft_build.o
> In file included from common/ft_build.c:33:
> include/ft_build.h:59: error: syntax error before "bd_t"
> include/ft_build.h:59: warning: function declaration isn't a prototype
> include/ft_build.h:65: error: syntax error before "bd_t"
> include/ft_build.h:65: warning: function declaration isn't a prototype
> include/ft_build.h:66: error: syntax error before "bd_t"
> include/ft_build.h:66: warning: function declaration isn't a prototype
> include/ft_build.h:67: error: syntax error before "bd_t"
> include/ft_build.h:67: warning: function declaration isn't a prototype
> common/ft_build.c:458: error: syntax error before "bd_t"
> common/ft_build.c:459: warning: function declaration isn't a prototype
> common/ft_build.c: In function `ft_setup':
> common/ft_build.c:477: error: `blob' undeclared (first use in this functi=
on)
> common/ft_build.c:477: error: (Each undeclared identifier is reported onl=
y
> once
> common/ft_build.c:477: error: for each function it appears in.)
> common/ft_build.c:477: error: `bd' undeclared (first use in this function=
)
> common/ft_build.c:488: error: `initrd_start' undeclared (first use in
> this function)
> common/ft_build.c:488: error: `initrd_end' undeclared (first use in
> this function)
> common/ft_build.c:460: warning: unused variable `p'
> common/ft_build.c:461: warning: unused variable `len'
> common/ft_build.c:463: warning: unused variable `clock'
> make[1]: *** [common/ft_build.o] Error 1
> make: *** [common] Error 2
>
>
>
> Best Regards,
>
> N.S.S.R.Murthy,
>
> Ph # +91-40-67303600, Extn - 3731,
>
> Mobile # +91-9959677780.
>
>
>
> ________________________________
> The information contained in or attached to this email may be subject to =
the
> Export Administration Regulations (EAR), administered by the U.S. Departm=
ent
> of Commerce, or the International Traffic in Arms Regulations (ITAR),
> administered by the U.S. Department of State, and may require an export
> license from the Commerce or State Department prior to its export. An exp=
ort
> can include a release or disclosure to a foreign national inside or outsi=
de
> the United States. Include this notice with any reproduced portion of thi=
s
> information.
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>



The information contained in or attached to this email may be subject to th=
e Export Administration Regulations (EAR), administered by the U.S. Departm=
ent of Commerce, or the International Traffic in Arms Regulations (ITAR), a=
dministered by the U.S. Department of State, and may require an export lice=
nse from the Commerce or State Department prior to its export.  An export c=
an include a release or disclosure to a foreign national inside or outside =
the United States.  Include this notice with any reproduced portion of this=
 information.

--_002_6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6INMSG01amerac_
Content-Type: application/octet-stream; name="ATT62575.config"
Content-Description: ATT62575.config
Content-Disposition: attachment; filename="ATT62575.config"; size=3958;
	creation-date="Tue, 19 Jul 2011 11:00:02 GMT";
	modification-date="Tue, 19 Jul 2011 11:00:02 GMT"
Content-Transfer-Encoding: base64

Iw0KIyBBdXRvbWF0aWNhbGx5IGdlbmVyYXRlZCBtYWtlIGNvbmZpZzogZG9uJ3QgZWRpdA0KIyBM
aW51eC9zYW5kYm94IDIwMTEuMDUuMCBCYXJlYm94IENvbmZpZ3VyYXRpb24NCiMgVHVlIEp1bCAx
OSAxMDo0Nzo0OCAyMDExDQojDQpDT05GSUdfQVJDSF9URVhUX0JBU0U9MHgwMDAwMDAwMA0KQ09O
RklHX0JPQVJESU5GTz0ic2FuZGJveCINCkNPTkZJR19MSU5VWD15DQpDT05GSUdfREVGQ09ORklH
X0xJU1Q9IiRBUkNIX0RFRkNPTkZJRyINCkNPTkZJR19HUkVHT1JJQU5fQ0FMRU5ERVI9eQ0KQ09O
RklHX0NNRF9NRU1PUlk9eQ0KQ09ORklHX0VOVl9IQU5ETElORz15DQoNCiMNCiMgR2VuZXJhbCBT
ZXR0aW5ncyAgICAgICAgICAgICAgDQojDQpDT05GSUdfTE9DQUxWRVJTSU9OX0FVVE89eQ0KDQoj
DQojIG1lbW9yeSBsYXlvdXQgICAgICAgICAgICAgICAgIA0KIw0KQ09ORklHX1NUQUNLX1NJWkU9
MHg4MDAwDQpDT05GSUdfTUFMTE9DX1NJWkU9MHg0MDAwMDANCkNPTkZJR19CUk9LRU49eQ0KQ09O
RklHX0VYUEVSSU1FTlRBTD15DQpDT05GSUdfUFJPTVBUPSJiYXJlYm94OiINCkNPTkZJR19CQVVE
UkFURT0xMTUyMDANCkNPTkZJR19TSU1QTEVfUkVBRExJTkU9eQ0KIyBDT05GSUdfTE9OR0hFTFAg
aXMgbm90IHNldA0KQ09ORklHX0NCU0laRT0xMDI0DQpDT05GSUdfTUFYQVJHUz0xNg0KQ09ORklH
X1NIRUxMX0hVU0g9eQ0KIyBDT05GSUdfU0hFTExfU0lNUExFIGlzIG5vdCBzZXQNCiMgQ09ORklH
X0dMT0IgaXMgbm90IHNldA0KQ09ORklHX1BST01QVF9IVVNIX1BTMj0iPiAiDQojIENPTkZJR19I
VVNIX0ZBTkNZX1BST01QVCBpcyBub3Qgc2V0DQojIENPTkZJR19IVVNIX0dFVE9QVCBpcyBub3Qg
c2V0DQojIENPTkZJR19DTURMSU5FX0VESVRJTkcgaXMgbm90IHNldA0KIyBDT05GSUdfTUVOVSBp
cyBub3Qgc2V0DQpDT05GSUdfUEFTU1dPUkQ9eQ0KQ09ORklHX1BBU1NXRF9TVU1fTUQ1PXkNCiMg
Q09ORklHX1BBU1NXRF9TVU1fU0hBMSBpcyBub3Qgc2V0DQojIENPTkZJR19QQVNTV0RfU1VNX1NI
QTI1NiBpcyBub3Qgc2V0DQpDT05GSUdfRFlOQU1JQ19DUkNfVEFCTEU9eQ0KQ09ORklHX0VSUk5P
X01FU1NBR0VTPXkNCkNPTkZJR19USU1FU1RBTVA9eQ0KQ09ORklHX0NPTlNPTEVfRlVMTD15DQpD
T05GSUdfQ09OU09MRV9BQ1RJVkFURV9GSVJTVD15DQojIENPTkZJR19PRl9GTEFUX1RSRUUgaXMg
bm90IHNldA0KIyBDT05GSUdfUEFSVElUSU9OIGlzIG5vdCBzZXQNCkNPTkZJR19ERUZBVUxUX0VO
VklST05NRU5UPXkNCiMgQ09ORklHX0RFRkFVTFRfRU5WSVJPTk1FTlRfR0VORVJJQyBpcyBub3Qg
c2V0DQpDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVF9QQVRIPSIiDQojIENPTkZJR19QT0xMRVIg
aXMgbm90IHNldA0KDQojDQojIERlYnVnZ2luZyAgICAgICAgICAgICAgICAgICAgIA0KIw0KQ09O
RklHX0RFQlVHX0lORk89eQ0KQ09ORklHX0VOQUJMRV9GTEFTSF9OT0lTRT15DQpDT05GSUdfRU5B
QkxFX1BBUlRJVElPTl9OT0lTRT15DQpDT05GSUdfRU5BQkxFX0RFVklDRV9OT0lTRT15DQoNCiMN
CiMgQ29tbWFuZHMgICAgICAgICAgICAgICAgICAgICAgDQojDQoNCiMNCiMgc2NyaXB0aW5nICAg
ICAgICAgICAgICAgICAgICAgDQojDQpDT05GSUdfQ01EX0VESVQ9eQ0KQ09ORklHX0NNRF9TTEVF
UD15DQpDT05GSUdfQ01EX1NBVkVFTlY9eQ0KQ09ORklHX0NNRF9MT0FERU5WPXkNCkNPTkZJR19D
TURfRVhQT1JUPXkNCkNPTkZJR19DTURfUFJJTlRFTlY9eQ0KQ09ORklHX0NNRF9SRUFETElORT15
DQpDT05GSUdfQ01EX1RSVUU9eQ0KQ09ORklHX0NNRF9GQUxTRT15DQpDT05GSUdfQ01EX0xPR0lO
PXkNCkNPTkZJR19DTURfUEFTU1dEPXkNCkNPTkZJR19QQVNTV0RfTU9ERV9ISURFPXkNCiMgQ09O
RklHX1BBU1NXRF9NT0RFX1NUQVIgaXMgbm90IHNldA0KIyBDT05GSUdfUEFTU1dEX01PREVfQ0xF
QVIgaXMgbm90IHNldA0KDQojDQojIGZpbGUgY29tbWFuZHMgICAgICAgICAgICAgICAgIA0KIw0K
Q09ORklHX0NNRF9MUz15DQpDT05GSUdfQ01EX1JNPXkNCkNPTkZJR19DTURfQ0FUPXkNCkNPTkZJ
R19DTURfTUtESVI9eQ0KQ09ORklHX0NNRF9STURJUj15DQpDT05GSUdfQ01EX0NQPXkNCkNPTkZJ
R19DTURfUFdEPXkNCkNPTkZJR19DTURfQ0Q9eQ0KQ09ORklHX0NNRF9NT1VOVD15DQpDT05GSUdf
Q01EX1VNT1VOVD15DQoNCiMNCiMgY29uc29sZSAgICAgICAgICAgICAgICAgICAgICAgDQojDQpD
T05GSUdfQ01EX0NMRUFSPXkNCkNPTkZJR19DTURfRUNITz15DQojIENPTkZJR19DTURfRUNIT19F
IGlzIG5vdCBzZXQNCg0KIw0KIyBtZW1vcnkgICAgICAgICAgICAgICAgICAgICAgICANCiMNCkNP
TkZJR19DTURfTE9BREI9eQ0KQ09ORklHX0NNRF9MT0FEWT15DQpDT05GSUdfQ01EX0xPQURTPXkN
CkNPTkZJR19DTURfU0FWRVM9eQ0KQ09ORklHX0NNRF9NRU1JTkZPPXkNCkNPTkZJR19DTURfQ1JD
PXkNCkNPTkZJR19DTURfQ1JDX0NNUD15DQpDT05GSUdfQ01EX01URVNUPXkNCkNPTkZJR19DTURf
TVRFU1RfQUxURVJOQVRJVkU9eQ0KDQojDQojIGZsYXNoICAgICAgICAgICAgICAgICAgICAgICAg
IA0KIw0KQ09ORklHX0NNRF9GTEFTSD15DQojIENPTkZJR19DTURfVUJJIGlzIG5vdCBzZXQNCg0K
Iw0KIyBib290aW5nICAgICAgICAgICAgICAgICAgICAgICANCiMNCkNPTkZJR19DTURfQk9PVE09
eQ0KIyBDT05GSUdfQ01EX0JPT1RNX1pMSUIgaXMgbm90IHNldA0KIyBDT05GSUdfQ01EX0JPT1RN
X0JaTElCIGlzIG5vdCBzZXQNCiMgQ09ORklHX0NNRF9CT09UTV9TSE9XX1RZUEUgaXMgbm90IHNl
dA0KIyBDT05GSUdfQ01EX1JFU0VUIGlzIG5vdCBzZXQNCiMgQ09ORklHX0NNRF9HTyBpcyBub3Qg
c2V0DQojIENPTkZJR19DTURfVElNRU9VVCBpcyBub3Qgc2V0DQojIENPTkZJR19DTURfUEFSVElU
SU9OIGlzIG5vdCBzZXQNCkNPTkZJR19DTURfVEVTVD15DQpDT05GSUdfQ01EX1ZFUlNJT049eQ0K
Q09ORklHX0NNRF9IRUxQPXkNCkNPTkZJR19DTURfREVWSU5GTz15DQojIENPTkZJR19DTURfVU5M
Wk8gaXMgbm90IHNldA0KIyBDT05GSUdfTkVUIGlzIG5vdCBzZXQNCg0KIw0KIyBEcml2ZXJzICAg
ICAgICAgICAgICAgICAgICAgICANCiMNCg0KIw0KIyBzZXJpYWwgZHJpdmVycyAgICAgICAgICAg
ICAgICANCiMNCkNPTkZJR19EUklWRVJfU0VSSUFMX0xJTlVYX0NPTVNPTEU9eQ0KIyBDT05GSUdf
RFJJVkVSX1NFUklBTF9OUzE2NTUwIGlzIG5vdCBzZXQNCg0KIw0KIyBTUEkgZHJpdmVycyAgICAg
ICAgICAgICAgICAgICANCiMNCkNPTkZJR19TUEk9eQ0KIyBDT05GSUdfSTJDIGlzIG5vdCBzZXQN
Cg0KIw0KIyBmbGFzaCBkcml2ZXJzICAgICAgICAgICAgICAgICANCiMNCiMgQ09ORklHX0RSSVZF
Ul9DRkkgaXMgbm90IHNldA0KIyBDT05GSUdfTVREIGlzIG5vdCBzZXQNCiMgQ09ORklHX0FUQSBp
cyBub3Qgc2V0DQojIENPTkZJR19VU0IgaXMgbm90IHNldA0KIyBDT05GSUdfVVNCX0dBREdFVCBp
cyBub3Qgc2V0DQojIENPTkZJR19WSURFTyBpcyBub3Qgc2V0DQojIENPTkZJR19NQ0kgaXMgbm90
IHNldA0KDQojDQojIE1GRA0KIw0KIyBDT05GSUdfSTJDX01DMTM4OTIgaXMgbm90IHNldA0KIyBD
T05GSUdfRFJJVkVSX1NQSV9NQzEzNzgzIGlzIG5vdCBzZXQNCiMgQ09ORklHX0xFRCBpcyBub3Qg
c2V0DQoNCiMNCiMgRmlsZXN5c3RlbSBzdXBwb3J0ICAgICAgICAgICAgDQojDQojIENPTkZJR19G
U19DUkFNRlMgaXMgbm90IHNldA0KQ09ORklHX0ZTX1JBTUZTPXkNCkNPTkZJR19GU19ERVZGUz15
DQpDT05GSUdfQ1JDMzI9eQ0KQ09ORklHX0NSQzE2PXkNCkNPTkZJR19ESUdFU1Q9eQ0KQ09ORklH
X01ENT15DQojIENPTkZJR19TSEExIGlzIG5vdCBzZXQNCiMgQ09ORklHX1NIQTI1NiBpcyBub3Qg
c2V0DQpDT05GSUdfR0VORVJJQ19GSU5EX05FWFRfQklUPXkNCiMgQ09ORklHX1BST0NFU1NfRVND
QVBFX1NFUVVFTkNFIGlzIG5vdCBzZXQNCg==

--_002_6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6INMSG01amerac_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--_002_6F2524F76379064FB8CB9CEE698D56DA8D40F7A6D6INMSG01amerac_--

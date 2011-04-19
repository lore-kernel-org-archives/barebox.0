Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from aa001msb.fastweb.it ([85.18.95.80])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QC73X-0003eo-1Q
	for barebox@lists.infradead.org; Tue, 19 Apr 2011 09:17:12 +0000
Message-ID: <4DAD5314.3070504@selea.com>
Date: Tue, 19 Apr 2011 11:17:08 +0200
From: Omar Pighi <pighi@selea.com>
MIME-Version: 1.0
References: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>
	<20110418072941.GH14770@pengutronix.de>
	<4DAC52C2.9020201@selea.com>
	<20110418174845.GO14770@pengutronix.de>
In-Reply-To: <20110418174845.GO14770@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------020308090908030108060900"
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
Subject: Re: again on enviroment and partition problems
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is a multi-part message in MIME format.
--------------020308090908030108060900
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hi,

you where right about CONFIG_GLOB... sorry.
and what about the other problem on crc error?
(http://www.spinics.net/lists/u-boot-v2/msg02944.html) is it ok the
correction?

but i have some problem on saving enviroment... I mean if i create a
enviroment variable from command line (i.e. myvar=testvalue) and perorm
saveenv command.
then reset the board.. i should find the variable again (using printenv
i doesn't have it defined)

i tried to modify a scrit in the /env directory (just adding an echo)
then "make" but downloading the new bin... but i cannot see the new init
script .. in the /env/bin directory i still have the old one...

can anybody explain to me the usage of this menuconfig item:

[*] Compile in default environment │ │
│ │ [*] Default environment generic │ │
│ │ (arch/arm/boards/freescale-mx25-3-stack/env/) Default environment path

attached my config file just to understand if i'm doign something wrong
on enviroment usage...

thanks
Omar


Dott. Ing. Omar Pighi
R&D Selea s.r.l.
Via A.Moro 69
46015 Cicognara (MN)
ITALY
tel +39-0375-889091
fax +39-0375-889080
web:www.selea.com


Il 18/04/2011 19:48, Sascha Hauer ha scritto:
> On Mon, Apr 18, 2011 at 05:03:30PM +0200, Omar Pighi wrote:
>   
>> reading here:
>> http://www.spinics.net/lists/u-boot-v2/msg02944.html
>>
>> it seems that now it works and save enviroments with correct crc.
>> but when i triy to ypdate_kernel it says_
>> partition dev/nand0.kernel.bb not found... no one .bb partition has been
>> created.
>> it should be done by hush_hack but it doesn't.
>>
>> reading here:
>> http://www.spinics.net/lists/u-boot-v2/msg02957.html
>>
>> but "CONFIG_GLOB=y"
>>
>> I cannot find it in any kconfig file... so it is not possible to set
>> using menuconfig... should i add by hand. this means something missin in
>> the kconfigs...
>>     
> CONFIG_GLOB depends on CONFIG_SHELL_HUSH. Could it be that hush is not 
> enabled in you config?
>
> Sascha
>
>   

--------------020308090908030108060900
Content-Type: text/plain;
 name="auto.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="auto.conf"

IwojIEF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIG1ha2UgY29uZmlnOiBkb24ndCBlZGl0CiMg
TGludXgvYXJtIDIwMTEuMDQuMCBCYXJlYm94IENvbmZpZ3VyYXRpb24KIyBUdWUgQXByIDE5
IDA5OjU1OjI0IDIwMTEKIwpDT05GSUdfQ1JDMzI9eQpDT05GSUdfQ01EX0JPT1RNPXkKQ09O
RklHX0FSQ0hfSU1YX0lOVEVSTkFMX0JPT1Q9eQpDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVO
VF9QQVRIPSJhcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxlLW14MjUtMy1zdGFjay9lbnYvIgpD
T05GSUdfSTJDX0lNWD15CkNPTkZJR19HTE9CPXkKQ09ORklHX0NNRF9DRD15CkNPTkZJR19E
RUZBVUxUX0VOVklST05NRU5UX0dFTkVSSUM9eQpDT05GSUdfWkxJQj15CkNPTkZJR19DTURf
REVWSU5GTz15CkNPTkZJR19DTURfRkFMU0U9eQpDT05GSUdfRFlOQU1JQ19DUkNfVEFCTEU9
eQpDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVD15CkNPTkZJR19IQVNfQ0ZJPXkKQ09ORklH
X0NNRF9FWFBPUlQ9eQpDT05GSUdfQ01EX0NQPXkKQ09ORklHX05BTkRfSU1YPXkKQ09ORklH
X05FVF9ESENQPXkKQ09ORklHX01URD15CkNPTkZJR19TSEVMTF9IVVNIPXkKQ09ORklHX01U
RF9OQU5EX0lEUz15CkNPTkZJR19DTURfQ1JDX0NNUD15CkNPTkZJR19DTURfQVJNX0NQVUlO
Rk89eQpDT05GSUdfU0lNUExFX1JFQURMSU5FPXkKQ09ORklHX0NNRF9QQVJUSVRJT049eQpD
T05GSUdfRFJJVkVSX05FVF9GRUNfSU1YPXkKQ09ORklHX0FSTT15CkNPTkZJR19NQVhBUkdT
PTE2CkNPTkZJR19HRU5FUklDX0dQSU89eQpDT05GSUdfUEFSVElUSU9OPXkKQ09ORklHX0NN
RF9IRUxQPXkKQ09ORklHX0VOQUJMRV9ERVZJQ0VfTk9JU0U9eQpDT05GSUdfQ01EX0NSQz15
CkNPTkZJR19DTURfU0FWRUVOVj15CkNPTkZJR19DTURfVFJVRT15CkNPTkZJR19ERUZDT05G
SUdfTElTVD0iJEFSQ0hfREVGQ09ORklHIgpDT05GSUdfSEFWRV9DT05GSUdVUkFCTEVfVEVY
VF9CQVNFPXkKQ09ORklHX0NNRF9GTEFTSD15CkNPTkZJR19BUkNIX0lNWDI1PXkKQ09ORklH
X0NNRF9URVNUPXkKQ09ORklHX0NNRF9MT0FERU5WPXkKQ09ORklHX0NNRF9NS0RJUj15CkNP
TkZJR19URVhUX0JBU0U9MHg4M2YwMDAwMApDT05GSUdfSTJDX01DMzQ3MDQ9eQpDT05GSUdf
Q1BVX0FSTTkyNlQ9eQpDT05GSUdfU1RBQ0tfU0laRT0weDgwMDAKQ09ORklHX0NQVV8zMj15
CkNPTkZJR19FTkFCTEVfUEFSVElUSU9OX05PSVNFPXkKQ09ORklHX1BST0NFU1NfRVNDQVBF
X1NFUVVFTkNFPXkKQ09ORklHX0VSUk5PX01FU1NBR0VTPXkKQ09ORklHX0FSQ0hfVEVYVF9C
QVNFPTB4ODNmMDAwMDAKQ09ORklHX05FVF9URlRQPXkKQ09ORklHX0NQVV8zMnY1PXkKQ09O
RklHX0JaTElCPXkKQ09ORklHX01URF9OQU5EX1ZFUklGWV9XUklURT15CkNPTkZJR19DTURf
UkVTRVQ9eQpDT05GSUdfR1JFR09SSUFOX0NBTEVOREVSPXkKQ09ORklHX0hBVkVfQ09ORklH
VVJBQkxFX01FTU9SWV9MQVlPVVQ9eQpDT05GSUdfQ01EX1BXRD15CkNPTkZJR19BUkNIX0lN
WD15CkNPTkZJR19NSUlERVY9eQpDT05GSUdfSTJDPXkKQ09ORklHX0VOVl9IQU5ETElORz15
CkNPTkZJR19DTURfQ0xFQVI9eQpDT05GSUdfTkVUX05GUz15CkNPTkZJR19OQU5EPXkKQ09O
RklHX05FVD15CkNPTkZJR19BUkNIX0hBU19GRUNfSU1YPXkKQ09ORklHX0FSQ0hfSU1YX0lO
VEVSTkFMX0JPT1RfTkFORD15CkNPTkZJR19DTURfQk9PVE1fQlpMSUI9eQpDT05GSUdfTUFM
TE9DX1NJWkU9MHg0MDAwMDAKQ09ORklHX0NNRF9HTz15CkNPTkZJR19HRU5FUklDX0xJTktF
Ul9TQ1JJUFQ9eQpDT05GSUdfRU5BQkxFX0ZMQVNIX05PSVNFPXkKQ09ORklHX0NNRF9CT09U
VT15CkNPTkZJR19DTURfVkVSU0lPTj15CkNPTkZJR19ORVRfUElORz15CkNPTkZJR19DTURf
Qk9PVE1fU0hPV19UWVBFPXkKQ09ORklHX0hBU19LQUxMU1lNUz15CkNPTkZJR19DTURfVU1P
VU5UPXkKQ09ORklHX0NNRF9USU1FT1VUPXkKQ09ORklHX0NNRF9NRU1PUlk9eQpDT05GSUdf
Q01EX0JPT1RaPXkKQ09ORklHX01BQ0hfSEFTX0xPV0xFVkVMX0lOSVQ9eQpDT05GSUdfQ01E
X0VDSE89eQpDT05GSUdfTE9DQUxWRVJTSU9OX0FVVE89eQpDT05GSUdfSEFTX01PRFVMRVM9
eQpDT05GSUdfQ01EX0NBVD15CkNPTkZJR19DTURfUFJJTlRFTlY9eQpDT05GSUdfQ01EX0xT
PXkKQ09ORklHX0NNRF9STT15CkNPTkZJR19DT05TT0xFX0ZVTEw9eQpDT05GSUdfQkFVRFJB
VEU9MTE1MjAwCkNPTkZJR19NQUNIX0RPX0xPV0xFVkVMX0lOSVQ9eQpDT05GSUdfQk9BUkRJ
TkZPPSJGcmVlc2NhbGUgTVgyNSAzU3RhY2siCkNPTkZJR19DT05TT0xFX0FDVElWQVRFX0ZJ
UlNUPXkKQ09ORklHX1RJTUVTVEFNUD15CkNPTkZJR19GUkVFU0NBTEVfTVgyNV8zU1RBQ0tf
U0RSQU1fNjRNQl9ERFIyPXkKQ09ORklHX0ZTX0RFVkZTPXkKQ09ORklHX0NCU0laRT0xMDI0
CkNPTkZJR19IVVNIX0dFVE9QVD15CkNPTkZJR19DTURfTU9VTlQ9eQpDT05GSUdfRlNfQ1JB
TUZTPXkKQ09ORklHX1BST01QVF9IVVNIX1BTMj0iPiAiCkNPTkZJR19NQUNIX0ZSRUVTQ0FM
RV9NWDI1XzNTVEFDSz15CkNPTkZJR19JTVhfQ0xLTz15CkNPTkZJR19DTURfRURJVD15CkNP
TkZJR19ORVRfTkVUQ09OU09MRT15CkNPTkZJR19DTURfRUNIT19FPXkKQ09ORklHX0ZTX1JB
TUZTPXkKQ09ORklHX01FTU9SWV9MQVlPVVRfREVGQVVMVD15CkNPTkZJR19QUk9NUFQ9ImJh
cmVib3g6IgpDT05GSUdfQ01EX0JPT1RNX1pMSUI9eQpDT05GSUdfQ01EX01FTUlORk89eQpD
T05GSUdfRFJJVkVSX1NFUklBTF9JTVg9eQpDT05GSUdfTE9OR0hFTFA9eQpDT05GSUdfQ01E
X1JNRElSPXkKQ09ORklHX0RFQlVHX0lORk89eQo=
--------------020308090908030108060900
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------020308090908030108060900--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr800124.outbound.protection.outlook.com
 ([40.107.80.124] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUYs-00068c-B9
 for barebox@lists.infradead.org; Thu, 26 Sep 2019 14:16:05 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Thu, 26 Sep 2019 14:15:57 +0000
Message-ID: <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
In-Reply-To: <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: barebox 2019.07 ubiformat
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

My apology, I used a model (DX1014) that we have not upstream to your repository.
It is based on the Freescale P1014 unlike the DA923RC (MPC8544). More answer below
Including both the DA923RC and DX1014.



> >
> > Using the version from2016.07, the NOR boot partition can be formatted (FIT
> image) and NAND (file system) and the system boots.
> > When using the barebox 2019-07, both storage can be formatted but when
> booting (Linux 4.16 or 5.2) I get:
> 
> There is no driver for this NAND controller upstream, I assume you have
> it in your tree, right? 
[Barbier, Renaud] 
Correct. The NAND driver has not been upstream for the DA923RC.
I have now used the DA923RC to do the same test.

With barebox from 2016.07, ubiformat gives me:
OWBOOT> / addpart -n /dev/ram0 77070336@0x10000(image)
OWBOOT> / ls /dev/nand0
/dev/nand0
OWBOOT> / ubiformat -q -y /dev/nand0 -f /dev/image
OWBOOT> /

With 2019.07, ubiformat gives:
OWBOOT> / ubiformat -y -q /dev/nand0 -f /dev/image
ubi1: detaching mtd0 from ubi1
ubi1: removing nand0.ubi
ubi1: mtd0 is detached
nand0: error -74 (ECC error) while reading 64 bytes from PEB 14:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 15:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 21:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 21:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 24:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 24:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 30:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 30:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 37:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 37:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 47:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 47:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 470:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 470:512
nand0: error -74 (ECC error) while reading 64 bytes from PEB 473:0
nand0: error -74 (ECC error) while reading 64 bytes from PEB 473:512
ubi1: scanning is finished
ubi1 error: ubi_update_fastmap: could not find any anchor PEB
ubi1 warning: ubi_update_fastmap: Unable to write new fastmap, err=-28
nand0: error -74 (ECC error) while reading 64 bytes from PEB 30:512
ubi1: scrubbed PEB 30 (LEB 0:28), data moved to PEB 2702
nand0: error -74 (ECC error) while reading 64 bytes from PEB 37:512
ubi1: scrubbed PEB 37 (LEB 0:35), data moved to PEB 2104
nand0: error -74 (ECC error) while reading 64 bytes from PEB 47:512
ubi1: scrubbed PEB 47 (LEB 0:45), data moved to PEB 2103
ubi1: scrubbed PEB 328 (LEB 1:33), data moved to PEB 2101
nand0: error -74 (ECC error) while reading 64 bytes from PEB 21:512
ubi1: scrubbed PEB 21 (LEB 0:19), data moved to PEB 2100
nand0: error -74 (ECC error) while reading 64 bytes from PEB 24:512
ubi1: scrubbed PEB 24 (LEB 0:22), data moved to PEB 2099
ubi1: scrubbed PEB 26 (LEB 0:24), data moved to PEB 1925
ubi1: scrubbed PEB 448 (LEB 1:153), data moved to PEB 1922
nand0: error -74 (ECC error) while reading 64 bytes from PEB 470:512
ubi1: scrubbed PEB 470 (LEB 1:175), data moved to PEB 1921
nand0: error -74 (ECC error) while reading 64 bytes from PEB 473:512
ubi1: scrubbed PEB 473 (LEB 1:178), data moved to PEB 1920
nand0: error -74 (ECC error) while reading 64 bytes from PEB 13:512

On the DX1014, ubiformat never reported an ECC errors on both 2016 and 2019

Can barebox itself read what it has written,
> i.e. ubiattach / mount it?
[Barbier, Renaud] 

DA923RC:
Barebox can attach and mount, do ls and copy a file to memory and boot.

DX1014:
Barebox can attach and mount, do ls but not copy a file to memory.
OWBOOT> / cp /bin/busybox.nosuid /
could not open /bin/busybox.nosuid: No such file or directory


I could upstream the DA923RC nand driver if you like but I think it may be easier for me to do a dichotomy between 2016 and 2019 and find when it  went wrong. 
If you have any idea, let me know.

Cheers,
Renaud



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zlaab-00083s-7H
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 10:44:22 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
Date: Mon, 12 Oct 2015 12:38:30 +0200
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 (Sebastian Hesselbarth's message of "Fri, 9 Oct 2015 00:06:02 +0200")
Message-ID: <87d1wk74nt.fsf@belgarion.home>
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
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> This series is, of course, untested on mach-pxa and needs a
> Tested-by. I have tested the new driver on Armada XP based
> Lenovo ix4-300d and todays -next.

I tested the parial serie patches :
* 7f109d9 (test-sebastian) mtd: nand_mrvl_nfc: Prepare for different HW ECC strengths
* 1b791e9 mtd: nand_mrvl_nfc: Fix num-cs property parsing
* 2b1b488 mtd: nand_mrvl_nfc: Use Auto Read Status on program/erase
* b198e62 mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead of 0x00
* 56e0cfd mtd: nand_mrvl_nfc: Remove keep_config
* 1a42d8e arm: pxa: Remove pxa_get_nandclk()
* bc3db6f mtd: nand: Clarify Marvell Orion Kconfig prompt
* 15577a6 mtd: nand_mrvl_nfc: Use common clock for core clock
* 40debf2 arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
* ace2e99 (HEAD, tmp) net: netconsole: add puts
* 0b8212a (tag: v2015.10.0) Release v2015.10.0

As a result I have :
	mrvl_nand mrvl_nand0: alloc nand resource failed
	mrvl_nand mrvl_nand0: probe failed: No such file or directory

This breaks zylonite support. Without the serie, the NAND works (ie. at "tmp"
branch").

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

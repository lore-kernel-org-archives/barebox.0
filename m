Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from optimeas.de ([78.46.18.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UajgH-0002pp-Lm
 for barebox@lists.infradead.org; Fri, 10 May 2013 09:32:02 +0000
From: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Date: Fri, 10 May 2013 09:20:50 +0000
In-Reply-To: <20130507175549.GR32299@pengutronix.de>
Message-Id: <em6083fb6c-e073-40f9-aa90-2878d59c3517@plh001-think>
Mime-Version: 1.0
Reply-To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re[2]: Installing barebox for karo-tx53 in nand-flash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Thanks Sascha,
building barebox results in two .bin files: barebox.bin and 
zbarebox.bin.
Is zbarebox.bin a compressed version of barebox.bin?
Which one should I use for flashing the tx53 nand-flash?

My boot sources are nand-flash (thats where u-boot is at the moment) 
(and SD-card for testing).

I tried to flash zbarebox.bin to nand-flash. It started but with error
nand: NAND type unknown, ec,f1
nand: No NAND device found (-19)!
imx_nand imx_nand0: probe failed: No such device or address
malloc space: 0x85f00000 -> 0x87efffff (size 32 MiB)
Using environment in NAND
Open /dev/env0 No such file or directory
..

Does barebox already support the FirmwareConfigurationBlock? I heard 
from Mathias Fend that he manually had to add a FCB blob before the 
barebox binary when writing barebox to flash in an older barebox 
version.

Best regards
  Patrick




------ Originalnachricht ------
Von: "Sascha Hauer" <s.hauer@pengutronix.de>
An: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Gesendet: 07.05.2013 19:55:49
Betreff: Re: Installing barebox for karo-tx53
>On Tue, May 07, 2013 at 12:33:03PM +0000, Dr. Patrick Langfeld wrote:
>>  Hi,
>>  I want to install barebox on a Karo TX53 module as a primary 
>>bootloader.
>>  Now I have a few questions:
>>
>>  a)
>>  With wich version should I start. I found the branch karo-tx53 at
>>  git://github.com/gchiii/barebox-tx53.git
>>  Is this the right one (as it seems to be quit old with latest commit
>>  9 month ago)
>
>I don't know this branch.
>
>>
>>  Or should I start with the master branch at
>>  git://git.pengutronix.de/git/barebox.git ?
>
>Yes, this one is the right one.
>
>>
>>  b)
>>  Is there even a simpler way as I am using ptxdist?
>
>barebox is integrated into ptxdist, so you can just select it in 
>ptxdist
>platformconfig. There are also ways to compile a barebox from a git
>repository using ptxdist.
>
>>
>>  c) How can I flash barebox over u-boot, which is my current 
>>bootloader?
>
>Yes, you can. What boot sources does your board have? I think it has
>Nand, that's where U-Boot is. Are there other possibilities?
>
>Sascha
>
>--
>Pengutronix e.K. | |
>Industrial Linux Solutions | http://www.pengutronix.de/ |
>Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
>Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-5555 |
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

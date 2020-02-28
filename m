Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-1.e-mind.com ([188.94.192.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7b0K-00017q-8I
 for barebox@lists.infradead.org; Fri, 28 Feb 2020 08:28:18 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-1.e-mind.com (Postfix) with ESMTP id 1C7B38361A5
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 08:28:13 +0000 (UTC)
Received: from submit-1.e-mind.com ([127.0.0.1])
 by localhost (submit-1.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrlfxEj1z1-P for <barebox@lists.infradead.org>;
 Fri, 28 Feb 2020 09:28:12 +0100 (CET)
Received: from submit-4.e-mind.com (submit-4.e-mind.com [188.94.192.50])
 by submit-1.e-mind.com (Postfix) with ESMTPS id 7EE1682DE4F
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 09:28:12 +0100 (CET)
Received: from localhost (unknown [127.0.0.1])
 by submit-4.e-mind.com (Postfix) with ESMTP id 7C83E8355AD
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 08:28:12 +0000 (UTC)
Received: from submit-4.e-mind.com ([127.0.0.1])
 by localhost (submit-4.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSQtea2ENZR3 for <barebox@lists.infradead.org>;
 Fri, 28 Feb 2020 09:28:12 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-4.e-mind.com (Postfix) with SMTP id 6FC468355A9
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2020 09:28:12 +0100 (CET)
References: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
 <122509ae-f030-4f8a-0cae-eb2c2e31dbe9@pengutronix.de>
 <88405b89-494c-f510-ecb4-810f8b6e0b91@eurek.it>
 <5d328910-2009-b83f-014a-75a4847ea235@pengutronix.de>
 <76d54e08-0051-3069-015c-727a6bd9a38f@eurek.it>
 <4e386cf3-69f3-fd0a-dfae-2827cc2b1c5e@pengutronix.de>
 <2b5d2afe-c71e-34b9-efa5-57aaa5f28445@eurek.it>
 <8da838d3-ac20-adcb-74c0-e0f921c4a083@pengutronix.de>
 <701628bd-3198-a670-a3e7-13f137a99d2d@eurek.it>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <eeab62fa-2049-42d8-f666-8c912e2a7e2d@eurek.it>
Date: Fri, 28 Feb 2020 09:28:12 +0100
MIME-Version: 1.0
In-Reply-To: <701628bd-3198-a670-a3e7-13f137a99d2d@eurek.it>
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
Subject: Re: Barebox as first and second stage bootloader
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On 02/28/2020 08:50 AM, gianluca wrote:
> Now it compiles with the gcc version 7.3.1 20180622 (release)
> [ARM/embedded-7-branch revision 261907] (GNU Tools for Arm Embedded
> Processors 7-2018-q2-update).
> Built build/stm32mp1/debug/tf-a-stm32mp157c-dk2.bin successfully
>
>
> Generated build/stm32mp1/debug/tf-a-stm32mp157c-dk2.stm32
> tools/stm32image/stm32image -s
> ./build/stm32mp1/debug/tf-a-stm32mp157c-dk2.bin -d
> build/stm32mp1/debug/tf-a-stm32mp157c-dk2.stm32 -l 0x000000002ffc2500 -e
> 0x000000002ffd8000 -v 0
> Image Type   : ST Microelectronics STM32 V1.0
> Image Size   : 245128 bytes
> Image Load   : 0x2ffc2500
> Entry Point  : 0x2ffd8000
> Checksum     : 0x00ebe57e
> Option     : 0x00000001
> Version       : 0x00000000
>

Now having the following .tsv file:

> #Opt	Id	Name	Type	IP	Offset	Binary
> -	0x01	fsbl1-boot	Binary	none	0x0	tf-a-stm32mp157c-dk2.stm32
> -	0x03	ssbl-boot	Binary	none	0x0	barebox-stm32mp157c-dk2.img

The STM32_Programmer_CLI cmdline gives those messages:

  ---> (cmdline) STM32_Programmer_CLI -c port=usb1 -w 
stm32mp157c-dk2.tsv <---

>       -------------------------------------------------------------------
>                         STM32CubeProgrammer v2.3.0
>       -------------------------------------------------------------------
>
>
>
> USB speed   : High Speed (480MBit/s)
> Manuf. ID   : STMicroelectronics
> Product ID  : DFU in HS Mode @Device ID /0x500, @Revision ID /0x0000
> SN          : 0022002B3338510534383330
> FW version  : 0x0110
> Device ID   : 0x0500
> Device name : STM32MPxxx
> Device type : MPU
> Device CPU  : Cortex-A7
>
>
> Start Embedded Flashing service
>
>
>
> Memory Programming ...
> Opening and parsing file: tf-a-stm32mp157c-dk2.stm32
>   File          : tf-a-stm32mp157c-dk2.stm32
>   Size          : 245384 Bytes
>   Partition ID  : 0x01
>
> Download in Progress:
> [==================================================] 100%
>
> File download complete
> Time elapsed during download operation: 00:00:00.830
>
> RUNNING Program ...
>   PartID:      :0x01
> Start operation done successfully at partition 0x01
>
> Flashlayout Programming ...
> [==================================================] 100%
> Running Flashlayout Partition ...
> Flashlayout partition started successfully
>
>
> Memory Programming ...
> Opening and parsing file: barebox-stm32mp157c-dk2.img
>   File          : barebox-stm32mp157c-dk2.img
>   Size          : 284074 Bytes
>   Partition ID  : 0x03
>
> Download in Progress:
> [==================================================] 100%
>
> File download complete
> Time elapsed during download operation: 00:00:00.232
>
> RUNNING Program ...
>   PartID:      :0x03
>
> reconnecting the device ...
>
> Error: unable to reconnect the target device: time out expired
>
>
> Error: Start operation failed at partition 0x03
> Error: TSV flashing service failed

So in the console debug (via ttyACM usb gadget) I have these messages:

> NOTICE:  CPU: STM32MP157CAC Rev.B
> NOTICE:  Model: STMicroelectronics STM32MP157C-DK2 Discovery Board
> NOTICE:  Board: MB1272 Var2 Rev.C-01
> INFO:    Reset reason (0x14):
> INFO:      Pad Reset from NRST
> INFO:    PMIC version = 0x10
> INFO:    Using USB
> INFO:      Instance 2
> INFO:    Boot used partition fsbl1
> NOTICE:  BL2: v2.0-r3.0(debug):v2.0-stm32mp-r3
> NOTICE:  BL2: Built : 08:44:36, Feb 28 2020
> INFO:    BL2: Doing platform setup
> INFO:    RAM: DDR3-1066/888 bin G 1x4Gb 533MHz v1.45
> INFO:    Memory size = 0x20000000 (512 MB)
> INFO:    BL2 runs SP_MIN setup
> INFO:    BL2: Loading image id 4
> INFO:    Loading image id=4 at address 0x2ffef000
> INFO:    Image id=4 loaded: 0x2ffef000 - 0x30000000
> INFO:    BL2: Loading image id 5
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    UPLOAD :
> INFO:                   Phase ID : 0
> INFO:                   address 0x2ffed78c
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    UPLOAD :
> INFO:                   Phase ID : 0
> INFO:                   address 0x2ffed78c
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    Start Download partition 0 to address 0xc0000000 length 0
> INFO:    USB : DFU : end of download partition : 0
> INFO:    Loading image id=5 at address 0xc0100000
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    UPLOAD :
> INFO:                   Phase ID : 3
> INFO:                   address 0x2ffed78c
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    receive request 6
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    UPLOAD :
> INFO:                   Phase ID : 3
> INFO:                   address 0x2ffed78c
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    usb_partition_size: partition size : 0x454aa
> INFO:    Start Download partition 3 to address 0xc0100000 length 283818
> INFO:    USB : DFU : end of download partition : 3
> WARNING: Skip signature check (header option)
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    UPLOAD :
> INFO:                   Phase ID : 0
> INFO:                   address 0xffffffff
> INFO:    Send detach request
> INFO:    GETSTATUS :
> INFO:                   DFU_STATE_IDLE
> INFO:    Receive Detach
> INFO:    Image id=5 loaded: 0xc0100000 - 0xc01454aa
> NOTICE:  BL2: Booting BL32
> INFO:    Entry point address = 0x2ffef000
> INFO:    SPSR = 0x1d3
> NOTICE:  SP_MIN: v2.0-r3.0(debug):v2.0-stm32mp-r3
> NOTICE:  SP_MIN: Built : 08:44:45, Feb 28 2020
> INFO:    ARM GICv2 driver initialized
> INFO:    stm32mp HSI (18): Secure only
> INFO:    stm32mp HSE (20): Secure only
> INFO:    stm32mp PLL2 (27): Secure only
> INFO:    stm32mp PLL2_R (30): Secure only
> INFO:    SP_MIN: Initializing runtime services
> INFO:    SP_MIN: Preparing exit to normal world

So it seems it hangs on running or transferring Barebox as SSBL... Or 
the Barebox output is not the same as TF-A...

The Barebox is 2020.01.0, the steps to build it are:

1- make ARCH=arm stm32mp_defconfig
2- make ARCH=arm all

>   CHK     include/generated/version.h
>   CHK     include/generated/utsrelease.h
>   CREATE  include/config.h
>   CHK     include/generated/compile.h
>   ENV     defaultenv/barebox_default_env
>   ENV     defaultenv/defaultenv-2-base.bbenv
>   ENV     defaultenv/defaultenv-2-menu.bbenv
>   CHKFILESIZE images/start_stm32mp157c_dk2.pblb
>   LN      images/../barebox-flash-image
> images built:
> barebox-stm32mp157c-dk2.img

So the SSBL the .tsv file is referring to is the last build of Barebox.

Any hint? Clue? or whatever?

Is the console output of Barebox in the stm32mp_defconfig routed to the 
same RX & TX pins for the ttyACM as for the TF-A components?


Gianluca
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

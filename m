Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([46.4.235.150])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5Xn9-0004lN-69
 for barebox@lists.infradead.org; Tue, 02 May 2017 13:24:38 +0000
Received: from mailer.emlix.com (unknown [80.150.94.234])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 6863E25FDCC
 for <barebox@lists.infradead.org>; Tue,  2 May 2017 15:24:10 +0200 (CEST)
From: Andreas Wilhelm <andreas.wilhelm@emlix.com>
Message-ID: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
Date: Tue, 2 May 2017 15:24:10 +0200
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
Subject: barebox-state setup
To: barebox@lists.infradead.org

Hello,

I am using barebox state to exchange data between barebox and linux. From barebox I can access and change the state without any problems. If I try to access the state using the barebox-state util included with dt-utils (v2017.03.0), I get the following error:

> # barebox-state -g myvar
> of_get_devicepath: no 'label' property found in /soc/aips-bus@02000000/spba-bus@02000000/ecspi@02008000/m25p80@0
> Cannot find backend path in /state

This problem does not occur when using version 2016.08.0 of dt-utils. However, in this version I experienced an other problem. Even with backend-storage-type set to "circular" barebox attempted to storte data in "direct" mode:

> WARNING, no stridesize given although we use a direct file
> write. Starting in degraded mode
> Failed to initialize desired amount of direct buckets, only 1 of 3
> succeeded

Furthermore changing the state from within barebox worked just fine, while changing it using dt-utils from within a booted linux didn't.

The barebox state is stored in NOR-flash and configured in barebox as followed:

> state: state {
>     magic = <0x27031977>;
>     compatible = "barebox,state";
>     backend-type = "raw";
>     backend = &flash, "partname:barebox-state";
>     backend-storage-type = "circular";
>     status = "okay";
>
>     myvar {
>        reg = <0x00 0x4>;
>        type = "enum32";
>        names = "N", "Y";
>        default = <0>;
>     };
> };

> &ecspi1 {
>    status = "okay";
>
>    flash: m25p80@0 {
>        status = "okay";
>
>        ...
>
>        partition@0 {
>            label = "barebox-state";
>            reg = <0x0 0x40000>;
>        };
>
>       ...
>    };
> };

Within the linux kernel I use the following configuration:

> state: state {                                                         
>     magic = <0x27031977>;                                          
>     compatible = "barebox,state";                                  
>     backend-type = "raw";                                          
>     backend = <&statepart>;                                        
>     backend-storage-type = "circular";                             
>                                                                     
>     myvar {                                              
>         reg = <0x00 0x4>;                                      
>         type = "enum32";                                       
>         names = "N", "Y";                                      
>         default = <0>;                                         
>     };
> };
>
> &ecspi1 {                                                                      
>     ...                                                    
>                                                                     
>     flash: m25p80@0 {                                                      
>         ...                                                   
>         status = "okay";                                               
>
>         statepart: partition@0 {                                       
>             label = "barebox-state";                               
>             reg = <0x0 0x40000>;                                   
>         };                                                             
>
>         ...
>     };                                                          
> };

I am not sure why the call to "device_find_block_device" in dt-utils/src/libdt.c (function of_get_devicepath) does not return a valid mtd device, as it correctly setuip by the kernel.

> # dmesg  | grep -i spi
> [    2.265675] m25p80 spi0.0: found n25q128a13, expected m25p80
> [    2.271446] m25p80 spi0.0: n25q128a13 (16384 Kbytes)
> [    2.276593] 2 ofpart partitions found on MTD device spi0.0
> [    2.282113] Creating 2 MTD partitions on "spi0.0":
> [    2.312512] spi_imx 2008000.ecspi: probed

> # grep -r mtdblock6 /sys/devices/
> /sys/devices/soc0/soc/2000000.aips-bus/2000000.spba-bus/2008000.ecspi/spi_master/spi0/spi0.0/mtd/mtd6/mtdblock6/uevent:DEVNAME=mtdblock6

Ideas, opinions ?

Best regards
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

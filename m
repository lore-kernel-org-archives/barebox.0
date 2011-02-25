Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pt0DI-0005iW-G1
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 16:08:17 +0000
Received: from [10.96.97.181] (tmayer.mit.telemotive.de [10.96.97.181])
	by alderan.mit.telemotive.de (Postfix) with ESMTP id 2831AD7850
	for <barebox@lists.infradead.org>; Fri, 25 Feb 2011 17:08:11 +0100 (CET)
From: Thomas Mayer <thomas.mayer@telemotive.de>
MIME-Version: 1.0
References: <4D665867.4010404@telemotive.de>
	<20110224160440.GQ7381@pengutronix.de>
	<4D677315.5090600@telemotive.de>
	<20110225150657.GC29521@pengutronix.de>
In-Reply-To: <20110225150657.GC29521@pengutronix.de>
Message-ID: <4D67D3EA.9000106@telemotive.de>
Date: Fri, 25 Feb 2011 17:08:10 +0100
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Install barebox on target
To: barebox@lists.infradead.org

Hi Sasha,

thanks, I will try that.
Today I got our real hardware. It consists of the freescale cpu board, a
custom baseboard with a different display.
With that I was able to start barebox completely. Network works fine,
but I can't access the nand memory, because barebox doesn't find it at
startup. I added all possible nand drivers to barebox, but it still
doesn't work.

Any idea?

--------------------------------------- u-boot output
-----------------------------------------
U-Boot 2009.08 (Jan 13 2010 -
06:24:35)                                                                                                

                                                                                                                                       

CPU:   Freescale i.MX35 at 532
MHz                                                                                                     

Board: MX35 3STACK 2.0
[RST]                                                                                                           

I2C:  
ready                                                                                                                           

DRAM:  128
MB                                                                                                                          

Flash: 64
MB                                                                                                                           

NAND:  Manufacturer      : Samsung
(0xec)                                                                                              

Device Code       :
0xd7                                                                                                               

Cell Technology   :
MLC                                                                                                                

Chip Size         : 4
GiB                                                                                                              

Pages per Block   :
128                                                                                                                

Page Geometry     :
4096+218                                                                                                           

ECC Strength      : 8
bits                                                                                                             

ECC Size          : 512
B                                                                                                              

Data Setup Time   : 20
ns                                                                                                              

Data Hold Time    : 10
ns                                                                                                              

Address Setup Time: 25
ns                                                                                                              

GPMI Sample Delay : 6
ns                                                                                                               

tREA              :
Unknown                                                                                                            

tRLOH             :
Unknown                                                                                                            

tRHOH             :
Unknown                                                                                                            

Description       :
K9LBG08U0D                                                                                                         

Bad block table found at page 524160, version
0x01                                                                                     

Bad block table found at page 524032, version
0x01                                                                                     

2048
MiB                                                                                                                               

In:   
serial                                                                                                                          

Out:  
serial                                                                                                                          

Err:  
serial                                                                                                                          

PMIC@0x08:0x7 is
45d0                                                                                                                  

i.MX35 CPU board version
2.0                                                                                                           

Net:   FEC0
Hit any key to stop autoboot:  0



--------------------------------------- barebox output
------------------------------------------
barebox 2011.02.0 (Feb 25 2011 - 16:35:47)

Board: Freescale MX35 3Stack
No NAND device found!!!
cfi_probe: cfi_flash base: 0xa0000000 size: 0x04000000
mc13892-i2c@mc13892-i2c0: PMIC ID: 0x000045d0 [Rev: 2.0a]
smc911x: no smc911x found on 0xb6000000 (byte_test=0x00f000f0)
imx-ipu-fb@imx-ipu-fb0: i.MX Framebuffer driver
mc13892-i2c@mc13892-i2c0: revision: 0x45d0
i.MX35 PDK CPU board version 1.
Malloc space: 0x86f00000 -> 0x87f00000 (size 16 MB)
Stack space : 0x86ef8000 -> 0x86f00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...



regards
Thomas



Am 25.02.2011 16:06, schrieb Sascha Hauer:
> On Fri, Feb 25, 2011 at 10:15:01AM +0100, Thomas Mayer wrote:
>   
>> Hi Sascha,
>>
>> That's not quite correct. When you use the debug + personality board you
>> can boot directly from a mmc-card which contains bootloader, kernel and
>> rootfs without modifications. Only if you use the single personality
>> board, you have to modify die board a little bit.
>>     
> Ah, ok. I didn't know that.
>
>   
>> Thanks for your short introduction. I tried to run the barebox image
>> with u-boot and it seems to work. But after I get the following output
>> barebox stops and do nothing.
>>     
> That's a bug in the support for multiple network devices. Please pull
> the -next branch again, then it should work.
>
> Sascha
>
>
>   


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

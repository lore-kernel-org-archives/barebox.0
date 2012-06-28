Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ud04.udmedia.de ([194.117.254.44] helo=mail.ud04.udmedia.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkEta-0001JE-PE
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 13:36:31 +0000
Message-ID: <4FEC5DD6.4040308@crane-soft.de>
Date: Thu, 28 Jun 2012 15:36:22 +0200
From: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
MIME-Version: 1.0
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de> <4FEBFF6C.6010304@crane-soft.de>
 <20120628104341.GW1623@pengutronix.de>
In-Reply-To: <20120628104341.GW1623@pengutronix.de>
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Am 28.06.2012 12:43, schrieb Sascha Hauer:
>> ...
>> However, I still cannot access the mmc from barebox. It would be enough to be able to
>> read the mmc. I want to be able to store kernel or rootfs image updates on the mmc
>> and flash them to either NAND or NOR after reboot to enable remote update services.
>>
>> Question: "How can I access the MMC from barebox (read only may be sufficient)
> 
> The pcm043 currently does not have mmc support. You have to add this to
> the board file:
> 
> imx35_add_mmc0(NULL);
> 
> or
> 
> imx35_add_mmc1(NULL);
> 
> depending on which port is routed to the slot. Also you have to setup
> the iomuxer (you can probably copy the pin settings from the kernel). Of
> course you also have to enable MMC support in the config.
> 
> Sascha
> 
> 

I have tried to update the board code accordingly but stumbled upon another
problem. The size of barebox increased to 0x40bb7 so I changed the
partition definitions in pcm043.c as follows:

#define CONFIG_MX35_BBSIZE      0x42000
   ...
   devfs_add_partition("nor0", 0x00000, CONFIG_MX35_BBSIZE, PARTITION_FIXED, "self0"); /* ourself */
   devfs_add_partition("nor0", CONFIG_MX35_BBSIZE, 0x20000, PARTITION_FIXED, "env0");
   ...
Barebox boots OK but after having saved the environment (saveenv) it dow not boot anymore.

Barebox boot messages ...

Malloc space: 0x86e00000 -> 0x87dfffff (size 16 MB)
Stack space : 0x86df8000 -> 0x86e00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment   <== expected
running /env/bin/init...

devinfo <== What is defined ?
...
`---- cfi_flash0
     `---- 0x00000000-0x01ffffff: /dev/nor0
     `---- 0x00000000-0x00041fff: /dev/self0
     `---- 0x00042000-0x0005ffff: /dev/env0

saveenv  <== save the environment
reset    <== nothing after here

What is wrong here?

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

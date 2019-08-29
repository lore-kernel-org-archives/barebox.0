Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KCR-0002ZU-87
 for barebox@lists.infradead.org; Thu, 29 Aug 2019 13:10:52 +0000
References: <001201d55693$b674d930$235e8b90$@qq.com>
 <2d4a0456-33eb-3257-17c8-7bd3cee2e24f@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5e3bc263-3d09-5a43-f7d7-4ded4f78bf03@pengutronix.de>
Date: Thu, 29 Aug 2019 15:10:48 +0200
MIME-Version: 1.0
In-Reply-To: <2d4a0456-33eb-3257-17c8-7bd3cee2e24f@pengutronix.de>
Content-Language: en-US
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
Subject: Re: mips : How to run barebox by bootm in ram(u-boot command)?
To: Oleksij Rempel <o.rempel@pengutronix.de>, duhuanpeng <iu87m888m@qq.com>, barebox@lists.infradead.org

Hello,

(replying here because I don't have the original mail)

On 8/29/19 3:03 PM, Oleksij Rempel wrote:
> Hi,
> 
> On 19.08.19 15:40, duhuanpeng wrote:
>> Hello! How to run Barebox from ram now?
>>
>> I have a board with 64MiB ram and 16MiB flash, flash it to the first sector
>> by
>> original u-boot, maybe brick the board. Debrick is difficult due to limited
>> tools.
>>
>> So, I want to run this in ram. And my u-boot *don't* have the "go" command.
>> I have to use bootm command to run Barebox.

Note you don't want to use the go command, because it doesn't properly
shutdown U-Boot. This is problematic if your U-Boot configures memory caches
or devices employing DMA. 

>>
>> - - - - - -
>> mkimage -A mips -O linux -T kernel -C none -a 80060000 -e 80060000 -n
>> 'barebox-tp-link' -d barebox.bin uImage
>> tftpboot 0x81000000 uImage
>> bootm 0x81000000
>> - - - -
>> I have try these above, but no luck.
> 
> Please, try 0xa1000000 instead of 0x81000000-
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQqJ3-0008UL-JR
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 08:30:16 +0000
Received: by mail-it0-x244.google.com with SMTP id a3-v6so11634372itd.0
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 01:29:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180607072037.3jw4exty4huobpm6@pengutronix.de>
References: <20180606151602.11094-1-pvizeli@syshack.ch>
 <20180607072037.3jw4exty4huobpm6@pengutronix.de>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Thu, 7 Jun 2018 10:29:53 +0200
Message-ID: <CACvFaDd0CUgO8+ExRriuXd4cSNLhvv5pvE=Ar07LX0ytLJiHTQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] command: oftree: support load device tree from memory
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Pascal Vizeli <pvizeli@syshack.ch>

Thanks for this workaround. I will use this.

I will later send a patch they store the device tree address on
raspberry into a variable.
So that user can load this, if he need it.

The question is now, would you allow to load a device tree with a
memory address on oftree utility?
And if yes, where is the best place to add this function.

greets
Pascal

2018-06-07 9:20 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Wed, Jun 06, 2018 at 03:16:02PM +0000, Pascal Vizeli wrote:
>> DON'T MERGE: this is only a concept patch.
>>
>> On some device, barebox is the second bootloader. The first bootloader provide
>> some times allready a better device tree as the linux kernel own.
>> Mostly barebox can't boot from this device tree but the linux kernel can.
>>
>> This patch allow to load a device tree from memory from first bootloader.
>
> Note while it may be handy to have a command for that, you can already
> do this without writing code:
>
> memcpy -d /mydtb <dtbaddress> 0 0x10000
> oftree -l /mydtb
>
> The only drawback is that you have to guess the size of the dtb.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

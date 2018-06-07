Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x242.google.com ([2607:f8b0:4001:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQsNK-0003g3-Vc
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 10:42:40 +0000
Received: by mail-io0-x242.google.com with SMTP id t6-v6so11234041iob.10
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 03:42:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180607085312.xtrjlsmuxfvfv4jj@pengutronix.de>
References: <20180606151602.11094-1-pvizeli@syshack.ch>
 <20180607072037.3jw4exty4huobpm6@pengutronix.de>
 <CACvFaDd0CUgO8+ExRriuXd4cSNLhvv5pvE=Ar07LX0ytLJiHTQ@mail.gmail.com>
 <20180607085312.xtrjlsmuxfvfv4jj@pengutronix.de>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Thu, 7 Jun 2018 12:42:27 +0200
Message-ID: <CACvFaDehzoBCPQRELost2kPNOMM-RaXxjk+pk59H7at4WRr68Q@mail.gmail.com>
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

That sounds good. Thanks for the direction.

My workaround look like:
memcpy -d /tmp/rpi.dtb 0xf42400 0 0x10000
of_dump -f /tmp/rpi.dtb > /dev/null
oftree -f -l /tmp/rpi.dtb

Without 'of_dump', the 'oftree' give a bad magic 0x5.... error.

I need add support for HassOS to raspberry and in a second round I
will try to implement your suggestion.

best regards
Pascal

2018-06-07 10:53 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Jun 07, 2018 at 10:29:53AM +0200, Pascal Vizeli wrote:
>> Thanks for this workaround. I will use this.
>>
>> I will later send a patch they store the device tree address on
>> raspberry into a variable.
>> So that user can load this, if he need it.
>>
>> The question is now, would you allow to load a device tree with a
>> memory address on oftree utility?
>> And if yes, where is the best place to add this function.
>
> Instead of a command I would prefer if you could just store r2 from
> the original bootloader you have been started with, and in a board
> specific initcall you copy the devicetree you found in memory to a
> file. Then the user has access to the devicetree with regular file
> commands and there is no need to guess the memory address where the
> original bootloader stored the device tree.
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

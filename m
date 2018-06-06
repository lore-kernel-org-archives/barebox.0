Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQeYu-0001le-JU
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 19:57:41 +0000
Received: by mail-it0-x242.google.com with SMTP id n7-v6so9828413itn.1
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 12:57:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180606151602.11094-1-pvizeli@syshack.ch>
References: <20180606151602.11094-1-pvizeli@syshack.ch>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 6 Jun 2018 12:57:28 -0700
Message-ID: <CAHQ1cqFr4ASW-hD96HOM7WyeRjPCFf5CnXcbBMX1fkQJQTEcUg@mail.gmail.com>
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
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 6, 2018 at 8:16 AM, Pascal Vizeli <pvizeli@syshack.ch> wrote:
> DON'T MERGE: this is only a concept patch.
>
> On some device, barebox is the second bootloader. The first bootloader provide
> some times allready a better device tree as the linux kernel own.
> Mostly barebox can't boot from this device tree but the linux kernel can.
>
> This patch allow to load a device tree from memory from first bootloader.
>
> For implementation:
>
> Not sure what is the best. Maybe we can create a of_unflatten_file_dtb() and
> of_unflatten_memory_dtb() they return fdt. There are a lot place they load
> a fdt from a file and repeat the same code.
>

IMHO, an ideal solution to this problem would be to either extend
RAMFS or create a separate FS that would allow mounting an arbitrary
blob in RAM as a file with size determined using
file_name_detect_type() + custom code or specified explicitly.

That's quite a bit more work that this patch, though.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

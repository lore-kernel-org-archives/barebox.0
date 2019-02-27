Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyw4e-0001c7-NH
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 10:04:27 +0000
References: <20190226130529.12517-1-m.niestroj@grinn-global.com>
 <20190227074636.s5ljrhjncx2uv5ei@pengutronix.de>
From: Marcin =?utf-8?Q?Niestr=C3=B3j?= <m.niestroj@grinn-global.com>
In-reply-to: <20190227074636.s5ljrhjncx2uv5ei@pengutronix.de>
Date: Wed, 27 Feb 2019 11:04:18 +0100
Message-ID: <8736o97djx.fsf@grinn-global.com>
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
Subject: Re: [PATCH] ARM: i.MX6UL: liteSOM: depend on DDR controller settings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bartosz Bilas <b.bilas@grinn-global.com>


Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Tue, Feb 26, 2019 at 02:05:29PM +0100, Marcin Niestroj wrote:
>> Initially we depended on DDR controller settings for liteSOM and liteboard. With
>> 33fdc89d4cbd ("dts: update to v5.0-rc1") a `device_type = "memory";` property
>> was added to imx6ul-litesom.dtsi file, which causes "ram0" to be added with
>> 512MB size (value in dtsi) instead of the real 256MB size that is configured in
>> barebox-grinn-liteboard-256mb.img. As a result Linux kernel fails to boot.
>>
>> Lets depend on DDR controller settings, by removing whole `/memory` node from
>> device tree. This makes barebox-grinn-liteboard-256mb.img able to boot Linux
>> kernel once again.
>
> This issue should also be fixed by:
>
> | commit 8a29e7b493c8c2aa57174c9e79c14b93c9807a4b
> | Author: Marco Felsch <m.felsch@pengutronix.de>
> | Date:   Tue Feb 12 16:10:41 2019 +0100
> |
> |     memory: of_fixup: adapt to new memory layout
> |
> |     Since kernel 4.16 the memory nodes got a @<reg> suffix so the fixup
> |     won't work correctly anymore, because instead of adapting the extisting
> |     one the fixup creates a new node and keeps the old (maybe incorrect)
> |     node.
> |
> |     To be compatible with the old and new layout delete the found memory
> |     node and create a new one. The new node follows the new @<reg> style.
> |
> |     The patch also renames the node parameter to make it clearer.
> |
> |     Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>
> I would prefer this patch as it solves the issue for all boards.

We need this patch as well. The problem that I want to solve with
liteboard is configuring memory banks, which is done much earlier. In
current master branch a single memory bank is added from device-tree
(of_probe -> ... -> of_add_memory_bank). In case of liteboard this is
configured to 512MB. Then a imx6_mmdc_add_mem() is executed, which tries
to add 256MB memory bank (in case of barebox-grinn-liteboard-256mb.img).
This fails inside barebox_add_memory_bank(), because we get -EBUSY from
request_iomem_region() there. This makes no problem in Barebox
yet. However, when booting Linux kernel of_memory_fixup() function gets
called. It sets 512MB in fdt once again, which results in boot failure
when jumping into kernel.

I agree, that it is better to solve this kind of issues for all
boards. In order to achieve that we need to either:
1) "overwrite" in imx6_mmdc_add_mem() what we have set in
   of_add_memory_bank(),
2) make sure imx6_mmdc_add_mem() gets called earlier than
   of_add_memory_bank().

--
Regards,
Marcin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

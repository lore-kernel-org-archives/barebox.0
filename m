Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvWST-0003CQ-Tf
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 18:44:14 +0000
Received: by mail-pd0-f181.google.com with SMTP id v10so1503236pde.12
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 11:43:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140612054226.GC15686@pengutronix.de>
References: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
 <20140612054226.GC15686@pengutronix.de>
Date: Fri, 13 Jun 2014 11:43:52 -0700
Message-ID: <CAHQ1cqFUQNropsFM59FXo1dPx3WGbBnVB5X4EH9kCG4g8x_P2w@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: i.MX6Q SABRESD board and barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Thanks for the quick response! I tried imx_v7_defconfig but it seemed
to be as ill-suited for what I am trying to do as
freescale-mx6-sabresd_defconfig.
What I am trying to get is an ELF file that I would be able to use
with DS-5 debugger by uploading it directly into RAM and also an image
that I would be able to supply to the build-in ROM bootloader.
Imx_v7_defconfig specifies TEXT_BASE as 0x0 which isn't much better
for the purpose of using DS-5 since that memory is mapped to boot ROM.

For now I just ended up setting it up manually to 0x10000000 in menuconfig.

Thanks,
Andrey


On Wed, Jun 11, 2014 at 10:42 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Wed, Jun 11, 2014 at 02:59:53PM -0700, Andrey Smirnov wrote:
>> Hello everyone,
>>
>> I am trying to use barebox on a SabreSD board with i.MX6Q processor
>> and seem to be running into problems. One odd thing that I noticed was
>> that default configuration, freescale-mx6-sabresd_defconfig, specifies
>> TEXT_BASE as 0x08f80000, which is the address mapped to external
>> interface module(EIM). At the same time load address specified in
>> arch/arm/boards/freescale-mx6-sabresd/lash-header-mx6-sabresd.imxcfg
>> is 0x10000000, which is the start of DRAM. Is there some MMU setup
>> that accounts for that, that I am missing?
>
> 0x08f80000 is plain wrong for TEXT_BASE. Probably noone noticed because
> the sabresd can be built with imx_v7_defconfig. Please use this config
> instead. The individual board configs will be removed soon for boards
> which can be built with the imx_v7_defconfig.
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

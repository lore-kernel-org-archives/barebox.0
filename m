Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeML-0001Fs-NP
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:44:19 +0000
Date: Fri, 12 Jun 2020 09:44:15 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <1963800635.6997992.1591947855180.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200612074101.o7pqzl2t7f45r4ee@pengutronix.de>
References: <20200612071036.27864-1-cleger@kalray.eu>
 <20200612074101.o7pqzl2t7f45r4ee@pengutronix.de>
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
Subject: Re: [PATCH v6 0/8] elf: add better bootm support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Oleksij Rempel <linux@rempel-privat.de>



----- On 12 Jun, 2020, at 09:41, Oleksij Rempel o.rempel@pengutronix.de wrote:

> Nice work. Thank you!
> Following variants was tested:
> - net boot
> - boot from local ram copy
> - boot from spi flash
> 
> Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>

Finally ;) Thanks again for testing it on mips !

> 
> On Fri, Jun 12, 2020 at 09:10:28AM +0200, Clement Leger wrote:
>> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
>> simply pass the file to the bootm handler and the read done on it will
>> read the entire flash partition. This series starts by some cleanup and
>> then modify the elf loader to load the elf file without copying the whole
>> elf file to an intermediate buffer. Only the elf header is copied in
>> order to parse the elf file into a list of segment and then, the segments
>> are loaded directly from the file.
>> 
>> A special handling for the elf file is also added in bootm data to allow
>> using directly the elf file structure. Finally the mips bootm handler is
>> modified to use bootm_load_os directly instead of manual elf loading.
>> 
>> Compilation for both mips and arm has been tested but run on qemu-malta was not
>> possible. Changes have been tested on kvx architecture for which bootm support
>> has been added and will be submitted.
>> 
>> Changes v5 -> v6
>>  - Add missing elf boundaries computation patch
>> 
>> Changes v4 -> v5
>>  - Rework elf loading to load from file rather than a buffer
>>  - Use calloc instead of xzalloc in elf file loading
>>  - Add check of program headers in elf check
>> 
>> Changes v3 -> v4
>>  - Fix init of elf entry address to be used by bootm_load_elf
>> 
>> Changes v2 -> v3
>>  - Integrate elf loading in bootm_load_os
>>  - Add patch to remove now unused elf_load_image/elf_release_image
>>  - Use malloc instead of xmalloc and check return value
>> 
>> Changes v1 -> v2
>>  - Add BOOTM_ELF config to select elf support and add checks in code
>>  - Add an elf_get_mem_size function to avoid computing elf size in bootm.c
>>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
>>  - Fix data->elf NULL reset
>>  - Remove elf struct entirely from mips bootm code
>> 
>> Clement Leger (8):
>>   common: elf: add computation of elf boundaries
>>   common: elf: fix warning on 32 bits architectures
>>   common: elf: use calloc instead of xzalloc
>>   common: elf: check number of elf program headers
>>   common: elf: load elf directly from file
>>   common: elf: add elf_open, elf_close and elf_load
>>   common: bootm: add support for elf file loading
>>   mips: lib: bootm: use bootm elf loading capabilities
>> 
>>  arch/mips/lib/bootm.c |  25 ++---
>>  common/Kconfig        |   8 ++
>>  common/bootm.c        |  33 ++++++
>>  common/elf.c          | 231 +++++++++++++++++++++++++++++++++++-------
>>  include/bootm.h       |   3 +
>>  include/elf.h         |  16 ++-
>>  6 files changed, 261 insertions(+), 55 deletions(-)
>> 
>> --
>> 2.17.1
>> 
>> 
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>> 
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

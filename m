Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdb2-0004J4-9f
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 06:55:26 +0000
Date: Fri, 12 Jun 2020 08:55:21 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <962943155.6989814.1591944921269.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200612052234.dafdsfq6yuoeakjn@pengutronix.de>
References: <20200611080207.6482-1-cleger@kalray.eu>
 <20200612052234.dafdsfq6yuoeakjn@pengutronix.de>
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
Subject: Re: [PATCH v5 0/7] elf: add better bootm support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Oleksij Rempel <linux@rempel-privat.de>

Hi Oleksij,

----- On 12 Jun, 2020, at 07:22, Oleksij Rempel o.rempel@pengutronix.de wrote:

> Hi Clement,
> 
> suddenly I was not able to apply you changes on current barebox/master
> branch. There seems to be some missing changes?

Sorry, I forgot the '^' on the base sha1 during my git format-patch.
So patch 1 adding elf boundary computation is missing in this serie.
Should I resend a V5 [RESEND] or a V6 ?

> 
> For example, you patch is changing this struct:
> @@ -405,7 +405,8 @@ struct elf_image {
> 	u64 entry;
> 	void *low_addr;
> 	void *high_addr;
> -	void *buf;
> +	void *hdr_buf;
> +	char *filename;
> };
> 
> But, current version of it is:
> struct elf_image {
>	struct list_head list;
>	u8 class;
>	u64 entry;
>	void *buf;
> };
> 
> On Thu, Jun 11, 2020 at 10:02:00AM +0200, Clement Leger wrote:
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
>> Clement Leger (7):
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
>>  common/elf.c          | 226 +++++++++++++++++++++++++++++++++++-------
>>  include/bootm.h       |   3 +
>>  include/elf.h         |   9 +-
>>  6 files changed, 248 insertions(+), 56 deletions(-)
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

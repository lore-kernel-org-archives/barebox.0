Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f47.google.com ([209.85.160.47])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm0KO-0008Mt-G5
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 10:59:45 +0000
Received: by mail-pb0-f47.google.com with SMTP id un1so2644573pbc.34
 for <barebox@lists.infradead.org>; Fri, 21 Dec 2012 02:59:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAA4bVAGk02KAHJH6mOfzoa0-5C=P7_7ADEMtg9jXPSk-Fr5UVw@mail.gmail.com>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
 <1355952595-1432-3-git-send-email-antonynpavlov@gmail.com>
 <20121221074939.GL26326@pengutronix.de>
 <CAA4bVAGk02KAHJH6mOfzoa0-5C=P7_7ADEMtg9jXPSk-Fr5UVw@mail.gmail.com>
Date: Fri, 21 Dec 2012 14:59:41 +0400
Message-ID: <CAA4bVAG1KNLb1AJK4mOd2KM582xV2u1Ug7Aw42LXJQQA9_jYjQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/5] bootm: add very basic ELF support (stolen from kexec)
To: barebox <barebox@lists.infradead.org>

On 21 December 2012 11:49, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Dec 20, 2012 at 01:29:52AM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  commands/Kconfig           |    7 +
>>  common/Kconfig             |    3 +
>>  common/filetype.c          |    5 +
>>  include/filetype.h         |    1 +
>>  lib/Makefile               |    1 +
>>  lib/kexec/Makefile         |    1 +
>>  lib/kexec/kexec-elf-exec.c |   85 ++++
>>  lib/kexec/kexec-elf.c      |  927 ++++++++++++++++++++++++++++++++++++++++++++
>>  lib/kexec/kexec-elf.h      |  110 ++++++
>>  lib/kexec/kexec.c          |  251 ++++++++++++
>>  lib/kexec/kexec.h          |  117 ++++++
>>  11 files changed, 1508 insertions(+)
>>  create mode 100644 lib/kexec/Makefile
>>  create mode 100644 lib/kexec/kexec-elf-exec.c
>>  create mode 100644 lib/kexec/kexec-elf.c
>>  create mode 100644 lib/kexec/kexec-elf.h
>>  create mode 100644 lib/kexec/kexec.c
>>  create mode 100644 lib/kexec/kexec.h
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 75ebfb8..aef4ecb 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -403,6 +403,13 @@ config CMD_BOOTM_AIMAGE
>>       help
>>         Support using Android Images.
>>
>> +config KEXEC
>> +     bool
>> +     prompt "bootm ELF image support"
>> +     depends on CMD_BOOTM && HAS_KEXEC
>> +     help
>> +       Support using ELF Images.
>> +
>>  config CMD_UIMAGE
>>       select UIMAGE
>>       tristate
>> diff --git a/common/Kconfig b/common/Kconfig
>> index b60b78b..84cfc70 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -674,3 +674,6 @@ endmenu
>>
>>  config HAS_DEBUG_LL
>>       bool
>> +
>> +config HAS_KEXEC
>> +     bool
>> diff --git a/common/filetype.c b/common/filetype.c
>> index 748e364..1bb9cac 100644
>> --- a/common/filetype.c
>> +++ b/common/filetype.c
>> @@ -23,6 +23,7 @@
>>  #include <fs.h>
>>  #include <malloc.h>
>>  #include <errno.h>
>> +#include <elf.h>
>>
>>  struct filetype_str {
>>       const char *name;       /* human readable filetype */
>> @@ -48,6 +49,7 @@ static const struct filetype_str filetype_str[] = {
>>       [filetype_bmp] = { "BMP image", "bmp" },
>>       [filetype_png] = { "PNG image", "png" },
>>       [filetype_ext] = { "ext filesystem", "ext" },
>> +     [filetype_elf] = { "ELF", "elf" },
>>  };
>>
>>  const char *file_type_to_string(enum filetype f)
>> @@ -169,6 +171,9 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
>>       if (buf16[512 + 28] == le16_to_cpu(0xef53))
>>               return filetype_ext;
>>
>> +     if (strncmp(buf8, ELFMAG, 4) == 0)
>> +             return filetype_elf;
>> +
>
> The filetypes are sorted by size in this function. I think this should
> go some positions up.
>
>> +/*
>> + *   Load the new kernel
>> + */
>> +static int my_load(char *kernel, unsigned long kexec_flags)
>> +{
>> +     char *kernel_buf;
>> +     off_t kernel_size;
>> +     int i = 0;
>> +     int result;
>> +     struct kexec_info info;
>> +     long native_arch;
>> +
>> +     memset(&info, 0, sizeof(info));
>> +     info.segment = NULL;
>> +     info.nr_segments = 0;
>> +     info.entry = NULL;
>> +     info.kexec_flags = kexec_flags;
>> +
>> +     result = 0;
>> +     /* slurp in the input kernel */
>> +     /* FIXME: add a decompresion routines insted of read_file() */
>> +     kernel_buf = read_file(kernel, &kernel_size);
>> +
>> +     for (i = 0; i < kexec_file_types; i++) {
>> +             if (kexec_file_type[i].probe(kernel_buf, kernel_size) >= 0)
>> +                     break;
>> +     }
>> +
>> +     if (i == kexec_file_types) {
>> +             printf("Cannot determine the file type "
>> +                             "of %s\n", kernel);
>> +             return -1;
>> +     }
>> +
>> +     /* Figure out our native architecture before load */
>> +#if 0
>> +     native_arch = physical_arch();
>> +     if (native_arch < 0) {
>> +             return -1;
>> +     }
>> +#endif
>> +     native_arch = 0;
>> +     info.kexec_flags |= native_arch;
>> +
>> +     result = kexec_file_type[i].load(kernel_buf, kernel_size, &info);
>> +     if (result < 0) {
>> +             switch (result) {
>> +             case EFAILED:
>> +             default:
>> +                     printf("Cannot load %s\n", kernel);
>> +                     break;
>> +             }
>> +             return result;
>> +     }
>> +
>> +     /* Verify all of the segments load to a valid location in memory */
>> +
>> +     /* Sort the segments and verify we don't have overlaps */
>> +     if (sort_segments(&info) < 0) {
>> +             return -1;
>> +     }
>> +
>> +     result = kexec_load(info.entry,
>> +             info.nr_segments, info.segment, info.kexec_flags);
>> +
>> +     if (result != 0) {
>> +             /* The load failed, print some debugging information */
>> +             printf("kexec_load failed: %s\n",
>> +                     strerror(errno));
>> +             printf("entry       = %p flags = %lx\n",
>> +                     info.entry, info.kexec_flags);
>> +             print_segments(&info);
>> +     }
>> +
>> +     return result;
>> +}
>> +
>> +#include <boot.h>
>> +#include <init.h>
>> +#include <binfmt.h>
>> +
>> +static int do_bootm_elf(struct image_data *data)
>> +{
>> +     my_load(data->os_file, 0);
>> +
>> +     /* unreachable(); */
>
> This is not unreachable. my_load can return errors. Unfortunately they
> are all -1 (which would be nice to have fixed)

I agree.

Just now I use debug mode then bootm loads elf to unused memory
regions for relocation and returns control to shell, so one can check
memory map via 'iomem'. See this example from my [RFC 0/5]:

barebox:/ bootm env/vmlinux.qemu-malta-be
handler failed with No error

barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x1e000000 - 0x1e3fffff (size 0x00400000) cfi_flash0
  0xa0000000 - 0xafffffff (size 0x10000000) ram0
    0xa17f9000 - 0xa17fffff (size 0x00007000) stack
    0xa1800000 - 0xa27fffff (size 0x01000000) malloc space
    0xa2800000 - 0xa2d4e464 (size 0x0054e465) barebox
    0xa2d50114 - 0xa2d56bb0 (size 0x00006a9d) bss
    0xa2d56bc0 - 0xa316f29b (size 0x004186dc) kexec relocatable segments
    0xa316f2a0 - 0xa316f307 (size 0x00000068) kexec relocator
    0xa316f310 - 0xa316f31f (size 0x00000010) kexec control segments
  0xb80003f8 - 0xb80003ff (size 0x00000008) ns16550_serial0

barebox:/ go 0xa316f2a0

In this sample I use 'go' to jump to the start of the kexec relocator.

Of cause this behavour will be changed in the future.

>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RamJS-0004TD-OS
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 10:43:51 +0000
Received: by qadc14 with SMTP id c14so437364qad.15
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 02:43:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20111214101749.GB27267@pengutronix.de>
References: <CAJfOKBws5V3VmfnW0eXZkgR+TgAo4_ZpSviy6pLF61fevpG7DQ@mail.gmail.com>
 <20111214101749.GB27267@pengutronix.de>
Date: Wed, 14 Dec 2011 11:43:49 +0100
Message-ID: <CAJfOKBxPeLdOvaj2XahTAXTsN+AArF+VTzw4gkKJMhrfNEUziA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Linker question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

2011/12/14 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Franck,
>
> On Wed, Dec 14, 2011 at 12:14:08AM +0100, Franck JULLIEN wrote:
>> Hi,
>>
>> I'm doing some tests with the openrisc processor. As I'm building
>> barebox I have a question
>> related to the linking of barebox.
>>
>> In order to get uint64 arithmetic functions, I need to add "-L $(shell
>> dirname `$(CC) $(CFLAGS) -print-libgcc-file-name`) -lgcc"
>> to the final link (only way ? found this in uboot).
>>
>> However, if I do this using LDFLAGS_barebox I get :
>>
>> /opt/crosstool/or32/or32-elf/bin/or32-elf-ld =A0-Map barebox.map -L
>> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1=
.0rc4
>> -lgcc -o barebox -T arch/openrisc/cpu/barebox.lds =A0--start-group
>> common/built-in.o =A0drivers/built-in.o =A0commands/built-in.o
>> lib/built-in.o =A0crypto/built-in.o =A0net/built-in.o =A0fs/built-in.o
>> arch/openrisc/boards/generic/built-in.o =A0arch/openrisc/lib/built-in.o
>> arch/openrisc/cpu/built-in.o --end-group
>>
>> And it doesn't work. It works if "-L
>> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1=
.0rc4
>> -lgcc" is at the end of the command line:
>>
>> /opt/crosstool/or32/or32-elf/bin/or32-elf-ld -Map barebox.map -o
>> barebox -T arch/openrisc/cpu/barebox.lds --start-group
>> common/built-in.o =A0drivers/built-in.o =A0commands/built-in.o
>> lib/built-in.o =A0crypto/built-in.o =A0net/built-in.o =A0fs/built-in.o
>> arch/openrisc/boards/generic/built-in.o =A0arch/openrisc/lib/built-in.o
>> arch/openrisc/cpu/built-in.o --end-group -L
>> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1=
.0rc4
>> -lgcc
>>
>> Any idea on why this is happening ?
>>
>> The only way I found to fix this is to move LDFLAGS_barebox in the
>> main Makefile:
>>
>> - =A0 =A0 =A0cmd_barebox__ ?=3D $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $=
@ \
>> + =A0 =A0 =A0cmd_barebox__ ?=3D $(LD) $(LDFLAGS) =A0-o $@ \
>> =A0 =A0 =A0 =A0-T $(barebox-lds) $(barebox-head) =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 \
>> - =A0 =A0 =A0--start-group $(barebox-common) --end-group =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0\
>> + =A0 =A0 =A0--start-group $(barebox-common) --end-group $(LDFLAGS_bareb=
ox)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
>> =A0 =A0 =A0 =A0$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
>>
>> What do you think about this problem ?
>
> The kernel currently does it the same way for openrisc. The other
> architectures have there own implementation of the 64bit arithmetix
> functions inside the kernel (and barebox) which is IMO cleaner. Maybe
> you can grab them from the gcc source code and use them in barebox
> instead.
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |

Ok thanks,

I'll see what I can do.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

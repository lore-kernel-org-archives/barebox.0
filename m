Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RabY3-00075F-QH
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 23:14:12 +0000
Received: by qadc14 with SMTP id c14so152727qad.15
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2011 15:14:08 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 14 Dec 2011 00:14:08 +0100
Message-ID: <CAJfOKBws5V3VmfnW0eXZkgR+TgAo4_ZpSviy6pLF61fevpG7DQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Linker question
To: barebox <barebox@lists.infradead.org>

Hi,

I'm doing some tests with the openrisc processor. As I'm building
barebox I have a question
related to the linking of barebox.

In order to get uint64 arithmetic functions, I need to add "-L $(shell
dirname `$(CC) $(CFLAGS) -print-libgcc-file-name`) -lgcc"
to the final link (only way ? found this in uboot).

However, if I do this using LDFLAGS_barebox I get :

/opt/crosstool/or32/or32-elf/bin/or32-elf-ld  -Map barebox.map -L
/opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
-lgcc -o barebox -T arch/openrisc/cpu/barebox.lds  --start-group
common/built-in.o  drivers/built-in.o  commands/built-in.o
lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
arch/openrisc/cpu/built-in.o --end-group

And it doesn't work. It works if "-L
/opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
-lgcc" is at the end of the command line:

/opt/crosstool/or32/or32-elf/bin/or32-elf-ld -Map barebox.map -o
barebox -T arch/openrisc/cpu/barebox.lds --start-group
common/built-in.o  drivers/built-in.o  commands/built-in.o
lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
arch/openrisc/cpu/built-in.o --end-group -L
/opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
-lgcc

Any idea on why this is happening ?

The only way I found to fix this is to move LDFLAGS_barebox in the
main Makefile:

-      cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+      cmd_barebox__ ?= $(LD) $(LDFLAGS)  -o $@ \
       -T $(barebox-lds) $(barebox-head)                         \
-      --start-group $(barebox-common) --end-group                  \
+      --start-group $(barebox-common) --end-group $(LDFLAGS_barebox)
               \
       $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)

What do you think about this problem ?

Thanks,
Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x229.google.com ([2607:f8b0:4003:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xbk05-00088e-2F
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 05:41:25 +0000
Received: by mail-oi0-f41.google.com with SMTP id u20so6444246oif.14
 for <barebox@lists.infradead.org>; Tue, 07 Oct 2014 22:41:03 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 8 Oct 2014 13:41:03 +0800
Message-ID: <CANvTkNYb_zj62mcuzTcY5WOiTU07HnSqkiz851wswY0eN59euw@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: 
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I find that most xxx_defconfig stop linking when console support set
to CONSOLE_NONE
compile log like:
http://paste.ubuntu.com/8518456/

- - - -
  | Symbol: CONSOLE_NONE [=y]                                               |
  | Type  : boolean                                                         |
  | Prompt: none                                                            |
  |   Location:                                                             |
  |     -> General Settings                                                 |
  |       -> console support (<choice> [=y])                                |
  |   Defined at common/Kconfig:522                                         |
  |   Depends on: <choice>                                                  |

- - - -

most error causes by pr_print undefined.

this macro/function is
defined in:
common/console_common.c
declare in:
include/printk.h

when CONSOLE_NONE is defined,
pr_print is not compiled (rid by #ifndef/#endif) with common/console_common.o
but <printk.h> is included allmost anywhere by including <common.h>
- - - -
#ifndef __COMMON_H_
#define __COMMON_H_     1

#include <stdio.h>
...
#include <asm/common.h>
#include <printk.h>
- - - -
so using pr_print always can past compile because it is declared by
including <common.h>.
but breaks link.

I am confusing with CONSOLE_NONE, what is it mean?
1. the board don't have a console?
        is the board still can have a serial port, but not accepts input?
2. where should the debug messages go?
        the serial port is not a console but
        when CONSOLE_NONE defined, printf just a nothing but return a 0,
        but the pr_print() declared but not defined.
- - - -
FILE: include/stdio.h
static inline int printf(const char *fmt, ...)
{
        return 0;
}
- - - -


- - - -
duhuanpeng
(+86)13719074147

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

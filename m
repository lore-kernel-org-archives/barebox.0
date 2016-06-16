Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDUGy-0005I7-MV
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 10:11:42 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 9F3AA27A617
 for <barebox@lists.infradead.org>; Thu, 16 Jun 2016 12:11:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by imapserver.systec-electronic.com (Postfix) with ESMTP id 7E20EDA08E5
 for <barebox@lists.infradead.org>; Thu, 16 Jun 2016 12:11:16 +0200 (CEST)
Received: from imapserver.systec-electronic.com ([127.0.0.1])
 by localhost (imapserver.systec-electronic.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id XK5ZdINvrRQO for <barebox@lists.infradead.org>;
 Thu, 16 Jun 2016 12:11:10 +0200 (CEST)
Received: from [192.168.10.177] (ws-krueger.systec.local [192.168.10.177])
 by imapserver.systec-electronic.com (Postfix) with ESMTP id C11BADA0A56
 for <barebox@lists.infradead.org>; Thu, 16 Jun 2016 12:11:10 +0200 (CEST)
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <57627B3E.5020100@systec-electronic.com>
Date: Thu, 16 Jun 2016 12:11:10 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ARM memory layout
To: barebox@lists.infradead.org

Hello,

during the porting of barebox to a new i.MX35 board I stumbled over some 
crazy things with the memory layout. The comments in file 
arch/arm/cpu/entry.c seem to be wrong or at least misleading.

We configured barebox as non-relocatable image. So I think the 
configured TEXT_BASE is very important.

I use the following configuration with 128 MB RAM:
CONFIG_TEXT_BASE=0x87000000
CONFIG_STACK_SIZE=0x100000
CONFIG_MALLOC_SIZE=0xd00000

The stack is configured very large in this project, because of other reason.

I get the following memory layout:
     0x87ffffff top of RAM
      |           free-space (see arm_mem_stack() in
      |                       arch/arm/include/asm/barebox-arm.h)
     0x87ff0000 start of 64 kB free-space (vector table)
     0x87feffff top of stack
      |
     0x87ef0000 start of 1 MB reserved stack space
     0x87eeffff
      |         16 kB early translation table
     0x87eec000 early TTB (translation table base)
     0x87eebfff malloc end
      |          13 MB malloc space
     0x871ec000 malloc start
      |         some small free space
      |         barebox binary
     0x87000000 TEXT_BASE

This does not comply to the comment in the above mentioned source file. 
There the malloc space and the vector table are missing.

I would expect some check in the source code, when TEXT_BASE is too high 
or barebox binary is too large, so they collide with malloc space or 
stack. By reverse engineering the detailed memory layout above, I 
discovered that in another project the TEXT_BASE falls within the malloc 
space.

How does is run on other ARM boards? Are they all running with 
CONFIG_RELOCATABLE=Y?

Best regards,
   Daniel

-- 

SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
   Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

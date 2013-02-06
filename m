Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f366.mail.ru ([217.69.141.8])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U32l4-0005eS-Pf
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 11:01:44 +0000
Received: from mail by f366.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1U32l0-0001xM-R9
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 15:01:39 +0400
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 06 Feb 2013 15:01:38 +0400
Message-ID: <1360148498.214727698@f366.mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?Tk9SIG1lbW9yeSBkcml2ZXIgZmFpbCB3aXRoIE1NVSBlbmFibGVk?=
To: barebox@lists.infradead.org

Hello.

I have a problem with NOR flash when enabling MMU.
Probably this happen due NOR start address is 0x0.
Should we a remap memory addresses same as we do it for kernel? 
Or can someone tell what could be the problem?
Tnanks!

...
register_device: cfi_flash0
xmalloc c0385f80 (size 592)
request_region ok: 0x00000000:0x01ffffff
xmalloc c03861d8 (size 36)
xmalloc c0386210 (size 4)
flash detect cfi
flash_write_cmd: c0385f80 0 0 => 00000000 0x00f0
flash_write_cmd: c0385f80 0 0 => 00000000 0x00ff
flash_write_cmd: c0385f80 0 55 => 00000055 0x0098
is= cmd 51(Q) addr 00000010 flash_write_cmd: c0385f80 0 555 => 00000555 0x0098
is= cmd 51(Q) addr 00000010 flash_write_cmd: c0385f80 0 0 => 00000000 0xf0f0
fw addr 00000000 val f0f0
unable to handle NULL pointer dereference at address 0x00000000
pc : [<c078932c>]    lr : [<c0789324>]
sp : c07ffe98  ip : c07ff9ae  fp : 00000000
r10: 00000000  r9 : 00000000  r8 : 00000000
r7 : 00000000  r6 : 00000000  r5 : 00000000  r4 : 0000f0f0
r3 : 00000000  r2 : c03804a0  r1 : 0000000a  r0 : 0000001a
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32

no stack data available

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

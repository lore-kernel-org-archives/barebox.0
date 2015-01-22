Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEGL7-0002Bo-CD
 for barebox@lists.infradead.org; Thu, 22 Jan 2015 11:54:21 +0000
Received: from pps.filterd (m0048206.ppops.net [127.0.0.1])
 by m0048206.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id t0MBqsXq048500
 for <barebox@lists.infradead.org>; Thu, 22 Jan 2015 06:53:58 -0500
Received: from alpmlip13.e2k.ad.ge.com ([12.43.191.1])
 by m0048206.ppops.net-00176a03. with ESMTP id 1s2y3w82dj-7
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Thu, 22 Jan 2015 06:53:58 -0500
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id BCCD5E01C8
 for <barebox@lists.infradead.org>; Thu, 22 Jan 2015 11:53:56 +0000 (GMT)
Message-ID: <54C0E4D4.2010402@ge.com>
Date: Thu, 22 Jan 2015 11:53:56 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
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
Subject: ARM newbie
To: barebox@lists.infradead.org


I am doing my first port to an ARM CPU (Broadcom chip). For testing I
built the friendlyarm-tiny210 and created an objdump to see what the
code look like:

barebox:     file format elf32-littlearm


Disassembly of section .text:

23e00000 <start>:
23e00000:   ea000012        b       23e00050 <start+0x50>
...
23e00050:   ea000013        b       23e000a4 <barebox_arm_reset_vector>
...

23e000a4 <barebox_arm_reset_vector>:
23e000a4:   e52de004        push    {lr}       ; (str lr, [sp, #-4]!)

I am a bit surprise to see a push to stack as the first instruction of
barebox_arm_reset_vector as the stack pointer has not been defined yet.
Or is there a pre boot loader that is not built as part of the
friendlyarm-tiny210  build.

Other BSP I have built do not produce this push instruction.
Where is the difference coming from in the build?

Are all BSP having a lowlevel.c file assumed to have a pre-bootloader?

Cheers,
R.










_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

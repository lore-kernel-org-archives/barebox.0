Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZHGL-0005OF-58
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 10:36:01 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 s91AZboo012021
 for <barebox@lists.infradead.org>; Wed, 1 Oct 2014 19:35:37 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id s91AZbo15297
 for <barebox@lists.infradead.org>; Wed, 1 Oct 2014 19:35:37 +0900
Date: Wed, 01 Oct 2014 19:35:34 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Message-Id: <20141001193534.5A4B.AA925319@jp.panasonic.com>
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
Subject: Newbie question
To: barebox@lists.infradead.org

Hi.


Please forgive me if I am asking a silly newbie question.

I have some knowledge of U-Boot
but I have just started digging into barebox.


My simple question is, something like SPL
(secondary program loader) in U-boot is covered by barebox?



I assume the following steps
for running Linux on our boards by booting from NAND device.


[1] BootROM (hard-wired)

[2] Tiny boot program
    for initializing SDRAM, etc.

[3] High-level boot loader
    for loading the kernel, handling device tree etc.

[4] Linux



I guess [3] is covered by barebox.

Is [2] supported by barebox? Or is it like Do-It-Yourself thing?


Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

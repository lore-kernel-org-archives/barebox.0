Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4XaV-0006IG-Uo
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:32 +0000
Received: by mail-lb0-f177.google.com with SMTP id z5so3766158lbh.36
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:08 -0800 (PST)
Received: from doce.NIISI (ppp37-190-57-47.pppoe.spdop.ru. [37.190.57.47])
 by mx.google.com with ESMTPSA id c15sm9287199lbq.11.2014.01.18.07.13.06
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Jan 2014 07:13:07 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:50 +0400
Message-Id: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/13] MIPS: add initial Loongson-based boards support
To: barebox@lists.infradead.org

This patch series adds very initial Loongson CPU family support.
The only supported board is Loongson-1B-based LS1B development board.

The Loongson-1B SoC has good support in the mainline linux kernel,
so many things can be ported from linux in the future. 

[PATCH 01/13] MIPS: add initial Loongson-based boards support
[PATCH 02/13] MIPS: add initial Loongson-family documentation
[PATCH 03/13] MIPS: add Loongson-1B CPU Kbuild stuff
[PATCH 04/13] MIPS: add initial Loongson-1X SoC stuff
[PATCH 05/13] MIPS: add Loongson-1B processor constants and CPU probe
[PATCH 06/13] MIPS: mach-loongson: add loongson-ls1b board
[PATCH 07/13] MIPS: mach-loongson: add DEBUG_LL support
[PATCH 08/13] MIPS: loongson-ls1b: add DEBUG_LL support
[PATCH 09/13] MIPS: loongson-ls1b: add ns16550-based console
[PATCH 10/13] MIPS: loongson-ls1b: add PBL support
[PATCH 11/13] MIPS: loongson-ls1b: add NMON support
[PATCH 12/13] MIPS: loongson-ls1b: add documentation
[PATCH 13/13] MIPS: add loongson-ls1b_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

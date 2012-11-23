Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tc0Wk-00085u-KG
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 21:11:16 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so5173292lbo.36
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 13:11:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 24 Nov 2012 01:10:56 +0400
Message-Id: <1353705059-7792-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 0/3] commands: md, mw: add '-x' option (swap bytes)
To: barebox@lists.infradead.org

Most of my MIPS boards run barebox in big-endian mode, but
sometimes I need see state of little-endian registers
(e.g. registers of PCI-connected peripherals) and it is not
very hande to swap bytes manually.

This patch series add to memory commands (md and mw) ability
to swap bytes "on the fly".

[RFC 1/3] add swab (swap bytes) option to memory_display()
[RFC 2/3] commands: md: add '-x' option (swap bytes)
[RFC 3/3] commands: mw: add '-x' option (swap bytes)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

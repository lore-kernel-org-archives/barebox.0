Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSPjg-0001Rc-U9
 for barebox@lists.infradead.org; Thu, 10 May 2012 09:34:08 +0000
Received: by lbbgg6 with SMTP id gg6so1123584lbb.36
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 02:32:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 May 2012 13:32:05 +0400
Message-Id: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/5] MIPS: add XBurst processor family support
To: barebox@lists.infradead.org

This patch series introduce XBurst processor family support to barebox.

XBurst is an CPU family developed by Ingenic Semiconductor
to address the requirements of mobile devices. XBurst processors
are used in mobile gaming consoles (e.g. notable Dingoo A320),
e-books, mp3-players and so on.

The patches have preliminary status. Please, review it!

[RFC 1/5] MIPS: add common header file for DEBUG_LL via NS16550
[RFC 2/5] MIPS: add XBurst processor family support
[RFC 3/5] MISP: XBurst: add JZ4755 CPU support
[RFC 4/5] MIPS: XBurst: add Ritmix RZX-50 board support
[RFC 5/5] MIPS: add defconfig for Ritmix RZX-50 board

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

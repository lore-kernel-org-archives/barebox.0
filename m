Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUjqf-0002xT-TE
 for barebox@lists.infradead.org; Wed, 16 May 2012 19:25:26 +0000
Received: by laap9 with SMTP id p9so968940laa.36
 for <barebox@lists.infradead.org>; Wed, 16 May 2012 12:25:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 May 2012 23:25:12 +0400
Message-Id: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 0/4] MIPS: add XBurst processor family support
To: barebox@lists.infradead.org

This patch series introduce XBurst processor family support to barebox.

XBurst is an CPU family developed by Ingenic Semiconductor
to address the requirements of mobile devices. XBurst processors
are used in mobile gaming consoles (e.g. notable Dingoo A320),
e-books, mp3-players and so on.

The patches have preliminary status. Please, review it!

[RFC v2 1/4] MIPS: add XBurst processor family support
[RFC v2 2/4] MIPS: XBurst: add JZ4755 CPU support
[RFC v2 3/4] MIPS: XBurst: add Ritmix RZX-50 board support
[RFC v2 4/4] MIPS: add defconfig for Ritmix RZX-50 board

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

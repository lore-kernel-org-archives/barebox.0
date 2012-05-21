Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWNeC-0002jC-Q5
 for barebox@lists.infradead.org; Mon, 21 May 2012 08:07:21 +0000
Received: by bkwj4 with SMTP id j4so4852784bkw.36
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 01:07:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 May 2012 12:07:08 +0400
Message-Id: <1337587631-16650-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/3] MIPS: import CPU and cache detection code from Linux
To: barebox@lists.infradead.org

THE PATCHES HAVE PRELIMINARY STATUS. PLEASE, DON'T COMMIT IT!

The patches lack support of Ingenic and Broadcom chips!

This patch series introduces MIPS cache support to barebox.
It adds functions to detect CPU capabilities.

[RFC 1/3] MIPS: introduce C architecture-specific low-level init
[RFC 2/3] MIPS: import CPU and cache detection code from Linux
[RFC 3/3] MIPS: cpuinfo: import CPU message from Linux

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

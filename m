Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWo1c-0007WD-6t
 for barebox@lists.infradead.org; Tue, 22 May 2012 12:17:16 +0000
Received: by bkwj4 with SMTP id j4so6374512bkw.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 05:17:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 22 May 2012 16:16:58 +0400
Message-Id: <1337689021-1395-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/3] MIPS: import CPU and cache detection code from Linux
 3.4
To: barebox@lists.infradead.org

This patch series introduces MIPS cache support to barebox.
It adds functions to detect CPU capabilities.

As compared with the [RFC] series this series adds Ingenic
and Broadcom CPU support. The patches tested on all supported
by barebox MIPS boards.

[PATCH v2 1/3] MIPS: introduce C architecture-specific low-level
[PATCH v2 2/3] MIPS: import CPU and cache detection code from Linux 3.4
[PATCH v2 3/3] MIPS: cpuinfo: import CPU message from Linux 3.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

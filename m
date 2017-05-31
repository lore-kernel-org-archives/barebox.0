Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dG6FC-0007xO-45
 for barebox@lists.infradead.org; Wed, 31 May 2017 16:13:12 +0000
Received: by mail-wm0-x241.google.com with SMTP id k15so4763197wmh.3
 for <barebox@lists.infradead.org>; Wed, 31 May 2017 09:12:49 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 31 May 2017 18:12:39 +0200
Message-Id: <cover.1496247033.git.aleksander@aleksander.es>
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
Subject: [PATCH 0/2] Enabling support for the FIFO based console in sandbox
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Hey,

I've been trying to make the FIFO based extra sandbox console work for some time now, and ended up preparing a couple of patches that seem to serve the purpose. I'm not totally sure whether this hasn't been working for a long time or if I was doing somethin wrong myself (possibly!).

The first one is a fix to allow registering multiple sandbox consoles; looks like this was not possible with the current codebase as the additional consoles were all being registered as devices with the same name and id.

The second patch is open for discussion. I wasn't able to make the setup work with separate console devices registered for input and output, the only way I could make it work was registering a console that did both input and output, so I ended up modifying it so that the logic of the application allows only that, an extra bidirectional console using two separate FIFO files. If either --stdin or --stdout is not given, or if either of them gets given multiple times, an error is issued. With this setup it works for me, I can run barebox and use either the default stdin/stdout console or the FIFO based one, but maybe we're losing other useful usecases.

What do you think?

Aleksander Morgado (2):
  sandbox: fix registering multiple consoles
  sandbox: --stdin and --stdout allow max one bidirectional console

 arch/sandbox/board/console.c                   |  5 ++-
 arch/sandbox/mach-sandbox/include/mach/linux.h |  2 +-
 arch/sandbox/os/common.c                       | 50 +++++++++++++++++++-------
 drivers/serial/linux_console.c                 |  3 ++
 4 files changed, 44 insertions(+), 16 deletions(-)

--
2.13.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

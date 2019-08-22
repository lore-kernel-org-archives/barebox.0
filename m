Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zm-4P
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:56 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:36 +0200
Message-Id: <20190822061941.6093-1-ahmad@a3f.at>
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
Subject: [PATCH 0/5] sandbox: support -fsanitize={address,ubsan}
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

I get a double free inside of SDL's X11 backend when trying to use the
sandbox SDL video driver on wayland. I am not sure what to do about this
yet, but I made these few patches to get nicer looking backtraces for a
start.

Ahmad Fatoum (5):
  sandbox: include header to provide missing prototype
  common: add generic CONFIG_UBSAN_SANITIZE_ALL plumbing
  common: add generic CONFIG_KASAN option
  sandbox: support Address and UndefinedBehavior sanitizers
  commands: fix unaligned accesses of aliased commands on amd64

 Makefile                     |  5 +++++
 arch/sandbox/Kconfig         |  2 ++
 arch/sandbox/Makefile        | 13 ++++++++++++-
 arch/sandbox/board/devices.c |  1 +
 common/Kconfig               | 34 ++++++++++++++++++++++++++++++++++
 common/command.c             |  2 +-
 scripts/Makefile.lib         |  5 +++++
 scripts/Makefile.ubsan       | 19 +++++++++++++++++++
 8 files changed, 79 insertions(+), 2 deletions(-)
 create mode 100644 scripts/Makefile.ubsan

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

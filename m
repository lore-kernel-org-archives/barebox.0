Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFa9-0000cf-D2
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 10:00:14 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so16244520ljg.5
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2019 03:00:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Jul 2019 13:00:01 +0300
Message-Id: <20190702100001.28530-4-antonynpavlov@gmail.com>
In-Reply-To: <20190702100001.28530-1-antonynpavlov@gmail.com>
References: <20190702100001.28530-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] sandbox: drop blank lines at EOF
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/board/board.c   | 1 -
 arch/sandbox/board/console.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index dcad3c249b..1f6392d15e 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -58,4 +58,3 @@ static int devices_init(void)
 }
 
 device_initcall(devices_init);
-
diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index 006bbd1a6e..4b251e9087 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -40,4 +40,3 @@ int barebox_register_console(int stdinfd, int stdoutfd)
 
 	return sandbox_add_device(dev);
 }
-
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

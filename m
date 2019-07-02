Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFa7-0000cZ-TE
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 10:00:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so16280089ljh.2
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2019 03:00:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Jul 2019 12:59:59 +0300
Message-Id: <20190702100001.28530-2-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] sandbox: prevent segfault in tap_alloc()
To: barebox@lists.infradead.org

Tap network interface initialization in sandbox
barebox leads to segfault under Debian Buster/Sid.

The problem is that strcpy(dev, ifr.ifr_name) inside
tap_alloc() tries to alter read-only data passed
by tap_probe() and barebox receives SIGSEGV.

Nobody uses network interface name returned
by tap_alloc() so we can drop this strcpy().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/mach-sandbox/include/mach/linux.h | 2 +-
 arch/sandbox/os/tap.c                          | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 52360f8771..7d0ed55735 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -8,7 +8,7 @@ int sandbox_add_device(struct device_d *dev);
 struct fb_bitfield;
 
 int linux_register_device(const char *name, void *start, void *end);
-int tap_alloc(char *dev);
+int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
 int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
diff --git a/arch/sandbox/os/tap.c b/arch/sandbox/os/tap.c
index 0e29e8e8ad..3a29a4be64 100644
--- a/arch/sandbox/os/tap.c
+++ b/arch/sandbox/os/tap.c
@@ -28,7 +28,7 @@
 #include <linux/if_tun.h>
 #include <string.h>
 
-int tap_alloc(char *dev)
+int tap_alloc(const char *dev)
 {
 	struct ifreq ifr;
 	int fd, err;
@@ -55,7 +55,6 @@ int tap_alloc(char *dev)
 		return err;
 	}
 
-	strcpy(dev, ifr.ifr_name);
 	return fd;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

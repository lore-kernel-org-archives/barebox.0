Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1ZpV-0005W4-TA
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 10:28:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 12:28:01 +0200
Message-Id: <1374575282-9592-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
References: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] UBI: remove old ubi support
To: barebox@lists.infradead.org

To update to the latest UBI support from the Kernel first remove
the old UBI support. Without it the update will be even less reviewable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/Kconfig       |    7 -
 drivers/mtd/ubi/Makefile      |    3 -
 drivers/mtd/ubi/build.c       | 1056 --------------------------
 drivers/mtd/ubi/cdev.c        |  251 -------
 drivers/mtd/ubi/crc32defs.h   |   32 -
 drivers/mtd/ubi/debug.c       |  189 -----
 drivers/mtd/ubi/debug.h       |  149 ----
 drivers/mtd/ubi/eba.c         | 1253 ------------------------------
 drivers/mtd/ubi/io.c          | 1271 -------------------------------
 drivers/mtd/ubi/kapi.c        |  635 ----------------
 drivers/mtd/ubi/misc.c        |  103 ---
 drivers/mtd/ubi/scan.c        | 1359 ---------------------------------
 drivers/mtd/ubi/scan.h        |  162 ----
 drivers/mtd/ubi/ubi-barebox.h |  186 -----
 drivers/mtd/ubi/ubi.h         |  646 ----------------
 drivers/mtd/ubi/upd.c         |  442 -----------
 drivers/mtd/ubi/vmt.c         |  863 ---------------------
 drivers/mtd/ubi/vtbl.c        |  834 --------------------
 drivers/mtd/ubi/wl.c          | 1672 -----------------------------------------
 include/linux/mtd/ubi.h       |  183 -----
 include/mtd/ubi-media.h       |  374 ---------
 21 files changed, 11670 deletions(-)
 delete mode 100644 drivers/mtd/ubi/Kconfig
 delete mode 100644 drivers/mtd/ubi/Makefile
 delete mode 100644 drivers/mtd/ubi/build.c
 delete mode 100644 drivers/mtd/ubi/cdev.c
 delete mode 100644 drivers/mtd/ubi/crc32defs.h
 delete mode 100644 drivers/mtd/ubi/debug.c
 delete mode 100644 drivers/mtd/ubi/debug.h
 delete mode 100644 drivers/mtd/ubi/eba.c
 delete mode 100644 drivers/mtd/ubi/io.c
 delete mode 100644 drivers/mtd/ubi/kapi.c
 delete mode 100644 drivers/mtd/ubi/misc.c
 delete mode 100644 drivers/mtd/ubi/scan.c
 delete mode 100644 drivers/mtd/ubi/scan.h
 delete mode 100644 drivers/mtd/ubi/ubi-barebox.h
 delete mode 100644 drivers/mtd/ubi/ubi.h
 delete mode 100644 drivers/mtd/ubi/upd.c
 delete mode 100644 drivers/mtd/ubi/vmt.c
 delete mode 100644 drivers/mtd/ubi/vtbl.c
 delete mode 100644 drivers/mtd/ubi/wl.c
 delete mode 100644 include/linux/mtd/ubi.h
 delete mode 100644 include/mtd/ubi-media.h

diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
deleted file mode 100644
index 6df954c..0000000
diff --git a/drivers/mtd/ubi/Makefile b/drivers/mtd/ubi/Makefile
deleted file mode 100644
index cef1141..0000000
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
deleted file mode 100644
index 1ea1209..0000000
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
deleted file mode 100644
index 4bc4a99..0000000
diff --git a/drivers/mtd/ubi/crc32defs.h b/drivers/mtd/ubi/crc32defs.h
deleted file mode 100644
index f5a5401..0000000
diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
deleted file mode 100644
index 42e5668..0000000
diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
deleted file mode 100644
index b6ffa45..0000000
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
deleted file mode 100644
index fe4aae2..0000000
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
deleted file mode 100644
index 000fc5d..0000000
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
deleted file mode 100644
index 7cf200c..0000000
diff --git a/drivers/mtd/ubi/misc.c b/drivers/mtd/ubi/misc.c
deleted file mode 100644
index 1ef0e47..0000000
diff --git a/drivers/mtd/ubi/scan.c b/drivers/mtd/ubi/scan.c
deleted file mode 100644
index fedea5b..0000000
diff --git a/drivers/mtd/ubi/scan.h b/drivers/mtd/ubi/scan.h
deleted file mode 100644
index 5ea0da4..0000000
diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
deleted file mode 100644
index 7574607..0000000
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
deleted file mode 100644
index 964a3c4..0000000
diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
deleted file mode 100644
index 9f5e06f..0000000
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
deleted file mode 100644
index 0d6995e..0000000
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
deleted file mode 100644
index 0468f59..0000000
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
deleted file mode 100644
index 7f99ac2..0000000
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
deleted file mode 100644
index f243c8e..0000000
diff --git a/include/mtd/ubi-media.h b/include/mtd/ubi-media.h
deleted file mode 100644
index d552db8..0000000
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

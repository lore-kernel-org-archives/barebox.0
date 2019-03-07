Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmc-0004ud-PA
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id j3so10604977pgm.11
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:12 -0800
Message-Id: <20190307074926.20539-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/17] MIPS: ath79: Use errno to get error code from
 open_and_lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Open_and_lseek() return actual error code via errno, so change the
code to use it instead of return value.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/mips/mach-ath79/art.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 984d08736..2a2099e9f 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -44,8 +44,8 @@ static int art_read_mac(struct device_d *dev, const char *file)
 	fd = open_and_lseek(file, O_RDONLY, AR93000_EPPROM_OFFSET);
 	if (fd < 0) {
 		dev_err(dev, "Failed to open eeprom path %s %d\n",
-		       file, fd);
-		return fd;
+		       file, -errno);
+		return -errno;
 	}
 
 	rbytes = read_full(fd, &eeprom, sizeof(eeprom));
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

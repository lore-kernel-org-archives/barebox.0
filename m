Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlN5-000418-Fc
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:06:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:50 +0200
Message-Id: <20200914100553.24808-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 4/7] readkey: fix buffer overflow handling longer
 escape sequences
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

My terminal emulator uses "\e[5;5~" (six bytes) to represent a
Ctrl+PageUp, this overflows the esc buffer, which is only 5 bytes long
as both UBSan and ASAN report.

We have a check that should've avoided it, but it has an off-by one,
which corrupts memory on sizes >= 4. Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/readkey.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index fd7295104694..c26e9d51aba9 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -61,7 +61,7 @@ int read_key(void)
 				esc[i] = getchar();
 				if (esc[i++] == '~')
 					break;
-				if (i == ARRAY_SIZE(esc))
+				if (i == ARRAY_SIZE(esc) - 1)
 					return -1;
 			}
 		}
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

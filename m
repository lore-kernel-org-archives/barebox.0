Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5FD9-0001Jw-Ar
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 14:20:36 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Thu, 10 Jul 2014 16:19:56 +0200
Message-Id: <11e164853111770873ab2c9837914ad8633fa1ba.1405001817.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1405000144.git.silvio.fricke@gmail.com>
References: <cover.1405000144.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1405000144.git.silvio.fricke@gmail.com>
References: <cover.1405000144.git.silvio.fricke@gmail.com>
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
Subject: [PATCH 3/3] commands: i2c: add message if write is not successful
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 commands/i2c.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index e3d79b0..d6c5412 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -114,8 +114,12 @@ static int do_i2c_write(int argc, char *argv[])
 		*(buf + i) = (char) simple_strtol(argv[optind+i], NULL, 16);
 
 	ret = i2c_write_reg(&client, reg | wide, buf, count);
-	if (ret != count)
+	if (ret != count) {
+		if (verbose)
+			printf("write aborted, count(%i) != writestatus(%i)\n",
+				count, ret);
 		goto out;
+	}
 	ret = 0;
 
 	if (verbose) {
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

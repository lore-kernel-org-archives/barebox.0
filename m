Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5FD9-0001Jy-Ad
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 14:20:36 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Thu, 10 Jul 2014 16:19:54 +0200
Message-Id: <061be75780747357c4ea1d4aa37d17847986e9c2.1405001817.git.silvio.fricke@gmail.com>
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
Subject: [PATCH 1/3] commands: i2c: verbose option doesn't need argument
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 commands/i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 2811f6a..7a39e6e 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -75,7 +75,7 @@ static int do_i2c_write(int argc, char *argv[])
 	int addr = -1, reg = -1, count = -1, verbose = 0, ret, opt, i, bus = 0, wide = 0;
 	u8 *buf;
 
-	while ((opt = getopt(argc, argv, "a:b:r:v:w")) > 0) {
+	while ((opt = getopt(argc, argv, "a:b:r:vw")) > 0) {
 		switch (opt) {
 		case 'a':
 			addr = simple_strtol(optarg, NULL, 0);
@@ -155,7 +155,7 @@ static int do_i2c_read(int argc, char *argv[])
 	u8 *buf;
 	int count = -1, addr = -1, reg = -1, verbose = 0, ret, opt, bus = 0, wide = 0;
 
-	while ((opt = getopt(argc, argv, "a:b:c:r:v:w")) > 0) {
+	while ((opt = getopt(argc, argv, "a:b:c:r:vw")) > 0) {
 		switch (opt) {
 		case 'a':
 			addr = simple_strtol(optarg, NULL, 0);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

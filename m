Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4i-0001L2-Fl
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:25 +0100
Message-Id: <1261151305-18627-37-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-36-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-14-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-15-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-16-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-17-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-18-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-19-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-20-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-21-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-22-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-23-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-24-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-25-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-26-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-27-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-28-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-29-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-30-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-31-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-32-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-33-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-34-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-35-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-36-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 36/36] Fix barebox Version number
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 5c45db6..f2dc079 100644
--- a/Makefile
+++ b/Makefile
@@ -1,7 +1,7 @@
-VERSION = 2
-PATCHLEVEL = 0
+VERSION = 2009
+PATCHLEVEL = 12
 SUBLEVEL = 0
-EXTRAVERSION =-rc10
+EXTRAVERSION =-pre
 NAME = Amissive Actinocutious Kiwi
 
 # *DOCUMENTATION*
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

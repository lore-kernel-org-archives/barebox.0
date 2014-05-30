Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi8-0002Bb-0g
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:48 +0000
Received: by mail-we0-f181.google.com with SMTP id w61so1688264wes.12
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:25 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:31 +0200
Message-Id: <1401440856-6145-6-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 05/10] net: show enetaddr in lowercase
To: barebox@lists.infradead.org

"ifconfig" and "ip" from normal Linux userspace shows ethernet addresses
normally in lowercase.  And the %pM format specifier in Linux does that,
too. Conform to this custom formatting.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 net/net.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index f54267a..07350ad 100644
--- a/net/net.c
+++ b/net/net.c
@@ -160,7 +160,7 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6])
 
 void ethaddr_to_string(const u8 enetaddr[6], char *str)
 {
-	sprintf(str, "%02X:%02X:%02X:%02X:%02X:%02X",
+	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
 		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
 		 enetaddr[4], enetaddr[5]);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

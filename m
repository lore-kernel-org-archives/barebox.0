Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XddnA-0006wy-AH
 for barebox@lists.infradead.org; Mon, 13 Oct 2014 11:27:57 +0000
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Date: Mon, 13 Oct 2014 13:27:20 +0200
Message-Id: <1413199640-6317-1-git-send-email-embedded24@evers-fischer.de>
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
Subject: [PATCH] lib: parameter: fixed doku renamed ip -> ipaddr
To: barebox@lists.infradead.org
Cc: Rolf Evers-Fischer <embedded24@evers-fischer.de>

Long time ago all ".ip" parameters have been replaced with ".ipaddr".

Signed-off-by: Rolf Evers-Fischer <embedded24@evers-fischer.de>
---
 lib/parameter.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 84a632c..c4c30ca 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -776,8 +776,8 @@ with device paramters. Device parameters are always strings, although there
 are functions to interpret them as something else. 'hush' users can access
 parameters as a local variable which have a dot (.) in them. So setting the
 IP address of the first ethernet device is a matter of typing
-'eth0.ip=192.168.0.7' on the console and can then be read back with
-'echo $eth0.ip'. The @ref devinfo_command command shows a summary about all
+'eth0.ipaddr=192.168.0.7' on the console and can then be read back with
+'echo $eth0.ipaddr'. The @ref devinfo_command command shows a summary about all
 devices currently present. If called with a device id as parameter it shows the
 parameters available for a device.
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC27T-0003uJ-5m
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 10:28:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 46135A0034E
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 11:28:25 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Wed, 30 Nov 2016 11:27:40 +0100
Message-Id: <1480501660-4540-2-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1480501660-4540-1-git-send-email-s.lengfeld@phytec.de>
References: <1480501660-4540-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH 2/2] Documentation: remote-control: fix markup
To: barebox@lists.infradead.org

Fix missing '*' for bold text and remove indentation. It should be
rendered as a single paragraph.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 Documentation/user/remote-control.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
index b9275ce..99c2181 100644
--- a/Documentation/user/remote-control.rst
+++ b/Documentation/user/remote-control.rst
@@ -112,10 +112,10 @@ This is especially useful for flawy serial connections.
   barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ ls
   .      ..     dev    env    mnt
 
-*NOTE** To terminate resulting Barebox console session press 'Ctrl-T'
+**NOTE** To terminate resulting Barebox console session press 'Ctrl-T'
 
 **NOTE** You can also send 'ping' request to the target without
- closing console session by pressint 'Ctrl-P'
+closing console session by pressint 'Ctrl-P'
 
 transferring files
 ------------------
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

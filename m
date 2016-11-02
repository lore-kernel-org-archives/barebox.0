Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1qNu-000130-3a
 for barebox@lists.infradead.org; Wed, 02 Nov 2016 07:54:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0420BA0041B
 for <barebox@lists.infradead.org>; Wed,  2 Nov 2016 08:55:05 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Wed, 2 Nov 2016 08:54:30 +0100
Message-Id: <1478073270-3527-4-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
References: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH upstream 4/4] docs: state: make string variable type clearer
To: barebox@lists.infradead.org

Only fixed length strings are supported. Make the wording clearer.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index e39245f..438cc43 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -51,8 +51,8 @@ variable. The node name may end with ``@<ADDRESS>``, but the suffix is
 stripped from the variable name.
 
 State variables have a type. Currenty supported types are: ``uint8``,
-``uint32``, ``enum32``, ``mac`` address or ``string``. Variable length
-strings are not planned.
+``uint32``, ``enum32``, ``mac`` address or ``string`` (fixed length string).
+Variable length strings are not planned.
 
 Required properties:
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

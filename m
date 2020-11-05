Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr40060.outbound.protection.outlook.com ([40.107.4.60]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kalg2-0003q7-5B
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 20:16:13 +0000
From: Matthias Fend <Matthias.Fend@wolfvision.net>
Date: Thu, 5 Nov 2020 20:16:04 +0000
Message-ID: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH] Documentation: state: add a little note about modifying a
 state variable in the frontend
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
---
 Documentation/user/state.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 78ce24f..d9a8e76 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -689,4 +689,5 @@ be accessed like normal shell variables. The ``state`` command is used
 to save/restore a *state* variable set to the backend device.
 
 After initializing the variable can be accessed with ``$state.foo``.
+To modify the value of a state variable use ``nv dev.state.foo=bar``.
 ``state -s`` stores the *state* to the backend device.
-- 
2.9.3
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

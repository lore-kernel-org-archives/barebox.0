Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKf-0004Hh-7t
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:01:58 +0000
Received: by mail-wm0-x243.google.com with SMTP id z81so9768325wmb.4
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:38 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:21 +0100
Message-Id: <20180224150121.28309-10-aleksander@aleksander.es>
In-Reply-To: <20180224150121.28309-1-aleksander@aleksander.es>
References: <20180224150121.28309-1-aleksander@aleksander.es>
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
Subject: [PATCH v3 9/9] docs: add reference to libratp-barebox in the
 remote-control docs
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 Documentation/user/remote-control.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
index 217251429..c8b7442f1 100644
--- a/Documentation/user/remote-control.rst
+++ b/Documentation/user/remote-control.rst
@@ -18,6 +18,13 @@ Additionally files can be transferred from/to barebox and a regular
 console offers interactive access to barebox on flawy serial
 connections.
 
+In addition to the bbremote tool provided with barebox, other third
+party tools exist that use the same RATP based protocol to communicate
+with the barebox instance, e.g. the libratp-barebox C library and the
+ratp-barebox-cli tool:
+
+  https://github.com/aleksander0m/libratp-barebox
+
 Enabling remote control support
 -------------------------------
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

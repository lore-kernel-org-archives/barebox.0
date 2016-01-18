Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aKyQh-0000Rh-Jc
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 01:16:24 +0000
Received: by mail-io0-x241.google.com with SMTP id q21so39432894iod.3
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 17:16:03 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1452251635-14689-9-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
 <1452251635-14689-9-git-send-email-s.hauer@pengutronix.de>
Date: Sun, 17 Jan 2016 17:16:02 -0800
Message-ID: <CAHQ1cqEO6ET=VdZsmVjrMa+V=w=rSfn9_H8sH-_j+tnay628Ww@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 8/8] barebox remote control: Documentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

I'd like to suggest following additions to this patch:

--------------------------------8<-------------------------------------

From 793f018163bf8ade51bbd4a6ad850a5a730f6b3f Mon Sep 17 00:00:00 2001
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 16:16:45 -0800
Subject: [PATCH 3/3] [PATCH] fixup! barebox remote control: Documentation

Add some more documentation

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/user/remote-control.rst | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/user/remote-control.rst
b/Documentation/user/remote-control.rst
index 07fdd4c..72c5640 100644
--- a/Documentation/user/remote-control.rst
+++ b/Documentation/user/remote-control.rst
@@ -41,6 +41,14 @@ installed with the following additional packages:
 | enum34         | python-enum34       |
 +----------------+---------------------+

+If your distribution does not provide aforementioned packages, you can
+use 'pip' in order to install the dependencies localy to your user
+account via:
+
+.. code-block:: sh
+
+  pip install --user crcmod enum enum34
+
 configuring bbremote
 ^^^^^^^^^^^^^^^^^^^^

@@ -104,6 +112,11 @@ This is especially useful for flawy serial connections.
   barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ ls
   .      ..     dev    env    mnt

+**NOTE** To terminate resulting Barebox console session press 'Ctrl-T'
+
+**NOTE** You can also send 'ping' request to the target without
+ closing console session by pressint 'Ctrl-P'
+
 transferring files
 ------------------

-- 
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

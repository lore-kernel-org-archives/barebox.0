Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f48.google.com ([209.85.215.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKm-0008SS-5j
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:36 +0000
Received: by mail-la0-f48.google.com with SMTP id gl10so1250107lab.21
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:10 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.08
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:09 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:20 +0200
Message-Id: <1402646075-22747-4-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 03/18] linux wrapper: add more dummy spin_lock stubs
To: barebox@lists.infradead.org

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 include/linux/barebox-wrapper.h |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 753fb52..4b5ea10 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -38,6 +38,8 @@ typedef int   spinlock_t;
 #define spin_lock_init(...)
 #define spin_lock(...)
 #define spin_unlock(...)
+#define spin_lock_irqsave(...)
+#define spin_unlock_irqrestore(...)
 
 #define mutex_init(...)
 #define mutex_lock(...)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

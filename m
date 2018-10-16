Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpQ-0004aQ-G5
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id d8-v6so82765pgv.10
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:39 -0700
Message-Id: <20181016191552.16690-10-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 09/22] aiodev: qoriq_thermal: Give aiodev a more
 descriptive name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/aiodev/qoriq_thermal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index d29da02a6..7556fef02 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -232,6 +232,7 @@ static int qoriq_tmu_probe(struct device_d *dev)
 
 	data->aiodev.num_channels = 1;
 	data->aiodev.hwdev = dev;
+	data->aiodev.name = "thermal-sensor";
 	data->aiodev.channels = xmalloc(data->aiodev.num_channels *
 					sizeof(data->aiodev.channels[0]));
 	data->aiodev.channels[0] = &data->aiochan;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

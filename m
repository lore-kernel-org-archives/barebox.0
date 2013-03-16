Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UH05o-0007TJ-OI
 for barebox@lists.infradead.org; Sat, 16 Mar 2013 23:00:49 +0000
Received: by mail-we0-f173.google.com with SMTP id x51so3903982wey.18
 for <barebox@lists.infradead.org>; Sat, 16 Mar 2013 16:00:46 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 16 Mar 2013 23:59:39 +0100
Message-Id: <1363474782-21973-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
References: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/6] gpio_keys: detect keys pressed before booting
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

If a key is pressed but not released before booting and the key is
connected to an active low gpio it's not detected. This patch solves
that.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/input/gpio_keys.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index b02e0ed..b439111 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -86,6 +86,8 @@ static int __init gpio_keys_probe(struct device_d *dev)
 			return ret;
 		}
 		gpio_direction_input(gpio);
+		pdata->buttons[i].previous_state =
+			pdata->buttons[i].active_low;
 	}
 
 	pdata->poller.func = gpio_key_poller;
-- 
1.8.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

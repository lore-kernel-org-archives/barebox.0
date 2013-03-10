Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpnb-0006pl-1k
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:37:03 +0000
Received: by mail-wi0-f178.google.com with SMTP id hq4so608315wib.5
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:36:59 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 11 Mar 2013 00:36:04 +0100
Message-Id: <1362958567-6110-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/4] gpio_keys: detect keys pressed before booting.
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
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

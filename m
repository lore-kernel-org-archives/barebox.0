Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gen5s-00038h-7o
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 20:26:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id z13so21779018lfe.11
 for <barebox@lists.infradead.org>; Wed, 02 Jan 2019 12:26:23 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed,  2 Jan 2019 21:26:10 +0100
Message-Id: <20190102202611.6530-3-sam@ravnborg.org>
In-Reply-To: <20190102202611.6530-1-sam@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
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
Subject: [PATCH v1 2/3] lib: bootstrap: detect SD card before mounting
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

To support bootstrap from SD card run a detect all before
mounting the SD card.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 lib/bootstrap/disk.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
index fd016166e..77be95c2f 100644
--- a/lib/bootstrap/disk.c
+++ b/lib/bootstrap/disk.c
@@ -21,6 +21,8 @@ void* bootstrap_read_disk(const char *dev, const char *fstype)
 	size_t len;
 	const char *path = "/";
 
+	device_detect_all();
+
 	ret = mount(dev, fstype, path, NULL);
 	if (ret) {
 		bootstrap_err("mounting %s failed with %d\n", dev, ret);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

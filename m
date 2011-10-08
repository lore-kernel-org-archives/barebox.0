Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYHe-0001Ua-Gd
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:53:52 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 12E48DD2C0F
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:55:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:29:50 +0200
Message-Id: <1318084193-2648-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] get_fake_image_handle: set nb_data_entries to 1 and
	update the header size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index f0f64cf..afb9e06 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -181,6 +181,8 @@ static struct image_handle *get_fake_image_handle(struct image_data *data, int n
 	handle = xzalloc(sizeof(struct image_handle));
 	header = &handle->header;
 	handle->data_entries = gen_image_handle_data(iha->data, iha->len);
+	handle->nb_data_entries = 1;
+	header->ih_size = cpu_to_uimage(iha->len);
 	handle->data = handle->data_entries[0].data;
 
 	return handle;
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

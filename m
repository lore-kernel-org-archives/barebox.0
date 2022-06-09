Delivery-date: Thu, 09 Jun 2022 15:14:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzHza-008lVs-NA
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 15:14:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzHzZ-0005it-44
	for lore@pengutronix.de; Thu, 09 Jun 2022 15:14:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ilc8BZEnlBGvmRrKW8DMO0hFVm0AhdcVxjZmjZzFgOs=; b=3dM+240BEJjn8H
	/pO2dcor7QnOTzfq9lcbMu/kUpZiUqZGpUuM7/IwY6SFjwVHxcpI1K/w4VdH5KFa1FUafkSFGRTnb
	cQas3bhasc2Bb54D9+JPcXd3m7uGdp54NiqESoXzUdQBoqXZrBTU1KAuoLuArbFZFJHFgFbDHhrWp
	PLMeLgC+h2rgBEC991DpKS0lX1aW7UnW8Gr1w8FA6SvghyLW6Qj2CJUqCWAH8XXFhAmEa8VP531pr
	Oefn4QZj8TABo1NYhS19JP4HZJOGgqx0f76dy6V5wbI4taRvGbE5+d715RBsO4+PiXixKvTYpmuLo
	7J+LUwXOGCuizOrjT4pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzHy0-0022QZ-1I; Thu, 09 Jun 2022 13:12:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzHuu-0020Uu-Q4
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 13:09:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHut-0004Nx-AL; Thu, 09 Jun 2022 15:09:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHut-007OMX-W1; Thu, 09 Jun 2022 15:09:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHur-00FAqw-R5; Thu, 09 Jun 2022 15:09:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 15:09:35 +0200
Message-Id: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_060940_900823_09EED8CC 
X-CRM114-Status: GOOD (  12.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 1/2] fastboot: always try barebox_update handler for bbu- partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, fastboot barebox_update code was only entered when
filetype_is_barebox_image() returned true, a function exclusively used
for fastboot. Align this with normal barebox_update from the command
line by leaving the decision on whether the image is correctly to the
barebox_update handler if the user explicitly targets a bbu- fastboot
partition.

We keep the old check OR-ed to maintain backwards-compatibility for
invoking barebox_update for non bbu- fastboot partitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no changes
v1 -> v2:
  - new patch (Sascha)
---
 common/fastboot.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index f8ed40c86e00..330a06f5a32f 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -673,7 +673,8 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		goto out;
 	}
 
-	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
+	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) &&
+	    (filetype_is_barebox_image(filetype) || strstarts(fentry->name, "bbu-"))) {
 		void *buf;
 		struct bbu_handler *handler;
 		struct bbu_data data = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 09 Feb 2026 19:17:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVou-00AduD-1d
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:17:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVot-00077x-Gx
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:17:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6sE9g2tW/7/uzitMu5x8T9AqXlvxH+saOA+EHu6Scg=; b=xqMZiEAud/2yUWO2UuK9bPM0s5
	hVNgo+QLgDaBDr+EaAsYbfsNHrJ7PQWKSps6lttnbiiKCk4D3RpBLiRDn0AIyUnOyIx8vykD9YjVD
	gHxuxBdGi8LfnBYBTWUoViPaE7dLDw04FkJcdZm5m+IsIQuTn3+vN6Cz0+8xPB6s4FfRiFNmH92AR
	XIaYvA+34Tflr+YyShJTUOdfc066Ik+97QIbyolLxa+P0JmWaLlY3Pzp0kKcMyn2CIQJnWF1sW67Z
	xSXvHo/Kf2IVgy9o4QAqKpashwDrK6oXi+K+sg3Ta+22WTLh5xAhU71CUbgo+zmt4aJCPaODsoc6w
	3PTaaePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoS-0000000FquQ-2Uaq;
	Mon, 09 Feb 2026 18:16:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoQ-0000000Fqsp-0bwA
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-0006ts-DJ; Mon, 09 Feb 2026 19:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-004vof-2s;
	Mon, 09 Feb 2026 19:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-2j13;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:49 +0100
Message-ID: <20260209181138.2023065-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101642_207634_F7515619 
X-CRM114-Status: GOOD (  10.19  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/13] uimage: record original file name in uimage_handle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The struct uimage_handle only stores the file name if header->ih_name
if empty. To make it possible to always get a descriptive name for when
bootm-uimage is switched over to loadables, let's store the filename
in the uimage_handle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/uimage.c | 2 ++
 include/image.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/common/uimage.c b/common/uimage.c
index 5f7087475709..d34205572510 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -183,6 +183,7 @@ struct uimage_handle *uimage_open(const char *filename)
 	 * fd is now at the first data word
 	 */
 	handle->fd = fd;
+	handle->filename = xstrdup(filename);
 
 	return handle;
 err_out:
@@ -212,6 +213,7 @@ void uimage_close(struct uimage_handle *handle)
 	}
 
 	free(handle->name);
+	free(handle->filename);
 	free(handle);
 }
 EXPORT_SYMBOL(uimage_close);
diff --git a/include/image.h b/include/image.h
index d9a1b8f3ee02..769523d6fcaf 100644
--- a/include/image.h
+++ b/include/image.h
@@ -312,6 +312,7 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 struct uimage_handle {
 	struct image_header header;
 	char *name;
+	char *filename;
 	char *copy;
 	struct uimage_handle_data ihd[MAX_MULTI_IMAGE_COUNT];
 	int nb_data_entries;
-- 
2.47.3




Delivery-date: Mon, 03 May 2021 13:52:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7Z-00033c-Ie
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:52:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX7Y-0000u9-No
	for lore@pengutronix.de; Mon, 03 May 2021 13:52:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cY5GFHBD71YfUYrvNqVp1p4RD2PBRqkWBV4rFwUvkzQ=; b=EGO+ciEcCwuQva9TsGm02UYOU
	WSSzRVyiH9T5Vx+vTDqpQUsXwDwkFv3vyOL4JqHGiTP1U0OI5pR6mQJtsBUQOJ/5o9THnydf20DFS
	vhjwm+m51kbH+sGa+NX5CK1kBlEDa0VPrFopc99qnGaMhdDPx3FN8GWrgSsWNnEkIdArCimv0QtJL
	/GvyvNjHqEzEwqx/rWUkVp8XkohQ8q0J3e3lSjZQdDVJp+C03OOiBPJEurme0Xzm7/iQu7VO6p6H3
	uZBEiIiRgqjKWT2KuJMrP+F0TVfsGm+HqmcwoGnqAndmnAxCxyxeXwUjY7YsYBA7B+XUg9uLmMvKP
	3q5xgKoUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX6A-00Dn1V-Aq; Mon, 03 May 2021 11:50:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4q-00Dmgq-DN
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=tmUKQN+GPqWP/FWqGSqm7ssL2Nm+rwmvmwMEy2fyKuw=; b=DV2DqeybJxmgz0vZM3fGLJCGKz
 7csQe6dhXvh7WP0k+ZMpswNS9yhMUqhxlrCYIVfhJlq92DTD2JXaJhpUub+Wga6NWJgXG/CKaQphe
 YjTQDeGmKiIZnTcWnbakFg1IfS4stjRTcmt2dtiDXLOtpWPgs5seODwwqbDDeVF7TkRgfxROTZw9+
 tbOJoOky1VY6wtW/lbGRzjW1mwJZofQFNDOUJkyUzigZZ7ZHfqs4Mk49FcRcdJo7KmaficN1GtoAb
 +7EtKFdwPP18xpwbs+DTwKLBuawu60Mbs7yzW9BO+IcMb+jxXse2NTcYrYvCJIv6gxrB82J7kY0WD
 NmRyPHFA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4m-0031cO-TV
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pn-Ma; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bj-H3; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:48:56 +0200
Message-Id: <20210503114901.13095-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044924_974308_4F8C8AD4 
X-CRM114-Status: GOOD (  10.11  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/16] file_list: make freeing a NULL pointer a no-op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes code added into usbgadget in a later commit less verbose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/file-list.c         | 3 +++
 drivers/usb/gadget/multi.c | 6 ++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 580423aef72d..55e6f0e6b6c0 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -161,6 +161,9 @@ void file_list_free(struct file_list *files)
 {
 	struct file_list_entry *entry, *tmp;
 
+	if (!files)
+		return;
+
 	list_for_each_entry_safe(entry, tmp, &files->list, list) {
 		free(entry->name);
 		free(entry->filename);
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 95f5b90c88b5..da4a7591175c 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -268,10 +268,8 @@ void usb_multi_unregister(void)
 
 void usb_multi_opts_release(struct f_multi_opts *opts)
 {
-	if (opts->fastboot_opts.files)
-		file_list_free(opts->fastboot_opts.files);
-	if (opts->dfu_opts.files)
-		file_list_free(opts->dfu_opts.files);
+	file_list_free(opts->fastboot_opts.files);
+	file_list_free(opts->dfu_opts.files);
 
 	free(opts);
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


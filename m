Delivery-date: Mon, 05 Jun 2023 08:30:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63ju-00BRui-8V
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63js-0002fb-1o
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bPMQJY1BIBwb4WvAu5xevvZ3COuWiJr4wa5YUyZ4p20=; b=NRnzhMeKcip9rg+gB0W1dkODmc
	fGsIbxuaz2nlNhe3KFEzNJz16WgwzZLtp3J+JcWcloCVNnHehhSRL74DfC88XVRpi4DBBJbmBdwuo
	CH5Q0mJzRZeh2Zo3XPWa4GDt4Vz5tiDuBRRdqSScoWMq1kT8fvQDBv1gnk77dHLvpN39sQPejMt6R
	0NXjR1N2jwsH4GQ+Lx6C0K640QZ9EnF1gT9EZ3LMl6/HpEie4a/0TGQOfuvPKXcS/JT5C5qBf4y57
	WIJtB8FLe7VwNFxVsf2G8hFHNm9B8fqbMzuJqDNCRdkBz9NrIgEFzpBNweDECtbaDPXDwPhV9php3
	o+38epMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63it-00ELiG-0m;
	Mon, 05 Jun 2023 06:29:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ip-00ELez-2L
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-00024U-Fh; Mon, 05 Jun 2023 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63in-005Cpe-QB; Mon, 05 Jun 2023 08:29:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001C4r-Qy; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:39 +0200
Message-Id: <20230605062939.242063-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605062939.242063-1-a.fatoum@pengutronix.de>
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232943_768710_BA0E4778 
X-CRM114-Status: GOOD (  11.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 7/7] bootm: booti: fix false positive uninitialized variable access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

devicetree is only initialized when oftree is non-NULL and it's only
printed when oftree is non-NULL, so warning about devicetree use in the
printf looks like a false positive. Given that devicetree = *oftree, but
with a different type, we can avoid the warning and reduce devicetree
scope in the progress, by just using *oftree in the printf (%pad takes
a reference to phys_addr_t).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index 302d7440abd7..e745ff696376 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -33,7 +33,7 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 {
 	const void *kernel_header =
 			data->os_fit ? data->fit_kernel : data->os_header;
-	unsigned long text_offset, image_size, devicetree, kernel;
+	unsigned long text_offset, image_size, kernel;
 	unsigned long image_end;
 	int ret;
 	void *fdt;
@@ -57,6 +57,8 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 	image_end = PAGE_ALIGN(kernel + image_size);
 
 	if (oftree) {
+		unsigned long devicetree;
+
 		if (bootm_has_initrd(data)) {
 			ret = bootm_load_initrd(data, image_end);
 			if (ret)
@@ -84,7 +86,7 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 	printf("Loaded kernel to 0x%08lx", kernel);
 	if (oftree)
-		printf(", devicetree at 0x%08lx", devicetree);
+		printf(", devicetree at %pa", oftree);
 	printf("\n");
 
 	return (void *)kernel;
-- 
2.39.2




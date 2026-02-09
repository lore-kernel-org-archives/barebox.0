Delivery-date: Mon, 09 Feb 2026 19:17:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVop-00Adt1-3C
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:17:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVoo-00075s-Ve
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:17:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OEOP1FuCoUK4zKzAVjng6LF5Y7K7czKjQVgd1GL/Eqc=; b=kZgm2u94Kwl5l3SUJoMKVVMoC4
	jzvi0uYrjdrsvGMRZVVx2IOG6UnhC09+zRkdE42lt0ONQ6ouBK20+lk4iWCTT+yjnpRJ0/cPOMwaK
	gBy+Y0NJiEQUfdkt/OC29sbnonmsGT2DHJHYlcJzs6jIoAPPkvPcbQdVeuQ9IR1KLB+QgiJ30BRyQ
	LO+fFMmYWLmsP0SRW3VsLTQu34cIXpry13tjUbo+uK3cdcvAURP075XS94FFVc28WngSswT9Fryex
	8MM+DznlL57Ip49Zi1HwqkMm4fqGJoZ236lWyzM9A6NfeXIi0qkiyQGAw6ssR0r85VcPIPjbJ/9at
	P3nNmArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoT-0000000Fquj-3dUN;
	Mon, 09 Feb 2026 18:16:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVoQ-0000000Fqsq-0bi0
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:16:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoO-0006tu-J6; Mon, 09 Feb 2026 19:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVoP-004vol-0C;
	Mon, 09 Feb 2026 19:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-36oq;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:51 +0100
Message-ID: <20260209181138.2023065-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101642_209933_8584AD0B 
X-CRM114-Status: GOOD (  10.36  )
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
Subject: [PATCH v2 12/13] efi: payload: bootm: add dry run support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox bootm handlers are supposed to check the dry run flag.

While at it, also fix the code to free initrd in error paths.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 617f5610e745..f1f60e2eaa54 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -252,15 +252,16 @@ static int do_bootm_efi_stub(struct image_data *data)
 		goto unload_oftree;
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
-	ret = efi_execute_image(handle, loaded_image, type);
-	if (ret)
+
+	if (data->dryrun)
 		goto unload_ramdisk;
 
-	return 0;
-
+	ret = efi_execute_image(handle, loaded_image, type);
 unload_ramdisk:
-	if (initrd)
+	if (initrd) {
 		efi_initrd_unregister();
+		free(initrd);
+	}
 unload_oftree:
 	efi_unload_fdt(fdt);
 unload_os:
-- 
2.47.3




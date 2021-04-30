Delivery-date: Fri, 30 Apr 2021 15:40:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTNc-00053h-VW
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:40:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTNc-0008V2-87
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:40:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1anU3E3N8nAHQS7UBKXltugpaROKw05JQbry8Q/PZj4=; b=MJEK774LveILpmn6b3qZbd80f
	RozsV79bFP56Htya9zRNY0K3rgxksTXAfRe2YKXCRUfv3lY9mE00ddlkknyvuHpGm+o0GNaTPjdXC
	D3ojbZTMeFCf6OK5JNMwlDMV8zcd0TohB3UJPY5IBVSgNkpatMW7WVoxWi47esSzSe1wlBZhRzWQ/
	bg3D2mBZvLKy3WnCECvQgQ+yJ1o6RH3qy04l5wwJqJiA3/XcLtnFz58THjJ4gGU/WpNZCllSDSlNF
	fVJ6ruYrmW2XTW4FKoQi0ifb/X3/rGqE8G3Rby+AO8EI4UbpXhWwAX29uib3cBFoZCX/VsZQmWaz9
	GUt8hv80A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTMm-007w24-P7; Fri, 30 Apr 2021 13:39:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTMi-007w1s-1z
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=288981GRFDI04t/hQNUc39pVe0LYLFYkwnl53BykwFc=; b=Dt4p1gwe+wzYJAKnOLJhEoRfZs
 P4RpE7K1JCUvhKYlnQ//VMaGy9yY5C9Tler2zLk3y1Nq1Js6oQAyDD12D6mbJWbV01o6TPQ7WqljF
 +4uQmZGHTupEWXkQJyMUQs0UK3mjNHC/LTUhD0gd5SnICSwN8/QQtjTNBuJeia9uwmAUtydn1sLKh
 k1KAbt6lcBq9cmFJn7c6/VU22zkZJBb5fQkCOHgYOT1Ccj76WSpf8lBSuJaUUOOQYooggYFTGNcAA
 dz05EbxAvmmoz+S3jGKCXLgcITLaj4xKzv5rCP7Na0BoOkv7QqYo2R8JVJKP9KlPhpt8rMejjJ5sY
 7gDz9mhw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTMf-001Pkd-GX
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:39:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTMd-0008Oq-VC; Fri, 30 Apr 2021 15:39:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTMd-0005IH-LY; Fri, 30 Apr 2021 15:39:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:39:26 +0200
Message-Id: <20210430133926.20299-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-7-a.fatoum@pengutronix.de>
References: <20210430132949.14617-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_063929_570327_9B238D6A 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: add generic system partitions interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

$global.system.partitions is imo better than $global.partitions,
because it makes it clearer that this is board-specific configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/system-partitions.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/system-partitions.c b/common/system-partitions.c
index a2e5de4665a2..547e08a9f30b 100644
--- a/common/system-partitions.c
+++ b/common/system-partitions.c
@@ -33,7 +33,7 @@ static int system_partitions_var_init(void)
 	struct param_d *param;
 
 	system_partitions = file_list_parse("");
-	param = dev_add_param_file_list(&global_device, "partitions",
+	param = dev_add_param_file_list(&global_device, "system.partitions",
 					NULL, NULL, &system_partitions, NULL);
 
 	return PTR_ERR_OR_ZERO(param);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


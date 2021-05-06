Delivery-date: Thu, 06 May 2021 11:32:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMS-0001af-5z
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:32:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMR-0000uw-9a
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5rEYVeTaLq5mIxt4o/WjVrPz2gUKaHuQDwAKd7czxw4=; b=KzbpYeyOife7r2XRv+Hs1Ze3C
	tAdEoCgLkJlI2LNBjFi/lTv8pjUx2wPTWWGeY58evaQHlQZLlqeIaJLFWOk49Hg9Z9jZtGfopBcK1
	rwCM6I4MUIb7Xx+H4rq04bBZ1v63e5lHkcsanPXSonhjaSGcE1qB9YoZ+zxwxQQL+Ly/AV6f6Lad1
	mGl+ztE3E5KqOlsDNI5UTwpExSAfis+9r0CVm7YO2SQF1XKA3DetvlfXs+WAm4ijuClGzu8IAoXSe
	/XgRmuBz2tZ58PeDKdvMQmyb3GxjPahzOH/p4SDha3MjHfL5X7UzVTEN9J1KZw7y402wVy2iQ+vwD
	pGkuZeuxw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaL8-003oS7-Uh; Thu, 06 May 2021 09:30:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJv-003nta-D6
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=i6si0jJ1ymQJAy0vzxosFc6nZIOJQDHj6XdnhVOwejo=; b=Bxi5F9/HYk8t6vG/W6dYB0oGim
 cJuiIto47mNDVzoZHEAmtvv9XV5NZAHfxiMYqxot9cUKlCK37zvPAiB7Wp1bPgSrUjuJbef3p7yeL
 uXRV3bvs2Qoy84EYCFNE6lSFQuU37fjHrHU099AnVCye5uL+4/y0Uxl4Q/eAcSkRKbYAfGw0yCHdn
 IEmGL1UWZrE4VG94CZLcVS8QMYSqS9+oR/+JalcmH0WEFMA1CiWZJ3NIhUsU9mcXeNfKPXQxKr0TR
 rdfYx72TRdWp17DwVqTUYC0f0j+FVUG3XjHUpN26KG8AWD+gcQQJvhcD/InTa+uXhRMePISVbYk61
 3Wi3zS1A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJs-005uJr-Uo
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pB-Gn; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lR-Ev; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:51 +0200
Message-Id: <20210506092901.25461-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022921_008092_6C4888B6 
X-CRM114-Status: GOOD (  13.26  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/17] of: implement of_get_stdoutpath()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For deep probe support it will be useful to have a function to
get the node corresponding to the stdoutpath. of_device_is_stdout_path()
already has that functionality in it, so make a separate funcion from
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 15 ++++++++++-----
 include/of.h      |  6 ++++++
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1518854d2e..1e3921f915 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2434,16 +2434,13 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-int of_device_is_stdout_path(struct device_d *dev)
+struct device_node *of_get_stdoutpath(void)
 {
 	struct device_node *dn;
 	const char *name;
 	const char *p;
 	char *q;
 
-	if (!dev->device_node)
-		return 0;
-
 	name = of_get_property(of_chosen, "stdout-path", NULL);
 	if (!name)
 		name = of_get_property(of_chosen, "linux,stdout-path", NULL);
@@ -2462,7 +2459,15 @@ int of_device_is_stdout_path(struct device_d *dev)
 
 	free(q);
 
-	return dn == dev->device_node;
+	return dn;
+}
+
+int of_device_is_stdout_path(struct device_d *dev)
+{
+	if (!dev->device_node)
+		return 0;
+
+	return dev->device_node == of_get_stdoutpath();
 }
 
 /**
diff --git a/include/of.h b/include/of.h
index 1f68d78b24..a3527c1afd 100644
--- a/include/of.h
+++ b/include/of.h
@@ -280,6 +280,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
+struct device_node *of_get_stdoutpath(void);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
@@ -317,6 +318,11 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
 	return -ENOSYS;
 }
 
+static inline struct device_node *of_get_stdoutpath(void)
+{
+	return NULL;
+}
+
 static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


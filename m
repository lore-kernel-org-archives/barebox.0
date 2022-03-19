Delivery-date: Sat, 19 Mar 2022 12:04:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsv-00GfX9-SP
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsv-0003Uz-QH
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i2uoYdUDzf7wyxoVsmFBgoedVp3tDCA+oc8E7c5a98=; b=qPgOCC33LiZEOK
	iwoqphYzrQrZcrWWDD2MMs6NdhcLydnSW+vcn+7D8sQwZ7xqLxAIxGWjnB7n7u1OAW5z8+ywt2iPf
	9BxR1JOzwFgw4cuFs5RBilLKQOKPmJSy/C/dtZxoEDfWZLb4K5mtO2cD9bTKVirM5x/SQjY4BKXNx
	Po4UdHvcbNAYNYYiqTNsp3HCovU4AM0HIL1Ri+OgenZOq524r8vR7OJ0Zg1IMLPRfYuMGanE9p/hB
	eiHnpjslkyWB2YuD6lfMcm6jD/HvRrMqQQjOW6yjZqXghn9uf6mD7eUM2/3lgag4rcPkFaGqRUQHS
	yMu7eAhF2U5GVPcozXPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrW-003bTv-6p; Sat, 19 Mar 2022 11:03:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWrK-003bRe-P5
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:03:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Cs-Hq; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxr3-BS; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:45 +0100
Message-Id: <20220319110246.2850396-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040258_853872_052357DC 
X-CRM114-Status: GOOD (  12.30  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 5/6] usb: gadget: multi: fix broken handling of USB
 function bind error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a function of a multi gadget fails, we run into multiple bugs:

  - All gadget are unbound, even those which weren't bound yet
  - We deallocate functions and function instances, but don't
    remove them from USB configuration, which leads to
    use-after-free when doing the composite unbind later on

The correct course of action here is to undo the function instance
allocation only, like Linux does. The rest will be cleaned up later
at composite gadget unbind time.

Fixes: bfb7aa1e1916 ("USB: gadget: Add a multi function gadget")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/multi.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 0eb6d049d152..cd5b529d3eba 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -218,28 +218,28 @@ static int multi_bind(struct usb_composite_dev *cdev)
 		printf("%s: creating Fastboot function\n", __func__);
 		ret = multi_bind_fastboot(cdev);
 		if (ret)
-			goto out;
+			return ret;
 	}
 
 	if (gadget_multi_opts->dfu_opts.files) {
 		printf("%s: creating DFU function\n", __func__);
 		ret = multi_bind_dfu(cdev);
 		if (ret)
-			goto out;
+			goto unbind_fastboot;
 	}
 
 	if (gadget_multi_opts->ums_opts.files) {
 		printf("%s: creating USB Mass Storage function\n", __func__);
 		ret = multi_bind_ums(cdev);
 		if (ret)
-			goto out;
+			goto unbind_dfu;
 	}
 
 	if (gadget_multi_opts->create_acm) {
 		printf("%s: creating ACM function\n", __func__);
 		ret = multi_bind_acm(cdev);
 		if (ret)
-			goto out;
+			goto unbind_ums;
 	}
 
 	usb_ep_autoconfig_reset(cdev->gadget);
@@ -247,8 +247,15 @@ static int multi_bind(struct usb_composite_dev *cdev)
 	dev_info(&gadget->dev, DRIVER_DESC "\n");
 
 	return 0;
-out:
-	multi_unbind(cdev);
+unbind_ums:
+	if (gadget_multi_opts->ums_opts.files)
+		usb_put_function_instance(fi_ums);
+unbind_dfu:
+	if (gadget_multi_opts->dfu_opts.files)
+		usb_put_function_instance(fi_dfu);
+unbind_fastboot:
+	if (gadget_multi_opts->fastboot_opts.files)
+		usb_put_function_instance(fi_fastboot);
 
 	return ret;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


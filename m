Delivery-date: Tue, 14 May 2024 15:04:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6rpv-00EHEz-30
	for lore@lore.pengutronix.de;
	Tue, 14 May 2024 15:04:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6rpr-0003el-LV
	for lore@pengutronix.de; Tue, 14 May 2024 15:04:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OxmUwHKeQSumcP1uVyoSsvR3pzulCDlTiPSW/abp86Y=; b=QXaEuK7AoV57Cxw6qGcclejJyP
	3TqqSsZOOBKPMOv+fA24H91PetirrXcqV3D2RRJDKgjfEtZ4WH9rMWu/4V/hqLu2TCgfTUQDrs+CI
	6Y1mbcu6HvWLzKWzdG4rmPre9OXme2m3oZFl2THWqAA0UhatHV97MLbw/arhQqI7AA7rteGn+w+C/
	y46Hj7SHzfdy0l5qCubgH1Crc8hMaqQiJFGDI2EQKrCFtoirlERDpr35e00HCKcUwBpX+h31Tr8qC
	JsXoAcecRFZcFANb25G8eOI9tp0UYaRsrdJjWcr2Ks/zLGj7HclCXdI5rHjQLipt4vEhM+pDbpXTU
	UdjS8iFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6roz-0000000FxbV-0ZXw;
	Tue, 14 May 2024 13:03:57 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6rov-0000000FxYt-07uy
	for barebox@lists.infradead.org;
	Tue, 14 May 2024 13:03:55 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 44ED3VOs791127
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 14 May 2024 15:03:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1715691812;
	bh=OxmUwHKeQSumcP1uVyoSsvR3pzulCDlTiPSW/abp86Y=; l=3983;
	h=From:To:Cc:Subject:Date;
	b=hSiTF0oikFy3iQxtVZZYSjqKYpkCxufLSGwANOIPUmq/EoakFnVguDe2P0VnRgPbS
	 vT/A0cQYKtAT7Sp7xktWRjTLUv5CkMmpcQZ175XA0fCBc7ZKv7JaaO9pjm3VZnPlnz
	 Gxq4fhPazJqiTjzOZWcdfycYXgc1boYpVbWLsNmTZqzlaTA2FLczdMIyJPBY4X2GIu
	 qeIacPqhNeDi+cA+SQ4DPGQHLfxETfUqG8ysdVgEBcxSGQ+ojja4u+XnCJg/dNnY8/
	 LgaRjlskUhwR3fZtAahVoGCv3a2elFWUvtu3ahfaY1eEQlK8CHU+sYbngFTDzO5ov7
	 AFOYoxSJsAaGQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 44ED3TaJ984395
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 14 May 2024 15:03:30 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id ZM6BB3N8L6; Tue, 14 May 2024 15:03:29 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 44ED3TPI708188
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 14 May 2024 15:03:29 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1s6roX-0000000CXNZ-1BsA;
	Tue, 14 May 2024 15:03:29 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 14 May 2024 15:03:26 +0200
Message-ID: <20240514130327.2988227-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 66436121b121c496daa9e77c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_060353_391451_A27ABD43 
X-CRM114-Status: GOOD (  13.25  )
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
X-Spam-Status: No, score=-105.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb:gadget:composite: add public functions for managing setup requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

The composite driver does some bookkeeping about pending requests and
decides in its cleanup function whether requests must be dequeued.

There are some function drivers (dfu, acm) which queue the requests
directly which causes e.g.

| :/ dfu /tmp/img(img)c
| ...
| g_multi gadget0: high-speed config #1: Multifunction Composite Gadget
| fsl_free_request: Freeing queued request
| [<2fd8d8e5>] (unwind_backtrace+0x1/0x78) from [<2fd34b1f>] (fsl_free_request+0x1f/0x34)
| [<2fd34b1f>] (fsl_free_request+0x1f/0x34) from [<2fd337cf>] (composite_dev_cleanup+0x77/0xc0)
| [<2fd337cf>] (composite_dev_cleanup+0x77/0xc0) from [<2fd33867>] (__composite_unbind+0x4f/0x94)
| [<2fd33867>] (__composite_unbind+0x4f/0x94) from [<2fd3432b>] (gadget_unbind_driver+0x37/0x70)
| [<2fd3432b>] (gadget_unbind_driver+0x37/0x70) from [<2fd1275f>] (device_remove+0xf/0x20)
| [<2fd1275f>] (device_remove+0xf/0x20) from [<2fd1289b>] (unregister_driver+0x47/0x60)
| [<2fd1289b>] (unregister_driver+0x47/0x60) from [<2fd34663>] (usb_gadget_unregister_driver+0xf/0x18)
| [<2fd34663>] (usb_gadget_unregister_driver+0xf/0x18) from [<2fd37c5b>] (usb_multi_unregister+0x13/0x30)
| [<2fd37c5b>] (usb_multi_unregister+0x13/0x30) from [<2fd59f67>] (do_dfu+0x47/0x68)
| [<2fd59f67>] (do_dfu+0x47/0x68) from [<2fd04fdf>] (execute_command+0x23/0x4c)
| [<2fd04fdf>] (execute_command+0x23/0x4c) from [<2fd0a737>] (run_list_real+0x5ef/0x690)
| [<2fd0a737>] (run_list_real+0x5ef/0x690) from [<2fd0a00b>] (parse_stream_outer+0xc7/0x154)
| [<2fd0a00b>] (parse_stream_outer+0xc7/0x154) from [<2fd0a927>] (run_shell+0x3f/0x6c)
| [<2fd0a927>] (run_shell+0x3f/0x6c) from [<2fd01103>] (run_init+0xeb/0x210)
| [<2fd01103>] (run_init+0xeb/0x210) from [<2fd01253>] (start_barebox+0x2b/0x6c)
| [<2fd01253>] (start_barebox+0x2b/0x6c) from [<2fd89b37>] (barebox_non_pbl_start+0xc3/0x108)
| [<2fd89b37>] (barebox_non_pbl_start+0xc3/0x108) from [<2fd00005>] (__bare_init_start+0x1/0xc)

and related NULL pointer dereferences after 'dfu-util -e'.

Add a helper function which can be called by function drivers and
export the complete method.

*NOTE*: kernel uses the same code and probably suffers from the same
problem.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/usb/gadget/composite.c | 7 ++++++-
 include/linux/usb/composite.h  | 4 ++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index f55ae5698e08..98f7b5bf7fb4 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1509,7 +1509,7 @@ EXPORT_SYMBOL_GPL(usb_string_ids_n);
 
 /*-------------------------------------------------------------------------*/
 
-static void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
+void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct usb_composite_dev *cdev;
 
@@ -1556,6 +1556,11 @@ static int composite_ep0_queue(struct usb_composite_dev *cdev,
 	return ret;
 }
 
+int composite_queue_setup_request(struct usb_composite_dev *cdev)
+{
+	return composite_ep0_queue(cdev, cdev->req);
+}
+
 static int count_ext_compat(struct usb_configuration *c)
 {
 	int i, res;
diff --git a/include/linux/usb/composite.h b/include/linux/usb/composite.h
index c3ee403abfe9..cc570657e55f 100644
--- a/include/linux/usb/composite.h
+++ b/include/linux/usb/composite.h
@@ -521,6 +521,10 @@ extern struct usb_string *usb_gstrings_attach(struct usb_composite_dev *cdev,
 
 extern int usb_string_ids_n(struct usb_composite_dev *c, unsigned n);
 
+extern void composite_setup_complete(struct usb_ep *ep,
+		struct usb_request *req);
+extern int composite_queue_setup_request(struct usb_composite_dev *cdev);
+
 extern void composite_disconnect(struct usb_gadget *gadget);
 extern void composite_reset(struct usb_gadget *gadget);
 
-- 
2.45.0




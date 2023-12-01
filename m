Delivery-date: Fri, 01 Dec 2023 14:53:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r93xa-00G2EM-1i
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 14:53:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r93xa-0005un-Jr
	for lore@pengutronix.de; Fri, 01 Dec 2023 14:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tloM+izhOveH0MwukRwdifTcnc9XlNg879lBNmLdeiY=; b=1yP7TOGgSxRaBgsIcxifEY7Ryu
	AXs9I2KbyiQRTbvQWKk1ygMr/8sIciYMXYCuZ+5j+Ve313+gIS0IWY0Up8c0ASH7Nus620dYInnV4
	YjwN/YWrADrdiFyNVYIXkhr+WMzYQAbw1eVU6NzoH8Z3YWMdL0+d/o7vmPOH1x+NoE9h723bvgg4K
	oZSrq8b0yA0Drqb5TcA5R8b75ehCka66qusWQwPOwz3ItZYeBUrEeLk+oN1tPf7btGkWc3o5KxvSC
	H3hE4hcL01XZJmLWU4k+OUqRVLSmzVWxgmkOtBXW7vjggnaL06eO+iB/y6Sf3ukmN5d6E4hRqXMRu
	WJvKXsDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r93w4-00DrcT-2x;
	Fri, 01 Dec 2023 13:52:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r93w0-00Draj-2X
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 13:52:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1r93vv-0005Sc-WF; Fri, 01 Dec 2023 14:51:56 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 01 Dec 2023 14:51:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231201-v2023-08-0-topic-macb-v4-3-b4f5d64de1ad@pengutronix.de>
References: <20231201-v2023-08-0-topic-macb-v4-0-b4f5d64de1ad@pengutronix.de>
In-Reply-To: <20231201-v2023-08-0-topic-macb-v4-0-b4f5d64de1ad@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=905;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=6Mwzp83zjavfLgk7DfDkUzmKjFRpqyjX3481dA1U26g=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFIzn/wQZNEyXfJtoc4Cs0SdkzVxdTO7pdsevzvgb2u7M2Hn
 goDtHaUsDGJcDLJiiiyRaw9pbBb+rPPl+HkGmDmsTCBDGLg4BWAih2Yz/LNInWnwWGb9Fr/lMn8+XR
 LsW7NPVXVS7/XJbC5F+y6GCvoyMtyREd4p+fKPo+ZshpUPFnwS3PfHuknFnl+3Qfub6cPMnxwA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_055200_825263_BED19015 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 3/3] include: net: align PKTSIZE to 64 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PKTSIZE is used to allocate network packet storage.
Make it fill a cache line so drivers using it don't accidentally flush
adjacent packets.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/net.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/net.h b/include/net.h
index a0ef8bee04..63109465f9 100644
--- a/include/net.h
+++ b/include/net.h
@@ -236,9 +236,9 @@ struct icmphdr {
  * Maximum packet size; used to allocate packet storage.
  * TFTP packets can be 524 bytes + IP header + ethernet header.
  * Lets be conservative, and go for 38 * 16.  (Must also be
- * a multiple of 32 bytes).
+ * a multiple of 64 bytes).
  */
-#define PKTSIZE			1518
+#define PKTSIZE			1536
 
 /**********************************************************************/
 /*

-- 
2.40.1




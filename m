Delivery-date: Tue, 21 Jun 2022 12:16:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3awH-009ADG-QH
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 12:16:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3awH-0007cq-Px
	for lore@pengutronix.de; Tue, 21 Jun 2022 12:16:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B+WtR8SPzy4w8PUNFqAunNRgB41H3U/O8k2j3iSn4XI=; b=1wQCxCYd01M7mh
	icJ3jGxiz43oReRBnqm4N+2m526GbVX3NE4lbpOrxdsdMoLFo5GwfOd9Pzztf2qioHz6JZ5M2XwRf
	rOVOMMc8uIUhyTyWu5+3pZ+MpNm1VHfMLr5jTe46c9YU575IpXVhelLZ95PnU7rYK3OwE80adSAYQ
	0TLU3OxyodXOhppmmzm0/B8QrEvvqKRvsBz0U9OsB0yRLw4JANdo8taCYHuF9Vs6/+ETohiVuO+9V
	C3z3n/om7zlqJ/hMEV7U5VOSw/dTqkFK5grfj2cC7EMLm4FuP5StaqKYycjx8kTOC0Ny7C8BJMWHh
	9o/T6bKlmEB9fGsSHiuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3auy-004oiy-GI; Tue, 21 Jun 2022 10:15:32 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3aut-004oiF-NQ
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 10:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=B+WtR8SPzy4w8PUNFqAunNRgB41H3U/O8k2j3iSn4XI=;
	b=vdk2lBmJAR3VxKIrZYyKyqNnWCQW3pXwlYLpWapL3lU2OvfH/Vbk6SGfZeUtlReNR/ZS5sAFyrFU/
	 ukiPYnM4lwr5NaOFTNGGrXAlcQkMMdkd5h4kKuDjV3j9w6H6cjcgs+f+Qx3TDNP8d4NOjgwEUl45Iy
	 CDhOD18MuUVurlU1HS6Iwe6oZ8+zBRTxH2V1wvVJC4YNmSzB0CThhyRJqK5sye/GnucgFnmfL0Z96q
	 pUjfZScdBhn1VCdCrKYYE7NabkLAP8VDoZ42giZrukAxY7sE03Vnile1RxVmfeojqla+u468lhf8LT
	 2aGA4wW3jQ/63MldJ6ekp/bLL8BvU1Q==
X-MSG-ID: 112f7726-f14b-11ec-8a45-0050569d11ae
From: Robin van der Gracht <robin@protonic.nl>
To: Barebox <barebox@lists.infradead.org>
Date: Tue, 21 Jun 2022 12:15:29 +0200
Message-Id: <20220621101529.554322-1-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_031527_933731_336D2894 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: imx-esdhc-common: Don't clear unhandled status bits
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A DMA cmd + data transfer can finish or stop (i.e. on a block gap) before
the status register is cleared. In that case we'll lose track of state
causing sdhci_transfer_data_dma() to loop forever waiting for status bits
that are already cleared.

Clearing SDHCI_INT_CMD_COMPLETE should suffice here. Since it's not
evaluated a second time, clearing it at the start of the function is
sufficient so we can just remove the erroneous status write.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/mci/imx-esdhc-common.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index a12db43c88..27293e44b7 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -176,7 +176,6 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	}
 
 	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
-- 
2.34.1




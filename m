Delivery-date: Mon, 15 Nov 2021 14:04:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeX-00009y-96
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeW-00073p-Dk
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDxx/+BHXqqj1LFq1ufYLFlgHHfE0FU2A7dW1fx453c=; b=wb8NnaeBYYMzN0
	uLSnM/EFaq5YRK+Ug/ENFCbP/pjrnU9o42LdOf0Bv9km1e9Lb5sKldBpdtu7p6eIVPpjS8ylwA2LC
	2ItwCfYwifjcE5xfsZMbdws7v4VozFcZwgV2OshrKe6PYB+mfDhqd6emrREGBA1rH3KzR+zWLNB7V
	l7vkxOd1/jPmz5vfV9mmDTHTCVQzWrrC5vAR2J84Y/nXBrhIbbZds0m0fbAHQCos7xYeOcVm2Ua0S
	VTigIoBwVKUzuD5YgZII1nNXlokzoKMQF/Ar6yHVWmiuPwms6DTAU4iLldwXFFDrUmlyOhniejfPW
	S1EuBYrdHnVS9bDCuvQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbd9-00FZFZ-Li; Mon, 15 Nov 2021 13:02:39 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZA8-BM
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KqeUEuU4wo5mJ6h0cbOh836joKIySCg4Zyu+O/AN2Bo=; b=LFRk39pDVa0e/v55uy4EEweHHJ
 qe3bmyYPWC/t5CmOB+7MlA2i8AvwNpRTW5H4+yqGjK2KjLfaarQiKo6juQYQVw7hGcbvbV1mw1lFL
 txnG/hqoGkpCabbGPHQmzEPCEhY8YvEaYnl8Aw8+/KRVtLB1O4KcFxrAyg7Lk1Ykr770CkKZ8a6eS
 nIIRP+RaN/5BEUXG8ZhgXtt0Ax//JhA4Mea6VewUHQRFvLdszX6h37rperPsS6M7qii3O8o8LhDDx
 90n1QSfep1zdhnZ6Y4+1TXI6Qe2Xi0wgOcJkDhLlFRfsTTUc5bhh9kRqUpHHm01Kw/cGER+Ncpn6T
 tTHFgNZA==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-N7; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:06 +0100
Message-Id: <20211115130208.619443-4-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211115130208.619443-1-andrej.picej@norik.com>
References: <20211115130208.619443-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_050223_755754_2AB3AC9A 
X-CRM114-Status: UNSURE (   8.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is quite common for users to delete power supply nodes of regulators
which aren't yet supported.
The idea of a function call or devicetree property which allows use of
dummy regulator is not new. This implementation uses barebox specific
devicetree property "barebox,allow-dummy-supply" to allow switching to
dummy power regulator.
Basically just catch the regulators ensure_probed error, if this
property is set.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 drivers/regulator/core.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 097f7d779..1c58932e1 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -231,8 +231,15 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	}
 
 	ret = of_device_ensure_probed(node);
-	if (ret)
+	if (ret) {
+		if (of_get_property(dev->device_node, "barebox,allow-dummy-supply", NULL)) {
+			dev_dbg(dev, "Allow use of dummy regulator for " \
+				"%s-supply\n", supply);
+			ri = NULL;
+			goto out;
+		}
 		return ERR_PTR(ret);
+	}
 
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


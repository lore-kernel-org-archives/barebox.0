Delivery-date: Tue, 30 Aug 2022 09:43:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvtl-001UNT-BK
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:43:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvth-0003uX-Uy
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:43:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vlkyxiPa3XKk0w80rxx8t0tVxbGcesKKukt+0o40LVU=; b=SHVzCK1MZ9VhCddWigH8Xyuy3V
	ASZO1pIs0HcO0L4cS3lf2HgN/cweZRdoelpjO2Orf/K6oHiPKVB+02Bay2zADX+6IoebdRxHKeC5I
	3V0ix1NakabktiLEEnWv0WGjEc6rj9S2B1qHcM/39xUdVHPOKSM21eiOwdVR7BE7B3J5fye5wmVPW
	k7d77j3+biHIj3IoPgZWsywcSLzB1uFfopOSqTSkbb8JufS9wFg4TC8uIBu+5yMc5jFQ1G8R0I0s7
	zr6YDGyG/bBmPWFX1jsIxnqyGdRlhKKW7wmX0EFtS6RzxdQe0qcg5v+VGiKnyM7aBfaper/YtoOks
	i0TrKsvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvs1-00EqKr-Ci; Tue, 30 Aug 2022 07:41:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqH-00EpS0-Py
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=vlkyxiPa3XKk0w80rxx8t0tVxbGcesKKukt+0o40LVU=; b=Hvosc5AtwBHg81ksRwPkLxHVuB
	6OflckIKLuGeAMOArxuaI5iuZsaBZFEoDg4MG8qp8C434rncdKqXlh72Qtru4OAKr5wT/ghBeFWd/
	4T+nLSz/4QIPg5Qsv/gR/5QMhETeYZeyXqeIQpXy48Peh2ToVCcl+zUXMjoYTwg7mFqwQkziU6c/O
	jgh2Z/CPStvKhnzNu/v4Yge2LBsKOv5os3NitnGhUnwRvv2/jo88Dgcu4St/vqJCW4cZDl0PRB5De
	yZv0ACHOXbYXqnNJV0z7Kcr5KwLM9JFxxL9zwk/49J7hz4TP20E+EZlrtED3GncA8IgJnjmqgKbcF
	wTVAwTKQ==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m62-G1
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:24 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cfQj993572
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845122;
	bh=vlkyxiPa3XKk0w80rxx8t0tVxbGcesKKukt+0o40LVU=; l=1134;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CpiQLOd+lSkc195PL2ZxGE241S9IxNKrNXJdponIQJXomk0EzvMgzJS0TYuxquFd7
	 i1JtD7IgZYFgRBOQnCB7LPLxHIpIRxGc8KMHwEewjVMqQulFkxMfmNCiEU3Cw+JPvO
	 G12/inE2as/UkSQAkwLmHjqnL2jqvzcVI4vm3JP0ziK55sSe7ulz9/A1HnvH4kIPCn
	 1d5PO/qmZG1bP+m5mjIT6C+R+tLbnHsZI9lzuyWjeVIZEq1odX4Z25eOVmN6aPpjmi
	 qAcAVl21sDX9OrqXg1MnEKKb4pRVTZvzd+/DZBLoceg37EA6kYypRdnQIk0q0kCEDK
	 jAbYNfGa2hIYg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cQCL1001087
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:27 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 18FE9FB4D45; Tue, 30 Aug 2022 09:38:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cKBc772619
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ3R-AL;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:10 +0200
Message-Id: <20220830073816.2694734-16-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_500209_AADD7A71 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 15/21] tftp: detect out-of-memory situations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

it should never happen due to the program logic; but detect a failed
kfifo_put() just in case...

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 5b0dcb2b75d6..e62ff2a80bb5 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -301,6 +301,8 @@ err:
 static void tftp_put_data(struct file_priv *priv, uint16_t block,
 			  void const *pkt, size_t len)
 {
+	unsigned int sz;
+
 	if (len > priv->blocksize) {
 		pr_warn("tftp: oversized packet (%zu > %d) received\n",
 			len, priv->blocksize);
@@ -309,9 +311,14 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
 
 	priv->last_block = block;
 
-	kfifo_put(priv->fifo, pkt, len);
+	sz = kfifo_put(priv->fifo, pkt, len);
 
-	if (len < priv->blocksize) {
+	if (sz != len) {
+		pr_err("tftp: not enough room in kfifo (only %u out of %zu written\n",
+		       sz, len);
+		priv->err = -ENOMEM;
+		priv->state = STATE_DONE;
+	} else if (len < priv->blocksize) {
 		tftp_send(priv);
 		priv->err = 0;
 		priv->state = STATE_DONE;
-- 
2.37.2




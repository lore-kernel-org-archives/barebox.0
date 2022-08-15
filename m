Delivery-date: Mon, 15 Aug 2022 10:46:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkF-006ESm-9p
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:46:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVkG-0000k3-3i
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:46:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zRMHOjBmUuaTG0t1UYlK9obQ06pZyWPNxE85yBUuT/Y=; b=fxYfTN6wtzSaX5AUd1RqU2T46m
	WjbyKgJ16w7wsomLIftwH8FQm+v5jKmhJWHLlCzNBwum1pNCF0XFl8SynfOXfk87iamO1N9RKni2a
	4fK0RigFyF4b89yIrSsTprzIb36VBzTqvmCN47q+ooikMFy0LQgA2cpGI8qJidTo2DXv6Wru4u6uL
	Wh21ao5qBEpcDXEuSa8jqmHK6XWEfSbo3jDTfpqtu8D8KtGh7SkbqdDd9mciOWozdtQE7nyRlut5U
	sYsA6MeOyuhPQxVU98b5uL9xPCSsfETdytvpgu2Vtfjy1wyRcvAswdoR/lZGZPK3Ysd5Qgs35Disg
	zRAMBaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVic-00DL4N-UU; Mon, 15 Aug 2022 08:45:07 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVgx-00DJf9-IZ
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:27 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8gXAc661983
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552955;
	bh=zRMHOjBmUuaTG0t1UYlK9obQ06pZyWPNxE85yBUuT/Y=; l=1182;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FFCfRyuQT7Ker1S/pueR3mzpnugKRvqfCTsBAHW/7/bx43lBjL4P+YA77HcHtsBqA
	 F9mjpKzD5m8p6kAt5qachPjuV0FDAaTK/JsJt88BWDOyssHGs/4vDFlsiNCWaD0p+O
	 wP6ugtWIT4gyxKOuvop07aHacOnx8QWQVecWEfRKqPao1HtvzGfzS46aTDx6TqH7Bf
	 mHATSfuOsvbL6y26SZjvfptBzSMkid4a5ssWvxmAp32dmQXG3Edck89diE8Fjz6rPn
	 AdFhb904i2k6TOnmFqfw0v78BJ0oB+ntwCVULpYn5T/WWVonAUjgIOnfOLRvdLW6Gh
	 dU/h+Cs2S2n1g==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gViV822365
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:31 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 282FB8356B9; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gQ9q811081
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:26 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg2-000EJN-1n;
	Mon, 15 Aug 2022 10:42:26 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:17 +0200
Message-Id: <464664a5be6a8bc06a2b298c7f288b2fb640f722.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_014324_270293_F8A1D272 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-102.8 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 13/18] tftp: detect out-of-memory situations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

it should never happen due to the program logic; but detect a failed
kfifo_put() just in case...

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 2bb9361d8929..5c3e56a6cb22 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -263,6 +263,8 @@ static void tftp_timer_reset(struct file_priv *priv)
 static void tftp_put_data(struct file_priv *priv, uint16_t block,
 			  void const *pkt, size_t len)
 {
+	unsigned int sz;
+
 	if (len > priv->blocksize) {
 		pr_warn("tftp: oversized packet (%zu > %d) received\n",
 			len, priv->blocksize);
@@ -271,9 +273,14 @@ static void tftp_put_data(struct file_priv *priv, uint16_t block,
 
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
2.37.1




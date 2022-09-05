Delivery-date: Mon, 05 Sep 2022 12:57:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nc-007PMZ-AN
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:57:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nb-0000GO-O9
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BbrL5hv6yQK9zF3s4AkdZt9R6gnAcIGMrfasnv4dras=; b=22bjdgUxE0HjRv7uiVezZUh/gc
	36Z1iX/ZmQVD17alLJmMboLIQgAeHopCETNoBWNrnQle7Gy62yHK7K53T+7AoJnZukuoRkFTbgNnW
	tqoH6LY/g23Tip81HDD3LF4e9BduAHeIhKTbfOYLZMheJnkKuFWP0yqe3emeeP6fUEO7N5kyN+I5G
	3N+VzM6A1RkUhQngGfULEYhDUr1fXgcIa7uNKbnHwWnRCZIz3MoBO+iaqvAOpFcbVksBOPnFOqEWj
	E8rhTCg6ReCt1wVVSp/DcvDlsZGvmp87zPbbwQe2/g5F3KucgnEB9a/tGy5yBZ8xugd9kcTXV2N18
	Nt+1tr9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9gD-000f1T-KO; Mon, 05 Sep 2022 10:50:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qE-00H4Kw-Ei
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BbrL5hv6yQK9zF3s4AkdZt9R6gnAcIGMrfasnv4dras=; b=lM2SZf56xFCK3RHtTwQvaxeZgR
	c+lV5nLU/dom+zcJfA3v5VGEjFnha6uZRn4e33cThFCqeRxzyET25rjYaw1NfHQ31zM+59s/FsP2p
	llkl8rC7BfckgHegToxeCu9gFw8i0nN5yqiGGDmspbOKHQQHLZQgN7TGQE9tiHe3pRNwPLQSS8ayE
	Tho3ypIO0OFTILAbQbr+WjntxMiOd/tYFfwRPc075TufTXcdcjBqKWFZg1o5pgpdv75UkrRugc+Br
	aerqgOdLB54V9O0Iz1i0yQcFWPg9e1xGAsOnOMRZUYk73LFHqViVKqXntxCFH7cO7KaTdlkfFTzw2
	UQUcZc1w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjN-KJ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008I0-1Z; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042Gy-Ab; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdu-V9; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:31 +0200
Message-Id: <20220905095557.596891-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_250972_72B0DFC1 
X-CRM114-Status: UNSURE (   9.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/32] nvmem: core: propagate read failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The read may fail and we may not depend on v's value then. Propagate the
error correctly to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c5fe5f6b767a..c344738abd51 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -591,6 +591,9 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 
 		/* setup the first byte with lsb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
+		if (IS_ERR_VALUE(rc))
+			return ERR_PTR(rc);
+
 		*b++ |= GENMASK(bit_offset - 1, 0) & v;
 
 		/* setup rest of the byte if any */
@@ -609,6 +612,9 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 		/* setup the last byte with msb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
 				      &v, 1);
+		if (IS_ERR_VALUE(rc))
+			return ERR_PTR(rc);
+
 		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
 
 	}
-- 
2.30.2




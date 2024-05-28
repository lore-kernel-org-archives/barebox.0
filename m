Delivery-date: Tue, 28 May 2024 10:26:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsA6-000sSG-2X
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 10:26:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBsA6-0005rr-84
	for lore@pengutronix.de; Tue, 28 May 2024 10:26:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L2blywkw+BUhCICGg+hV5fGO9SpxKewiTR+nRQOntrE=; b=mbhPr7vMvA9id+On9Z8rE3biJg
	Lq/fJmAGrXk3GZSILMAoZd6sbK160UgKsy6PimLIO3mCpEU96FwkWsSWLMwvgFsVpV3RlNO4tAEkt
	4iAciyfnvMdgRto4tlhqzyLqz2X4p1LnlAgUF7t52mvtvXIoSC3T5gpDyL5Wv2lFCwZ711Txfx+mN
	FxdOqcuxbye+nj2mofNlH1mIxRvDGGsevxXXSwFrzPfMYT5JOfO/GDOKqUU3b99SPtgXQA1/yo5Mm
	sHIRBW6C2kQaXMIXv/phM8R89qWbsz/rMwunX64re7CZ9J0EOb06Ky57rXKO/OrUjQEs7bW8w//ac
	lmlu0jIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs9X-0000000HTR0-01u2;
	Tue, 28 May 2024 08:25:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs9T-0000000HTQ1-3AON
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 08:25:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9R-0005kY-0p; Tue, 28 May 2024 10:25:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9Q-003Ijy-Ke; Tue, 28 May 2024 10:25:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBs9Q-00Ce84-1l;
	Tue, 28 May 2024 10:25:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 May 2024 10:25:42 +0200
Message-Id: <20240528082542.3013919-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528082542.3013919-1-a.fatoum@pengutronix.de>
References: <20240528082542.3013919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_012547_812756_09ABAE90 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] string: add nonempty helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of places where we coerce an empty string to NULL to
make life easier for callers. Add a helper that can be used in idioms
like:

  getenv_nonempty(s) -> nonempty(getenv(s));

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Just talked with Oleksij and this would have been useful for a patch he
is preparing.
---
 include/string.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/string.h b/include/string.h
index 5139c7ef1f3d..cbe6eddf7f88 100644
--- a/include/string.h
+++ b/include/string.h
@@ -38,4 +38,9 @@ static inline bool isempty(const char *s)
 	return !s || s[0] == '\0';
 }
 
+static inline const char *nonempty(const char *s)
+{
+	return isempty(s) ? NULL : s;
+}
+
 #endif /* __STRING_H */
-- 
2.39.2




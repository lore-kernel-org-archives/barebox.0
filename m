Delivery-date: Wed, 26 Nov 2025 19:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOKIy-005A5H-0W
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 19:31:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOKIx-0005tb-MB
	for lore@pengutronix.de; Wed, 26 Nov 2025 19:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Content-type:From:Subject:To:Cc:MIME-Version:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Kxw/gAhOqgQZQEanPD540g4u3Xb6E8xa6aNkzaapzsU=; b=yBrQIMdcRNA3+pAtoeVlXLn/od
	enoihXe8/orI+DMFqc0EnqEkV67/vFU4FSEqejK9d/QpJKsbxqJLBtTqOUsnW/KIK5F6wR90OnTXS
	FMbDE6YIqZQygyOGh+7PmD8IiBEePWlqFIkLMby2Xcb2NU69wgH6ZqzfhCbZQsJFa0523Wfk6ruJA
	Xq6tnZCh0CpB2/IWflkTat7V+MICUSYxjocF/dZXV6e+Aua1SkNSddv0FpJ0kEG4/MTJIxuSdspES
	Yq3iplWQ4N8qIatsXhAAIMeD8rplwXSx2dEgKhrPuG11E2zF8pCZ3IQW0/+KVKWuN8etABxDt6J6r
	6aaoJuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOKI0-0000000FV6d-42Kw;
	Wed, 26 Nov 2025 18:30:52 +0000
Received: from k9b.k9bytes.net ([162.241.66.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOKHy-0000000FV6K-2mQz
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 18:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=minersgrad.com; s=default; h=Date:Message-Id:Reply-To:Content-type:From:
	Subject:To:Sender:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Kxw/gAhOqgQZQEanPD540g4u3Xb6E8xa6aNkzaapzsU=; b=QWsWLD9oupCiYu+XS6wFMjYyWt
	M0TqgSkTCU5x2IcUoEJZERc5YP1tIw6ZzGJlKELA6uP4bIQkhaI3SqjwaSjKea55h/JAxmWnForS8
	04gYkPFbVd3nTW1B6ZWf8dZpG/cVgRLVGWY797p/JtLL64hGaznKDgnXxyMjFqYeKkdEpYKiUpXRw
	OYhZVn/YyEKkhcsZ3zNILcSna5R+QzjwtJ/KGC+ScsvSFc1m2cGNxpnejl5NV9acSlgq+mc/tuEZh
	6x+3hO+9ovnqKn2A/1Ercu++V5D76h1JF/LZVUlrMgqRXmi0uQ/3DhoSUD5hirDtKE8AnmFq6oXAO
	RN/E5Ajw==;
Received: from minersgr by k9b.k9bytes.net with local (Exim 4.98.1)
	(envelope-from <minersgr@k9b.k9bytes.net>)
	id 1vOEIs-000000000oL-2lV3
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 06:07:22 -0600
To: barebox@lists.infradead.org
X-PHP-Script: www.secure.k9bytes.net/~minersgr/k9bytes/products/owe/alexusMailer_v2.0.php for 185.132.133.110
X-PHP-Originating-Script: 1061:alexusMailer_v2.0.php
From: =?UTF-8?B?Um9iZXJ0IExld2lu?= <robertlewin880@gmail.com>
Content-type: text; charset=utf-8
Message-Id: <E1vOEIs-000000000oL-2lV3@k9b.k9bytes.net>
Date: Wed, 26 Nov 2025 06:07:22 -0600
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - k9b.k9bytes.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [1061 991] / [47 12]
X-AntiAbuse: Sender Address Domain - k9b.k9bytes.net
X-Get-Message-Sender-Via: k9b.k9bytes.net: authenticated_id: minersgr/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: k9b.k9bytes.net: minersgr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_103050_788431_A867A306 
X-CRM114-Status: UNSURE (  -2.92  )
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
Reply-To: robertlewin880@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=4.0 tests=BAYES_40,DATE_IN_PAST_06_12,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MIME_HEADER_CTYPE_ONLY,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: =?UTF-8?B?UmU6IEtvbnRha3RpZXJlbiBTaWUgbWljaCBkcmluZ2VuZA==?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hallo,

Gibt es noch eine andere Möglichkeit, Sie zu kontaktieren? Ich habe Ihnen vor einigen Tagen eine wichtige E-Mail geschickt, aber keine Antwort erhalten.

Bitte kontaktieren Sie mich baldmöglichst unter (robertlewin880@gmail.com)

E-Mail: 
robertlewin880@gmail.com

Robin



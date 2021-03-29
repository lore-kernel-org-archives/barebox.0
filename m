Delivery-date: Mon, 29 Mar 2021 20:33:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwhC-0006E8-HV
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 20:33:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQwhB-00007A-Ca
	for lore@pengutronix.de; Mon, 29 Mar 2021 20:33:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wWljTBloRaQnRE/Xev9UXEIbMe1ax8RRAaXnUsKNgiM=; b=TtZ3xUcZfh42uy/mD6wwrJ2q3Y
	NEwXpVQUCHp6ENoaoyXPa5dZS7g9iE4o4PNvUD3wPNt3d0ep1sUsZ7kzd5zr8cO7AeLSgEzneSAtt
	evAjTRaQja/1EWkMYB+azbNHDBZh9nWfKsamOWNpGVisVC1k6K6+W+Zyo+OyYd1s7L97Qt+FQdemz
	GT5nZ/qUIDTxIfGOEt7F6vlIv0T5POfsssifM2My2uYzhqjZY+tc4sbKj157py357Kygks2CoGfJO
	VmRVn3arD2RE4x6c8IB9KZkEX8F1WwOnedyFXq1Fu1TwhbxI/z0Znh6+UAei1EMQUMwR5Fe1/ikad
	QUjjxkcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwep-0013ou-Sj; Mon, 29 Mar 2021 18:30:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpFF-000aXB-H0
 for barebox@desiato.infradead.org; Mon, 29 Mar 2021 10:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=rJKfCYg0c7xJiQ6zZdSIPBxVvpthBQhASu74nt0j47U=; b=gr892jt0zzgyd0R23AvuDyTFQF
 PqXr9Fbt+JUIWzLRBu8KgovR6lz9mgch3d8HqRJd/NARqtVUH/dwPb+xRVYwZZZLZQTso9YcJ2Gha
 vM7kBtByMPjlQvFEsGEWWmNbWIHnsys7eVOcKnzq4WMh37+YvSh1JVQraLaYiHBZPon8wMJHx3ZWn
 GQ2S5YNGarHjtH6j8Cm5JjPXM32wO18RSWZTPQOORTrgpkLEoB8fPf18gr/YvozZs35mTtyjjtJyD
 pEyPHV9GFYsJTRi5IYQAJ3wbTXCAcwkSYlxvOgj/lwAD/I/hWTIw00CxJOFRLtBfSXVQXzzkwR/7X
 i4VUKJoA==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQlEh-0015iU-5I
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 06:19:15 +0000
X-Originating-IP: 83.135.83.82
Received: from geraet.fritz.box (unknown [83.135.83.82])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9A12540009;
 Mon, 29 Mar 2021 06:18:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Mar 2021 08:18:08 +0200
Message-Id: <20210329061810.1996248-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_071901_570472_63617380 
X-CRM114-Status: UNSURE (   6.77  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] input: console: skip unmappable keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The input console is in charge of turning input events to barebox
console keycodes. The keymap array it uses to do so has NR_KEYS
entries. Keycodes with values >= NR_KEYS can thus not be mapped.
Ignore them instead of evaluating arbitrary memory contents beyond
the buffer.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/input/input.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index bcc8667417d9..1df52f56c84d 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -165,6 +165,9 @@ static void input_console_notify(struct input_notifier *in,
 	if (ic->modstate[4] || ic->modstate[5])
 		modstate |= 1 << 2;
 
+	if (ev->code >= NR_KEYS)
+		return;
+
 	if (modstate & (1 << 1)) {
 		ascii = keycode_bb_keys[ev->code];
 		ascii = ascii >= 'a' ? CTL_CH(ascii) : 0;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Sun, 25 Oct 2026 10:32:37 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKuaj-0033Ds-1I
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 10:32:37 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 92AF4200F61
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 10:32:37 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="FBH/o+jK";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792920757; a=rsa-sha256;
	cv=none;
	b=ICxIlJIBM+4Z4VB4xxiAM4t+vRPxN/KcUThGchvxjVqPIay7eK0WZZZ/TkU1bxauPrpeq2
	hmMLH6xlidUXg/7uXhVzmUfx0wwgBQNzF5NbJ1oWSQdPxqo8aa/vK9gHRTbdbBEIjeA5wn
	u/AM3YmTRrqZhNpDlXm+i1W7pCrqRggqGUVg0slp/PLieMuWtLsYD+y6wNnAtCXsVEd9KP
	ASg7Iro1Q5wfBrPUe+hyJyAAQkjjeXWFkSX7CMSzKr89BF7OUeLTO/FRh0ERAelvUO6MIs
	W5T8MMSmr7i6jY6KqEDa3eiknLbP61xxWNnHs+E6iJRxXwlq5pSnf4mkeOGZfg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="FBH/o+jK";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792920757;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6VaA2i0Tr5oG1UmzMAKMBAlUE5pV9gBNpi6JMQ4Ctfo=;
	b=A5drY3uuZWZm3Y69WsnZ90iDkxt73zLG8fy8zp6ClEtMRSus8fp5dAGx7nnk2ogbDcLIoB
	Dlbo0hhbz2uBp0/yaU3rx5FNZ1qDTxjo44f1xa9A9SByUOrEXIKwssYPnHPxBGHVij00jA
	t4b1T/mKndvXwL+xjDPPBY/NvkBFEsz3PhQu4vuCTKVuEV1FyFnrTGxqatRFN/T9nFqDkp
	3PcgM1cZsZhF7nYQexP0qAygoMBY30pKN9YKwvM0aFtzJyy0PW2z4m/TwJqtcf8ejVjZ0B
	TYxliFjJKfra9VfXjIeBv19/kO+sHc3a/Ty6W4AWl0X9atjmbErcUjw1SEtxog==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=6VaA2i0Tr5oG1UmzMAKMBAlUE5pV9gBNpi6JMQ4Ctfo=; b=FBH/o+jKHT3Fy4L2VFx4g9CqbO
	s0+aQAyMkj5oM/0s8XvF0g/zPRtekoPw74KSQ0InLf8F8qyjBaIA4QXgHT7LUWHLO9jNEAUXmSEdM
	1fgY9dKNkHNYO2uO5/k9clXcNAkFrSJeRpKUutznQRpnLVx+c6iqa2Q1bdoof7BsIBq9jGYjCuUtB
	ZSwsnahoDPyQjoSWVB4u5K5sN19DFHbRHqcZTkwTEF35H+uw2yitgmZaBDleHb6AOLnxEWuB73bY0
	xtoGXDFGV2LEBFrkl09zIfc/CCHHmGzzkXfLC2+hcl1zFMwxOfQo8L7IZQf1pAf5fofJdkRfLVJV3
	JXhq+NHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKuZa-00000000vO1-2SFu;
	Sun, 25 Oct 2026 09:31:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKuZY-00000000vNd-3Inq
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 09:31:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKuZW-0007DQ-Su; Sun, 25 Oct 2026 10:31:22 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] clk: handle get_parent callbacks returning an error
Date: Sun, 25 Oct 2026 10:31:20 +0100
Message-ID: <20261025093121.2888368-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_023124_827842_A9A24956 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A mux with a value table returns -EINVAL from get_parent when
    the register holds a value missing from the table. clk_get_parent() only
   rejected indices >= num_parents, so -EINVAL went on to index the [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 92AF4200F61
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: h114xomrzmhjq3jmpuhmku7igtkmmryz

A mux with a value table returns -EINVAL from get_parent when the
register holds a value missing from the table. clk_get_parent() only
rejected indices >= num_parents, so -EINVAL went on to index the
parents array as u8 234 and clk_dump crashed on the Amlogic G12 clock
controller.

Let's return -ENODEV for negative indices as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 99f995fb0224..1d6aaa46d9b1 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -382,7 +382,8 @@ struct clk *clk_get_parent(struct clk *clk)
 
 		idx = clk->ops->get_parent(hw);
 
-		if (idx >= clk->num_parents)
+		/* an error means the register selects no known parent */
+		if (idx < 0 || idx >= clk->num_parents)
 			return ERR_PTR(-ENODEV);
 	} else {
 		idx = 0;
-- 
2.47.3




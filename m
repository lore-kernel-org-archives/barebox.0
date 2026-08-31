Delivery-date: Mon, 31 Aug 2026 19:31:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x15rS-009M9T-1E
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 19:31:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9606F201ED7
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 19:31:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EcohNPTG;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hneC1lF0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JDcrY85AbxDLfdwHcj+pEXF7LCz/Mod7rjLxvBK1DZ0=; b=EcohNPTGA0nrrIVvyuAVjXYWdv
	vMpP3v1UFfTyUIZELj7wztrGQo+ROAjf8yCfnJC6fX+RxjhuoJ+QcnEOauBGUZ2Wa7x2aEx5C73hj
	u3X59b2tgYy58ACIPirtJFmXXYNLpPSQz11HUPx4ECi7O0nPJvVL/61tIi+RqeW2q5UZf+T48WsO9
	gbnoMgGJfne/I3UCQyMIn+R7B/99Tn/vs9/R3LOYsPs9JIAwV81mULEiGfkcazdU7l5BfJ46dXKGj
	xQOMyMGWlk20mrAmobcFyopQQR7p/+D086t7jfVMKHA0HqnM5Dc3Cx65JKkLckwnkEeusxoajWAA2
	Gfo5+Gjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x15qv-0000000ACWT-3HZf;
	Mon, 31 Aug 2026 17:31:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x15qt-0000000ACVs-0SVU
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 17:31:24 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-499b2981a7bso42462115e9.3
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 10:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788197481; x=1788802281; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=JDcrY85AbxDLfdwHcj+pEXF7LCz/Mod7rjLxvBK1DZ0=;
        b=hneC1lF0GGuPEvEyYnpEu76DQAEVxdgjasVh2x32fzcaI0Mzpaq/jpETgLN2yZ2ZWG
         oWqW+dCv9YJ8HWdXXPKW0VEz2dGEMArShaEzsJATBXJ9PnN79WYBxTZOhAxrOaILbTGs
         KkP5+5LPHi24bCKot4L8QdU6gfyAcHfT/DOsQq2zIXVYUK6hR9jR4GSHJ8YsDjtQUQQE
         G054g+XSYbEVn0ub5lyKPkfMgXsRaAh1AH43qd7mHkXMCEi6CoTMlsUM4/4GIjNoY4K/
         f19/IBckEgEHqaXq425N0ZZHc1HDHiTbBx3fzqKpMu2LkSPlr/YezeWip/4x1MZNhTDf
         cP1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788197481; x=1788802281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JDcrY85AbxDLfdwHcj+pEXF7LCz/Mod7rjLxvBK1DZ0=;
        b=fDuS2dB0VyiibDG83lDEoGtHNed4dUg8/8XSOW9CBOKu00ZkY6wBbXfZEY/LZx1TMQ
         LM05kPsdZetghzOuaKyJ0FYH8hhqN5lSe67ISjU8dIdTLu7gP8WlLsYG9z/MquD2pduT
         wcc+ZuWnj2FN3mjFAtjwtDZe+16lV17f0wD0BGSqvbUJc4aar39wagYht4OEwYuhFzM9
         dbUDSUJEThzzEdFTofOZf9wzWYtB0oXl2Bbn4YPEjR4mFh0HwcFatO7Pc2+u8sKX/Mbp
         tt/D9B0OCzuMmZNOEY4uTmMHw+OCmKrAyRSlHdv6GyHh+n5VdrC7jIjK4PlsBxjp9Tei
         0a1A==
X-Gm-Message-State: AFuF++nZtGewXbfQcILFAA4NqdmyVdJrGzgs2SCFb4mEAmT8YbMjhxjq
	a4QzCMt623QLZHo0tGoeIgEsmaHUXYe/+F9gebgkhCoUYrJGOwYTGQMCVefpcg==
X-Gm-Gg: AR+sD11B//DVcl3+dUjRuMOQKRtyQUT6VKsXNMYxNlPd7umssTVqtV6Ynq5S+gneEWv
	POQRouDr6ZV0Riz/GESFZWIX8rI/yv+5Fqhj3/qZffIkr2bXHOV/bbW6ZN06uEHZqH3oWK/+PFo
	DE6Ng6YgLj2ZCwSa7IvyOrIVDg8b5hZlolAIWSgFz+yR3GoBZS3KA4Vpex0u7APlNTUjvKGYEat
	nC87IeMKSq8DLXZVURgkhgJPRi4DpvNnnYIqNrZS1yOzM4MpdAjd0Rj3CG8XuJ1ZKuW3Ad5Er4G
	e8H7qsrYkM9R6+DbaWq72cyDvV1l0lcZoF6jEojQjAIwdJlSaVA/50fh7/saqwKcaPEuGojCFHg
	bE0A5TcUJFBdSvdT1759h4hJqR8DTn2sCDyu+Sb5fu3PcBjEaJsDKYSBMqjq9jZhF42zdOd0g7R
	4YtGuDzVi1JdlKdc1rXspF4nbDczpdz3/iMaSOzMiarMXgs2eny4Pmk2jjj9N+Xdizj5/WNHiiV
	gsC5nVChiIm85A=
X-Received: by 2002:a05:600c:64c6:b0:495:52a5:8829 with SMTP id 5b1f17b1804b1-49cdc558470mr42934435e9.11.1788197480744;
        Mon, 31 Aug 2026 10:31:20 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b961939ddsm139907235e9.4.2026.08.31.10.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 10:31:19 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] amba: simplify amba_lookup function
Date: Mon, 31 Aug 2026 20:31:16 +0300
Message-ID: <20260831173116.232488-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_103123_165549_2033C534 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Remove the unnecessary 'ret' variable and return the matching
    amba_id entry directly when the condition is met. This makes the code shorter
    and more readable without changing any functional behavior. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:336 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: a3ettgsgubnsygodcfu8gn4p9jiunm3x
X-Rspamd-Queue-Id: 9606F201ED7
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::336:received];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FREEMAIL_CC(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Remove the unnecessary 'ret' variable and return the matching amba_id
entry directly when the condition is met. This makes the code shorter
and more readable without changing any functional behavior.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/amba/bus.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 2ac3c0bc29..4a9ab09714 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -17,16 +17,13 @@
 static const struct amba_id *
 amba_lookup(const struct amba_id *table, struct amba_device *dev)
 {
-	int ret = 0;
-
 	while (table->mask) {
-		ret = (dev->periphid & table->mask) == table->id;
-		if (ret)
-			break;
+		if (dev->periphid & table->mask == table->id)
+			return table;
 		table++;
 	}
 
-	return ret ? table : NULL;
+	return NULL;
 }
 
 static int amba_match(struct device *dev, const struct driver *drv)
-- 
2.52.0




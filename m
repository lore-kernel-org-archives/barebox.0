Delivery-date: Tue, 01 Sep 2026 17:15:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QCy-009gUY-2X
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:15:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E908A201B9A
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:15:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZlEE8Lob;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jPP8ZVcK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MNVgJA1D5hRTVfUBO4bGovHbGBnKg+JpBH2fyg3IZrY=; b=ZlEE8Lob/JSUhbIYi7NHRVF+ak
	f2eM+2jlRcq9gCV5Hzrgp0kQxt2VaafBUF/x5DXG80ulnLILuxKsCkPIAJMtoNyIzIiNECgpc1HYq
	1v4ecZEPEMUp0PpfuWdtsP7oJCbJFEsp+l2QKAHyvoGOvEN4aPWMq5II2bLGsLS93yFekrtxAc0o3
	lLl2u6onfelG+N44uVtsXsj40hfF19/aitDXfRhQTwhdUKRN/GKKTnWEStRNtqVh7Ol3jubdleA8O
	6W3px5lcjDxnLI4LHvN6jzw4skPqSgInEhIfBWimLhjwaTTQ9JrIKE2bXBjCCnahufLNUa/jGWB0B
	2z/2Kz1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBP-0000000CRaN-21ot;
	Tue, 01 Sep 2026 15:13:55 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBM-0000000CRXe-3dUm
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:54 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49557167508so52217585e9.1
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275631; x=1788880431; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MNVgJA1D5hRTVfUBO4bGovHbGBnKg+JpBH2fyg3IZrY=;
        b=jPP8ZVcKlJgVIG8AH6iiaH43Xufhu8kOEISQ2XLUqiBtzAe2+e+vM126SlJXLE8UlM
         +l5IhIKv4R17xzXjGIigr7FH3LfraEpgBFrRdKR0Z6ABX0PiN2bs8Ib87K/T5hJhkzhU
         i9gMfy1uTG9hnskzJzEyuRIZrD5YZo5JU+inmHLxuEu/sQhTT9H7BQUbK1aZEa0SnNqk
         UNzHo4S4ZpMrBBpajxaevErY3sOJ1wRKcBwIQJ8Unglh1oAMr5yRYNt6SS+oNPEqynQ6
         p7POZePmUotoPvxiJUOaZ72YZYm2K6OHjSF1yHhK4QBpTsVbX0AlzDvDbczHlt9raQxt
         AkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275631; x=1788880431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MNVgJA1D5hRTVfUBO4bGovHbGBnKg+JpBH2fyg3IZrY=;
        b=J5U2c/IzONTnhfsYZVyPHC2HVVUHBDGjSfO9Gxu19kCT94KdY3f4pGJmnQs2B8KpH0
         haKW/3yrQoUyd3QfFLhBZfIsa13VIGRCgiKPdq3c8rNF/6Bw/hqlBjsbtT7/7beGe62R
         Rg/G/jTjjTn1jXVw+DcuEHnQ9XRNsJ7YneqgPAsotLcnIxIcpqvn7/IveAGJ85yy6S5o
         yTLjA2n8A4KK6RjGDCc9FDPrq64vBJ8DT/LmNZeDbx0Cc9lLvbI8hvVQmC93U3DYf9Tk
         gnuyTOE0a/TAXhYVBsGs0BaCWLZ1Uj5eFmxUQLD6QCIRRy5GjkG5YTwqx4w0U/t0bfL+
         7fiQ==
X-Gm-Message-State: AFuF++l++x3A0jTL+0YA2HWK5lSGgUxdTdyHanprK703iSEq7gJhkf1n
	0P8/i93G9dgKqgAAgwwx++5pLI9Kxg237VgmKUd9cnHsAPqwEVPlApspxsti5Q==
X-Gm-Gg: AR+sD11It1r9mGrwZUARij4/auhfkL5XGzpmctRsT5iUhnzmlwl32tV7JTsZEUWgdJs
	vlLb2XSMTecYx6T95w5EpH7cHWrzE53l5eEwA1Sc8r9fKdLG9bnlu1zqPVWIP6xfbgOM3TQ7GMe
	XKLY8Kxgkj/0q0/Kjc6qisilOdOySmSiNI1+rrUmtA40JgW/LjhkgN7weMpVoTGkeCex083s9Z+
	nfmF4w/V381r7SDfGW/kvgSbc+WOnr9mGwBCQa/Oiq0/4JCcU7+861XAgrUfIgze+pIq4uo/hlE
	taBQwbde0e9oMpCgvrKdjLQ6uXo8pfWWzCh0h1KFCoehz1YOPQyi2Pwvmah5LwhFAFiJxx2gpsg
	TxdjnZkDwOLmeyXS7u8u7dXfos1Y07XAo/Y4P8d268K9zx8yE0YjZzLB23fvMKedexRnZwnY7l4
	E+l8FTFYHipSX24Jcg+6mwOh4q5B0/YvCP73yJiJH3fkidYm6LRbeXRXpknUtutzQV7pOaYPRnR
	uTahIviERpmMaxBlPOkldSN8ZD64CBTclmwPvHiraMXB2uY9P5OnKp3TB1ceTvNvReMmK5SzgQa
	MojHYA==
X-Received: by 2002:a05:600c:3f19:b0:498:943:ccc0 with SMTP id 5b1f17b1804b1-49cdc43d444mr184597185e9.6.1788275630463;
        Tue, 01 Sep 2026 08:13:50 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:50 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:12:58 +0200
Subject: [PATCH RFC 3/6] Documentation: bcm283x: add Raspberry Pi 5 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-3-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=1114;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=IX9SQJ1r01Yubm5g6sz29n3kSSf8K3zxzvUHyiAzz9o=;
 b=pF4DCVYAQGaAgqAnuYi5w/U00REfdf/oYMVpNxUaYnFRNs76qYsiRK+cLln411Ps4uIm4FuDu
 MENVAiYSQneDfvk6rL3JXW5+zF7DkQIKQyg2hb8PqE35kFf+06fWS5p
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081352_924571_4594363E 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Raspberry Pi 5 is supported now, so update the corresponding
    line. Signed-off-by: Andrei Lalaev --- Documentation/boards/bcm2835.rst |
    4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) diff --git a/Documentation/boards/bcm2835.rst
    b/Documentation/boards/bcm2835.rst index a05ae3c6f2ed..4f9bf3371006 100644
    --- a/Documentation/boards/bcm2835.rst +++ b/Documentation/boards/bcm2835.rst
    @ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32a listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
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
X-Stat-Signature: fi5a1huhfjzxc3i8xgxiiby8obq34r3f
X-Rspamd-Queue-Id: E908A201B9A
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32a:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_RCPT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action

Raspberry Pi 5 is supported now, so update the corresponding line.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 Documentation/boards/bcm2835.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index a05ae3c6f2ed..4f9bf3371006 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -29,8 +29,8 @@ over SD or Ethernet on the Raspberry Pi 4.
      ``barebox.img``.
 
      For 64-bit, only ``images/barebox-raspberry-pi.img`` will be created, which is usable
-     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode (``arm_64bit`` in ``config.txt``).
-     No support for the Raspberry Pi 5 has been contributed yet.
+     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode (``arm_64bit`` in ``config.txt``)
+     and for Raspberry Pi 5.
 
      The ``images/barebox-raspberry-pi.img`` is expected to be the sole image for 32-bit
      also in the future. It contains the device trees of all supported (and enabled) variants

-- 
2.55.0




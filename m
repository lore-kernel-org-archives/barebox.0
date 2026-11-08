Delivery-date: Sun, 08 Nov 2026 10:35:05 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIm-008dTA-2h
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:05 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CDC7201F43
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oknUlO9k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130505;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Z14xVjeOWJBbFMRVk20wenc8Nbr63nJC21wxJ3rHCK4=;
	b=hBbHBjlVDdk7mXmX4Kvgt3yi393Jh/C4mOpos/oZO+ncmZz0m7xYfER6jSFgLVJIKFdmAh
	ngQzz1YLcXhvSsvQUWL6VyMmg+GQ/APks0xi7UcYSAp5XAckLZiAM3uyNh6N8VkYbF63l0
	8bfMQlSQksBzPcSCKVrKQ5st3AiYXvuoTYnstiXI+XyqoWq6EJ/I0JF1/TQqItp7Bo/fOZ
	1BUT6LsquHFondR4Lsip9zduAs+42BsDZoH45QZcrWzEYJgmFKV73yEFS3I+J8BH1+hJ8V
	VCVMKVh+5fN5omL9nH1tQR+1X9q7VESVAe3yoYO39pmfAsDe+YjSstSQhHynQg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oknUlO9k;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130505; a=rsa-sha256;
	cv=none;
	b=K8Vy2RAaG3lGIofOlChMrP5SonbNZp3Wu00T/yJJXlkLcXjAcLTFhQi7xRxp2leVwaL6Od
	cssX0OhkSHt72u2ziKk8N/gQxo6MkMyxXmOS/oGS8LjbFHQwHWWPtDjFrpyJlrqDfVOlWt
	ZBkffw1w2WUk22x2xLHAhAS+pc8UeH8cWQBu+CRsd4nUdY6daHfZl/XM6od6PsersgN4i2
	kHbbnWbb6mxpXzsxU9lP1AaFyyiZWpNB6GBShfHAY4x/JvtBjVNlQCEfbFfxgXv99nJAZh
	e7av0BA5rxNS6RgoSvoAdEiQZJlLCa6lSA76k79iGHhDf7oonLd2BTNGhiOxQQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Z14xVjeOWJBbFMRVk20wenc8Nbr63nJC21wxJ3rHCK4=; b=oknUlO9kd1EwKM
	bUs59vGiC+7qnwCuasm+sQvEbdxUh7c7Qf7oVg3bn80hgwtnOgWBRUyNJVMMWs3UGS19+4BVnHqqS
	YYgPTl6+0iNffxf9twTiIydXOFrDjkSJtWOz4ubp1LcatrP7z2rWnSryXKjU6dmAsPz3Lg6Xfqkbg
	yGR9WPPA2DZECDjuao3qMTSc+1KZKa+P+d8PA/DoWL7MXLka1P3+gbBJRBQqrRJyfQGjyoDZA7Kf0
	uLV5fYa/1/5P7hix3UzNbz9MQIAzE+4hShPQvxjQ+7x89tPk6tNk22LtT56moyBin1Rrn/ekZXwl9
	HiQAm71MzqMX7Bc0zymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHj-0000000FuRf-3ckj;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHh-0000000FuPD-2Dvh
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHf-0008Mb-TX; Sun, 08 Nov 2026 10:33:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/5] lib: term: ask the terminal when a console can't tell its size
Date: Sun,  8 Nov 2026 10:32:04 +0100
Message-ID: <20261108093354.1247607-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108093354.1247607-1-a.fatoum@barebox.org>
References: <20261108093354.1247607-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013357_566386_EB2B1246 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  term_cdev_get_size() returns whatever the get_size callback
    of a console returns. A console may not always know its size, though: a virtio
    console only does once the host has filled it in. Fall back t [...] 
 
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
X-Rspamd-Queue-Id: 0CDC7201F43
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
X-Stat-Signature: s7ygauqqsohcgxzs1eb7zjs6w5sm9qpb

term_cdev_get_size() returns whatever the get_size callback of a
console returns. A console may not always know its size, though: a
virtio console only does once the host has filled it in. Fall back to
querying the terminal when the callback fails, as for consoles without
one.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/term.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/term.c b/lib/term.c
index 382250c70ddf..1322546ce8ac 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -82,8 +82,9 @@ int term_cdev_get_size(struct console_device *cdev,
 	if (!(cdev->f_active & CONSOLE_STDOUT))
 		return -ENOENT;
 
-	if (cdev->get_size)
-		return cdev->get_size(cdev, screenwidth, screenheight);
+	/* ask the terminal only if the console can't tell size */
+	if (cdev->get_size && !cdev->get_size(cdev, screenwidth, screenheight))
+		return 0;
 
 	if (!(cdev->f_active & CONSOLE_STDIN))
 		return -ENOENT;
-- 
2.47.3




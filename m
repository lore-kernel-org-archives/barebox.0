Delivery-date: Fri, 02 Oct 2026 15:33:23 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCdO7-008rFk-21
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 15:33:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 18BC4201547
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 15:33:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oHxUOLQw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EVq7pnJc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790948003; a=rsa-sha256;
	cv=pass;
	b=MF6xXCFu7R6fPEpYqNkJwKl18J6QnS2q09TuOL1UH8wnT5H3jwBXdt7La4AC8S4F7jCloj
	CbdZeQShKSB2HB/fj8fUX2g4AcdnTyIGL6+Y5X6faHZyOYTumwWjnrLlRun6fT8LU7GOez
	y57xFuNiBe3A7ZSg8eVn0dhYbdaBblaqR46PyikwsW/pCf3m/FVw1RwM8NvJYRXeB23Q/K
	CzFgsyVpeexa1EkZ/2naVVIsEsqXSgDxf4GHSF2/79NNIuHEoHEU/8QD3B6e9KY9PfcTWM
	U29F7uOyk2PV2YN5vd0PNZjN4nY97dS02OeXIY/eoZg6HGVonuQ6YQPnfJL3Sw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oHxUOLQw;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EVq7pnJc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790948003;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7/GFlLFF5v+54FyvRH54lOxIgFiI/1NZDrPBEbSiBEA=;
	b=AEVSWczomjLq1xBREEUotVFZxG6SZuek3YQy6tEDoslq7xGjquQ7/PbpC7qeigqknKHg1d
	ZuJ6LbvdW89k/+dV1tU6MwYkzaYN87EnRkElAtdfUlVwLOuBlwsQ7Xt7K6pyY8rY/9dAy/
	cpJiy+NUjws+Cs5Ofa8PWMv9kcKWb60/teYOxLOUaYK5it/NFGo1P6n/IxDylc4zNWrV68
	22BKK00imuFhq93esXqotPCgPHsl5qQ+xG6iPVraSbZyDOFbF5iU1jftYk7trhFYjixSm0
	qNjBskaZP4hXdslsY9AtXtHPL6YuppejX6Wp5p0bMO1uIAc170c4DgFliLQkWQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/GFlLFF5v+54FyvRH54lOxIgFiI/1NZDrPBEbSiBEA=; b=oHxUOLQwOXUCL/T5kblL74UqKr
	HhOIlgmX4SH2pxVtsnwcmx0dmu/jzEl8YwtG5VFIxNoVUl58cZeMKpP/nxvHjvdAjlSrqX7YRTYax
	m4bzr0mqev5BsbgVGjITRr8Pf5HufjQNYIaqOzPelNXoc5ZTNnI+EaDUarq8d9RbwMo/bWHyWyPJF
	+hwcExw/h04t4dmJi+uZQwnsNeAvwF2w5ikJi8HMyn3gEARhmA7Px+A1Z09r2CMiV48TMpaYquZO7
	250Ms/bcfeLABHYR3S6go7KU08hBk/Xv/Qwe8S54WJ8/7icnFqopDibKEgKcj+rBWc2lpuoi5+q/N
	MBedYKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfK-0000000BVHQ-0J00;
	Fri, 02 Oct 2026 11:43:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfE-0000000BVEX-2JKx
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:43:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 89FC6201C7E;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7/GFlLFF5v+54FyvRH54lOxIgFiI/1NZDrPBEbSiBEA=;
	b=EVq7pnJcDcypnRSDgESNLvVjvlgf4JGCWpR+eicMa74mv9/ZdymDo42tmEMKjrZDmN2qit
	RxQ7y3pMuujW/m+2uQKybGcR7qSa0iHQ7FmCbBN8Jy6bdmGhG6f9b6H+WToozEPODT+VXJ
	HP2qiY3u5eZ7hQO2VxZkq30yogusexRMJDOCKfvOyRRT5Br0I31KRfzbNU2B0VgPWGUeb6
	QrKKNJJ6GXKkuCGQOvdViVeKzQnta32E7GsnZS9PvD6Zrdfgy+dLYPJwveU6FAHb5e2fPa
	nk4g3YFGNXaXjn3IoAqEJRXHQB9ewgLto0xWYU+/vVwqwl7QWQS9+9vaRFsaIg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=CfGTAfE9yks5Uci7HrPsoqr0GB1PYxdD9kzR0Gn5XUikJp1HqdmsdYRNVZDyInPCGhgbUS
	aVXyPsolRFc121dHzxWEGW9pxvWOZKRVRb6jSrZxGjzKHFwYoB9Q7WzQBQ7caEBMBCkue9
	cJr5eA5ULfJ2vhmlzN6W9WFn9pLtjuvyUVJVWbArdKNmZDxNA1A8AeDYuJAnAZHXVa0PSh
	wDcOJThL1ezkHxeudpKBeGpnuj6pNxjy58aN7D3uVB3jUnzNC5HBh+08qyweEyedmcAaMf
	sDImG+b1pAC2iO1gjiupFsJgzi6rN7EKinne3JamXZ/vt5J3/EUME82j6cp0Ow==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7/GFlLFF5v+54FyvRH54lOxIgFiI/1NZDrPBEbSiBEA=;
	b=bEHOtYGOMGAP4F1QWMCBgXt1z9ZAyi1wub1nJ6KxaxBRdZqUMSq+6m4onteuwnzadeLfgd
	R2GvnJC/eyh2apg+g8LIX2WTwZgxRaLEwz1f5Pv8uW7kn79wMiMuZu9VhqP7YmKpA1PQfX
	JbbOex9rU5JI7bQm+6UpEDddU2W/MAVEvyYPqaRRuJsrwMbnOd9fysQ4ZZY2K/SQmJ031r
	M/rvOb6uv2gfgmKzYxCRpD+PHk/Ycr2887ZRh36DBfqK5yNS+ip4FALMV7zCSMn4NaCnR7
	bU1jOgDKKDUh2oOyQs3Dmd/K8DV7/zF2l63lpjsumSyKLvd8T3d8IkC4gWz4CA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 6B95674145E;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/6] fs: skip directory entries whose name does not fit struct dirent
Date: Fri,  2 Oct 2026 13:40:04 +0200
Message-ID: <20261002114253.2906535-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044258_389880_E24B5924 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> fillonedir() copies
    whatever name length the file system reports into the fixed 256 byte d_name
    of struct dirent. A longer name overruns the heap allocation and a 256 byte
    one is left without a termin [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 18BC4201547
X-Stat-Signature: wyt9q5ce6hwx8ez9tbxfii17h1oui9rq

From: Ahmad Fatoum <a.fatoum@barebox.org>

fillonedir() copies whatever name length the file system reports into
the fixed 256 byte d_name of struct dirent. A longer name overruns the
heap allocation and a 256 byte one is left without a terminating NUL.

Such names do exist: ubootvarfs lists U-Boot environment variables,
whose names have no length limit and come from a medium the OS can
rewrite, and ramfs accepts file names of any length. An environment
with a 300 byte variable name corrupts the heap as soon as the
directory is listed.

Let's skip these entries with a warning instead. The rest of the
directory is still listed and the file remains accessible by name.

Fixes: b3fbfad7aeaf ("fs: dentry cache implementation")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 1426ce4bc883..e18e3b9cd7b2 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1088,6 +1088,11 @@ static int fillonedir(struct dir_context *ctx, const char *name, int namlen,
 	struct readdir_callback *rd = container_of(ctx, struct readdir_callback, ctx);
 	struct readdir_entry *entry;
 
+	if (namlen >= sizeof(entry->d.d_name)) {
+		pr_warn("skipping directory entry %.32s...: name too long\n", name);
+		return 0;
+	}
+
 	entry = xzalloc(sizeof(*entry));
 	memcpy(entry->d.d_name, name, namlen);
 	list_add_tail(&entry->list, &rd->dir->entries);
-- 
2.47.3




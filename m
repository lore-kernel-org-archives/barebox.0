Delivery-date: Wed, 18 Nov 2026 15:53:48 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2h-000ngm-2U
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DC16A205A6A
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:43 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I2AJYGf+;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Qanh5sja;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013624;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=yrSdjQhXIEB4XSjU7Qz0oVqRUyInEmlTdQNhbV7Up0s=;
	b=LsdIUu6ENR10TyC+i8GZyuuZ92fHAGaEAnzJhpxpPIh/V//RTCR9FVCP69GlTdNuuTtOy3
	XVWJ527d8SXsaINiaNPyqujzbUSk05YM9ktgZ0cs6DS2m4fvR93+lJbBShaDtmNEuIjdSS
	WMb7T7b7VHmIUVibhgkmXJOdZr9s84YMrEg1nVi30WSRi6qyxpTp6XWof8z2LiCC//ODaL
	iWY18U1pufOmxisdapcklqZod4Xd3xB+payp4MOYGKNaiqV9UbEKxQaJaFZpesOaABM18t
	ilmSHttZl57Fkd7p97dp3F19sM4p03PoguToocZfgCopKBzf0ag8cmsy2N/zCA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013624; a=rsa-sha256;
	cv=fail;
	b=DQSfzH+bqrAPKzJCD00azZF52PFsAt+yXmWbY8Gdrse8GrYWlC8APa0nckz8f/ajYUT78C
	zCc3+UhThDTjqAVfExi2vesXtjAvGrb/2D5RmWxo0r7X5xcEb9WLFv3eZJ5EjqzrKRiF9h
	jyYvO78wWCzIczK+wpOKv3FsycRJQYM21Tw2oQ50TfQZSFrZPmumEL3LX0dfugTyOGBPjq
	6U4rJIWsdxLX+TUe3TwkHiLExr8ZHVM5mKp0hEMG4nm90Ts6qLZt8tdeX3ehNVWW7JfC7O
	/uRQDqW0BYVFnnirFK92x89Nmp69toR7ZKcKrmq7opap84vxMIIaY1QIgdgeJg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I2AJYGf+;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Qanh5sja;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=yrSdjQhXIEB4XSjU7Qz0oVqRUyInEmlTdQNhbV7Up0s=; b=I2AJYGf+4dkZNk
	clnOTYwoHvmpIFRI5MZEfYKOqqTGQM0OnAsbvT0rdx4eidl2udpgobtHdYPAoiBm0xsJffrF0GAud
	7i31ACqyn1LMxn8BJfc8ZnhstAgOTyzepDADCLY+vlCV8mTxXTTc/gTXUiQHE0eQkl6xBI7WKbAUI
	RFqEIyEEFoahHFAB6FVzVBU6AoQtar2QXIPddc7ZOqSxYSrbzkxBe33uRDUfZCJfgJ9D4Cutugb8k
	jONqZKFtBh4sQcprz+AQa4vYGVHK8oTRd6PqHots1q3AET9SRCFT9WP+9ehtIQ2p0/x+F/CXQ0r5v
	4j9AMB0w6VaIapH8m1fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1Y-00000009A1d-2gcd;
	Wed, 18 Nov 2026 14:52:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1W-000000099za-2qvH
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:35 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B4EB3205AEE;
	Wed, 18 Nov 2026 15:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yrSdjQhXIEB4XSjU7Qz0oVqRUyInEmlTdQNhbV7Up0s=;
	b=Qanh5sjalljNFRiBzvHkB3LW7gdXP8bFiETcuhZNKTwi7MSKArnxNCev093Q6yNDyMioXj
	CC5x+CyWGx5iLvGT6BWCBTdTJWcIIehqEvz17f8fzMfNNUSc+FYwTBpFI9hh820F6RUxns
	IqXGcUVLb6zcIOnlD+a7qxkcJ8vUwHHMFZ9Dh3XqL+CIFTEkrDw1w2lp3N2w8OksmASvLQ
	PEE/PmNZ7nzce0ZtF6SMgsli/HuhA8rNh7CkBG1nD+cEOM18MxqJhvtoZmHdY7tUE9IF4G
	quGLcRJ6fjRVSG5UKLw9kX/ygMjYIRngIBPdlhljs0RCKKGW3tFjd+dvLb3V/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yrSdjQhXIEB4XSjU7Qz0oVqRUyInEmlTdQNhbV7Up0s=;
	b=Ed6EdZ6pwS+5TfacrhrGVbDl4fOwMslMJtZWyeCzToeyM7WRwilynLuQOyyAmS1xEJDtwj
	xKNcp5sV8DFkwGB4T7Ifwt9bF6uHINdoB+u7zl7V2erv7i7QGjnOSJnPkEMy0xF2YPcee5
	+Z/X71QGxZQ3rVfH+XSnuVDW2nUbEHzpJQwtxxJyg4tC9VhCOXBm97AoMDbLi7vbPGgt3T
	rX39X6Kx94O3C1woaOk7FqOfYaTqxK+eWv2GZGksvEW+bGeK5kww7s583X1IUvwisYEL8B
	n57Wn9rrZIZdhnrOD4ozrs9fWT/AH2qdCiKcEEJwAsYAbsC26PD+W6Rmf2HlBw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013548; a=rsa-sha256;
	cv=none;
	b=UA+1ov2gwooROqW2TqvCeJ/ojBU990Sf4GgoV3PIi2RS3WeQuRkeoBcItVr7fSU+3hi7W1
	q+gkAjh+Bm9GhkET8rX53jWNk4eWPYHvuTZDftY2MqdqpYAE4lGVHo5vZ2wKW7TUX4ZATV
	SFHQXdkDBTGII2PdCWIUESReACi2evbhbY25vcORbDbeRmmyddC8e/if03FScp1BwLzIy8
	MCFFDQmy74ryOkOg5NMOJ1ye+qY8vdYrYY0LVxhrLTyKLrHgjSZAb417Txh2mVFq7ia7NB
	+92qfs1EY6cV4w7Vb6dKLR9+8U/S/yURV2EAI4B13U6ktOjz836A5FtNY1V+KA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:58 +0100
Subject: [PATCH 08/13] fs: bpkfs: skip the data of ignored duplicates
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-8-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1733;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gb+2QbWP86rdyt3e7z2vB61snUwwQmKkW0jCx++1hkk=;
 b=5kuVxgeFHTC1imW1zNYBtHaGodrzkRMz75uS5PxDhyuXf6m0tfdDEc8nM4KPCxMPHx2RKl+tL
 WZfsmgHAbMIAUpap7thDaxKTtQr9OVU1mkPbSByunwAjkzVfmxxASG3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065234_918149_8A84461A 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When a package holds the same type of image for the same hardware
    ID more than once, bpkfs ignores all but the first. It forgets to seek past
    the data of the ignored one though, so it reads the next d [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: DC16A205A6A
X-Rspamd-Server: mx1
X-Stat-Signature: 93urqtzjmagtkpgix8zxfo893gt71bjj

When a package holds the same type of image for the same hardware ID
more than once, bpkfs ignores all but the first. It forgets to seek
past the data of the ignored one though, so it reads the next data
header from that data instead, and mounting the package fails:

  bpkfs bpkfs0: ignore data 3 type kernel already present, ignored
  ERROR: bpkfs bpkfs0: could not seek: Invalid argument

Seek past the data before checking for duplicates, and free the name
of an ignored one, which leaked.

Fixes: 2f677b9b1ed5 ("fs: add BPKFS support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/bpkfs.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 7908b13175..62d0229f8e 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -438,9 +438,19 @@ static int bpkfs_probe(struct device *dev)
 		offset += d->size;
 		size -= d->size;
 
+		/* to the next data header, also behind data that is ignored */
+		if (lseek(fd, d->size, SEEK_CUR) < 0) {
+			dev_err(dev, "could not seek: %m\n");
+			ret = -errno;
+			free(d->name);
+			free(d);
+			goto err;
+		}
+
 		if (bpkfs_get_by_type(priv, d->hw_id, d->type)) {
 			dev_info(dev, "ignore data %d type %s already present, ignored\n",
 				 i, type);
+			free(d->name);
 			free(d);
 			continue;
 		}
@@ -448,12 +458,6 @@ static int bpkfs_probe(struct device *dev)
 		list_add_tail(&d->list, &h->list_data);
 		priv->nb_data_entries++;
 
-		if (lseek(fd, d->size, SEEK_CUR) < 0) {
-			dev_err(dev, "could not seek: %m\n");
-			ret = -errno;
-			goto err;
-		}
-
 		type = d->name;
 		d = xzalloc(sizeof(*d));
 		d->type = be32_to_cpu(data_header.type);

-- 
2.47.3




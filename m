Delivery-date: Wed, 18 Nov 2026 15:53:52 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2l-000nhU-2H
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5FFB0202045
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Te+glneA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=U6JE2qE9;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013628;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=f8Ap4yYJkQ6eP0rxc0WujX6qqpbHltiVm+b/5b8Dkrg=;
	b=Cmu8fmRJN4EXafwqDMPWNY00MpYvpTgv+j6tIWv3uHF0+7r9dAedOEbpWrW+zEgWArtwpH
	uk0+oNX+iV4aLPAODKig4FQVRSkBUOMwXK3vAcTdVG5Xw5vW8SygzdEnA2YKQTjsd5iJ8v
	v2l755tswGhEtqogxoewCzPwhAy34YVhYUxGGqhY97ESNc2B4f8usO/yj7dBaxDBvin2dC
	aadyZMG3AoQKqPe5R2Ktw4au+bZvse241vvbvi2pkrnxnTkebxjOQScmWGr8bXNtr4ODII
	OnEO/WQoTDUzN9GQ+y9pSHWbtFIKsO3+hBdY7fRhTthcQ3tcQbob9Xb/TBXJyQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013628; a=rsa-sha256;
	cv=fail;
	b=NAjaXdQ7bPCTvYpgC/++cmI6hThx+FSZwqqbMLL/ChdHRYcMBwf7P+nDECx5L2JHlEqerd
	lWG7U1lox5xK59L95UpYf/+N9tijeH6/Jjkv1OvCdIdfa9JmsSmyPTdYcp24/QpteD0toR
	PgJnF8pGNE/n4YjfqQtJIMK2x6kik8AmToEnOZXk2nWb8uZcHq/+tNXNmPnHBO4tZuoA3b
	XBNeT3xaJp8cLagwBYJBpKY/ADLcUT2tYVqm5Sh89poSvjdlxYvdRHTmnGC9sLzVflY01U
	lkRDFSw1oifcbd7sUeBvtoeqhjIo2RDy8RxuC45H2+kviZhyTq264WJU1h55zQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Te+glneA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=U6JE2qE9;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=f8Ap4yYJkQ6eP0rxc0WujX6qqpbHltiVm+b/5b8Dkrg=; b=Te+glneAlqlLFu
	Bti7UFsf8j2aRbitrZRzYrzDDifctKnFWPuYXnBbq/oMqMzYsnPemPZ33jYnsU4m273EESafPQNZq
	5cKhtm7THqN+UtVh5yQPBvXgJFT25Lp+8lU9aLAhi7EJi8CsUoyAX7Cxgf1pLW5Per6dwXyrA5/TC
	12Qb5k82P7LGu/dqWGOJakR9UIMg+IA/0S/7TZtVZXjngkQMw+WLajEgmeRf91zWXvFpIoMeL8kuT
	H9albTJQDSmSVAKP7PdvPm0HXhoaPiegoirzyTB7uWBfdcveSS6+yhr8xso4l03lvzWQHmO6+tnnc
	WbhYkYeF9BcScX3+kjlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1N-000000099t6-0qVG;
	Wed, 18 Nov 2026 14:52:25 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1J-000000099qN-3tbc
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:23 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2E6ED201F17;
	Wed, 18 Nov 2026 15:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f8Ap4yYJkQ6eP0rxc0WujX6qqpbHltiVm+b/5b8Dkrg=;
	b=U6JE2qE9UeaTwI8s318JtpPpnOz4O81W/wBzUtkOMYtt3V9aFE7QWRd1lVY79gx45+H1A5
	Jymhg/0feeaNPbEwtZ9bd9BNhFT6jKQsA0QT5ySC7hMCkydXGCuUs1HK3zTo27Wv7946tw
	UkJaJG5LjWg1ZLOLBcO0imVimN7suO2w4iQR4GK0wpO7k1SCrnb8zUpzCplVtqA6xB47sj
	Zp/axvd7DbGE/dMGNRrRRg8MBngt8GkU5VJmsYIn8Do1vk53m2eXM3fjnKMsVkCLR/Shq4
	RNMEyP2J0+R0ctwYTN8KLM01sgKlPyGD7lx84TyN9ZPyte8ZoLLCrn55L9jqmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f8Ap4yYJkQ6eP0rxc0WujX6qqpbHltiVm+b/5b8Dkrg=;
	b=DEKA0WaHb7ZMsTRfPtpzmOqirOEcXXXHtvpUAKRsIJ9nr/GVTo0Cx0/Ut2npclConximYe
	eNks0PXNzYW9hi8EC4YZ2noJMPKor/1c/W22FAq3h8EgrsMcgBRqVtyFZ/U7Lof3xJnYkH
	IvLPzNN/F9dLPY/JTPm6woYrOth6ODzdYWPsDFh5jSHmMIZfwPoPg3Ov21+v4PRtLOgzoq
	O9AlDmtyUrREf/3VX193wAgZOg4AaXue5LAsF+19/Qp5AxT9a9uNRGWVIYXkG9UdCf5Q8l
	36RTFLM2LDPbydKZJdrBA9VfvALg98ui/JFqcgd39VFQpk6Pkce/Ht5ELHY0qQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013536; a=rsa-sha256;
	cv=none;
	b=RMgM/87SHo19ZeBmHFgDUPUe46dXxrJEXyw3WEx1pBiV9afsHfLmToiaO2PO99qcLmM7kj
	a5Uv27mt/nNDR0Kj+HaEkT1GV1r46oLLYGm/WsWQPZmDO1SX2v3oPrIdbIiYfzUSGxWVO5
	Ux/w2JyBRxE9y/WOVPzlU97hLtbaMnBug0pp8ZWrKESuh4WftpY0mTi28sGfhvQ+lBO5rl
	pwlmGnFhMaPbmSfWfM+967miS2+4ZFHz9JuWxQzMSAAamIXUt6wbMx3etoeYxkmFmccZWy
	7Dtx+rDZfgvRkYbf/+PzHAMPsRTqYtiSSJ/nushPt4P6hTx3LfFP+LbOhLCV1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:55 +0100
Subject: [PATCH 05/13] fs: uimagefs: allow opening a file more than once
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-5-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=3021;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BOlWAGxkX8ImyMAft8TX88kJbOhX7qgFXEUoXm3ByGk=;
 b=ZD9NfrbTDO2uEYmSSDAmdHtNctcfYSdkpH2Oh69w0sytnXL1FxLzvk29xLIKjaErTuT4Pgaxi
 BhInZG+T5l9Bwp0ouJ/EVsCd0iMVkqvG2bYzJD38gJ7BMBXRaXHujhc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065222_154133_1D6E8F8E 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  uimagefs keeps the descriptor of the uImage a data file is
    read from in the uimagefs_handle_data of that file, which all opens of the
    file share. Opening it a second time overwrites the descriptor of [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 5FFB0202045
X-Rspamd-Server: mx1
X-Stat-Signature: nf1xg6fksiou7agmcr59ab4ecnx7791h

uimagefs keeps the descriptor of the uImage a data file is read from in
the uimagefs_handle_data of that file, which all opens of the file
share. Opening it a second time overwrites the descriptor of the first,
which is leaked, and closing either closes the one the other reads
from:

  fd1 = open("data0"); fd2 = open("data0");
  close(fd1);
  read(fd2) -> -EBADF

Keep the descriptor in a structure of its own for each open file.

Fixes: 12158a28d4 ("fs: add uimagefs")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/uimagefs.c      | 36 ++++++++++++++++++++++++++++--------
 include/uimagefs.h |  1 -
 2 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index b805b357ac..52dc7182ef 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -68,10 +68,18 @@ static struct uimagefs_handle_data *uimagefs_get_by_name(
 	return NULL;
 }
 
+/* an open file, the same one can be open more than once */
+struct uimagefs_file {
+	struct uimagefs_handle_data *d;
+	/* the uImage for data files, -1 otherwise */
+	int fd;
+};
+
 static int uimagefs_open(struct device *dev, struct file *file, const char *filename)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d;
+	struct uimagefs_file *uf;
 
 	if (filename[0] == '/')
 		filename++;
@@ -80,36 +88,48 @@ static int uimagefs_open(struct device *dev, struct file *file, const char *file
 	if (!d)
 		return -EINVAL;
 
+	uf = xzalloc(sizeof(*uf));
+	uf->d = d;
+	uf->fd = -1;
+
 	if (uimagefs_is_data_file(d)) {
-		d->fd = open(priv->filename, O_RDONLY);
-		if (d->fd < 0)
-			return d->fd;
+		uf->fd = open(priv->filename, O_RDONLY);
+		if (uf->fd < 0) {
+			int ret = uf->fd;
+
+			free(uf);
+			return ret;
+		}
 	}
 
 	file->f_size = d->size;
-	file->private_data = d;
+	file->private_data = uf;
 
 	return 0;
 }
 
 static int uimagefs_close(struct device *dev, struct file *file)
 {
-	struct uimagefs_handle_data *d = file->private_data;
+	struct uimagefs_file *uf = file->private_data;
+
+	if (uf->fd >= 0)
+		close(uf->fd);
 
-	close(d->fd);
+	free(uf);
 
 	return 0;
 }
 
 static int uimagefs_read(struct file *file, void *buf, size_t insize)
 {
-	struct uimagefs_handle_data *d = file->private_data;
+	struct uimagefs_file *uf = file->private_data;
+	struct uimagefs_handle_data *d = uf->d;
 
 	if (!uimagefs_is_data_file(d)) {
 		memcpy(buf, &d->data[file->f_pos], insize);
 		return insize;
 	} else {
-		return pread(d->fd, buf, insize, d->offset + file->f_pos);
+		return pread(uf->fd, buf, insize, d->offset + file->f_pos);
 	}
 }
 
diff --git a/include/uimagefs.h b/include/uimagefs.h
index 6b34982e4e..88cc84b634 100644
--- a/include/uimagefs.h
+++ b/include/uimagefs.h
@@ -31,7 +31,6 @@ struct uimagefs_handle_data {
 	enum uimagefs_type type;
 	uint64_t size;
 
-	int fd;
 	size_t offset; /* offset in the image */
 	size_t pos; /* pos in the data */
 

-- 
2.47.3




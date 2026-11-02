Delivery-date: Mon, 02 Nov 2026 10:09:59 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNo3C-006Jf1-2a
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:09:59 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9D4C1200467
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:09:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=imre1IZo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="f/cBovgs";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610598;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GlaSZHQTWoeZc5UeCeDwE2V2NrFjG5DfIRrdY5wMAKk=;
	b=EsfvwJUm2+8pw1f0ODjXE1OfxOS/U4sGLxirQDn/IjnoBqb7XuIP1zKOXNxlUHRq27czhT
	iDyEQD5nIYbCZWCkwIvnt8o76S02qWl0IefZRZ9KjNg5Ei1KkZLpTFsgcButMb5jXi4Qqa
	6wdqxk0TFilRcBc77yi4OUSNC1mTIJwNgLbrAIpgflrobDGBXDrHT5eulijSXVZPgdYG66
	B80QjBnKTAGFq/b/3eAQyzyefngW8WlLe0/xi3+D/Z89LKrGk/4OoY0KgpEqMOikizheOp
	D5JhwS1ZJYGEtZ28wgFH18yQFQ8JM5P3NRnjgxPlfiw7tjZh7JlRJAYSkALlag==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=imre1IZo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="f/cBovgs";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793610598; a=rsa-sha256;
	cv=fail;
	b=SJgsrW2ax7rpU19zUvGZxfWEr6lPa56ApPDn0Tth3hN7jKD+QPfRL2Nf70k1uPvfWvO79X
	t3O04AShuHmgnAguUl5cmvJmWkZPLWP/s+PToK6SEOVLHIkL4SpfNb8KEAwcHxtlcHyXQ4
	A4eLHM7nTBF8or2BtPRR05zupBEiid4RqAvjptWlr9804YKsoxYpHMUZ1t7QfYlG5ivEjb
	o3Xj/jL2/6q3oiiN0wErWtflXTaKAVTpHpfnJArzwlzQMdBUitK0I5ETQ39FUTcL7KBVZd
	igVYT2ZdwJ+ClU9Vb0t7jTtqEwWMtk579zCEqpH+wP2m/G1R6IK2lWflUvdQdQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=GlaSZHQTWoeZc5UeCeDwE2V2NrFjG5DfIRrdY5wMAKk=; b=imre1IZoMqBDaYuOdQGYkWgJkZ
	xkzXg2vJl1HtqCwSvWqw2IeoGbYkuqTeloCILsZFKPEjHoc19zelKUzUCSLlEJQ+GcsibfPJS52rf
	1WRaimXKFqIWnXh94u84bjGaGn9gF5RZIZmecmlorRrsadaN1q/STXvz4DAkw3eB7I4YDnWPFUfTT
	oxn/1cHvKHmhOZoMlQaXJZtIVs122Njqis4KPCghjN+8KyllVSEDC5Ch8EEWBW1PXR0LAFIj3mbYE
	Ubd8d6T/iCLzg7U1ZsU1c40TObgDxXDZDIWErMbGvG8B7vidxiCOLmrLkBfY56IuSXoBHYIXEIIrm
	YChev6sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo26-0000000Fwgr-0XqP;
	Mon, 02 Nov 2026 09:08:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo21-0000000FwcT-028O
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:08:49 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 86761200563;
	Mon, 02 Nov 2026 10:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GlaSZHQTWoeZc5UeCeDwE2V2NrFjG5DfIRrdY5wMAKk=;
	b=f/cBovgsrhgw0APq614ABjSyMOrfwNV4Dd8logYWn+0DpjNcDn7f6rlYryiwFUo1lhiIX+
	ysyAxosPX9ICiIDQOPrkcC17375HooG9tRtmuwdA4MTgW3UK2/dYm8LDOjQWBko8t2PlUy
	tgTi/2EKcfmgO/7IAxRp1pt9gCTjHaHJhBUb0/sHGC3XtAn93LkBg/mRzh7HxHL4MSH/Dm
	ulQM6d/w1Qzn6KESivjal6RdQ9WvcZBjirJiqseRJsq7QchLK4igo71IIeJwGfY9xtvEyN
	9jmxiVIYMA+eP9fqx+Z0cxRVGvdzNXYQSZ9ydP5TfHbmPE53hu4kZsHP0RF+nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GlaSZHQTWoeZc5UeCeDwE2V2NrFjG5DfIRrdY5wMAKk=;
	b=KZMbDbwY5eh09hlOjhA2pUv+eY5usejR8Z4N+Cp5xkEiiiOU6USNsRExdfv0xLHjY+twBR
	WmNxQIbe9WBpWG6O8ye9xTf3b9v5kQ3fTPvVMq3YyDA7+AWjI8zdOzLUXgrI55CwXvpopD
	+CG0cbf7IesBEfCitc+MJ9eoMO11CqncK5F04WHk6xCwUHjTP2ajFfF5uYUBn5sOAn+Jzm
	ycLOhkuyONGwIB6zq5jdI6Mif9VuNQi1IwuOaZFQ05FCNETLQOViSNtGPjJBp0m4BQkS/t
	RWzbD6qAafSQsz8yRcK9FbBgsqjGau2A1E7zBXduCdwMoPZdUqSzPpF4ksK+1Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793610520; a=rsa-sha256;
	cv=none;
	b=Mp6WmB3Ge7NGG53Q5ww5f20U5e+snZvZfXcNytf2EPoQS24JZRSqEV0g2v1d/bbH53z2X9
	qofyk0qdrfVEUXSFARyUZjtaDz3+ATXGcPuPh8Vl3DhrYe1woaPEflsqE6HhEkt9FSDEDC
	bSLca4WPHf8GxU1BILFU+z2pDoMyleqJxv8om4Yfcg1SoQUUSWtzuzIWxp87tpJUmIoDMi
	CQSMuGe0mv5+ShHvuFl8ruHqvDcq4pTWj3Z2ldBIOuWDWdk1JrDqyViOyeTHy1BE/kP6v9
	tk/UwRuU5lgmM5SyIze7CRsTqY16ManAk4YSRgRln3sKMawOsinuLjKmlWf/LQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] fs: return error pointers from ->get_link() on failure
Date: Mon, 02 Nov 2026 10:08:38 +0100
Message-Id: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABZT6GoC/x3LQQqAIBBA0avErBtQK6GuEi0iRxsKCyciCO+et
 Hx8/gtCiUlgqF5IdLPwEQt0XcGyzjEQsisGo4zVWhn0goGuneOGnh8SdLZpveuU076Hsp2J/lC
 uccr5A0B9ckliAAAA
X-Change-ID: 20261102-fs-getlink-fixes-d634fd50d1f9
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793610520; l=1420;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=zNi89mnOqwfrqdGxgGSWmNV5TNHYN0uU2esfR17pCQ0=;
 b=g1YXacPOAKj7sekNMoVMkaeEkS8f96eX1P3AoYr4AbTKBjIri4QrpoSsdRNq5DNPu661tWiOb
 5zWhkB1RksBAXd9SEpWC2A6K604t+t9PiaVAWLtJD7vxxyHbFofQ/J4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_010845_546770_B55FE0D5 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Like in Linux, the callers of ->get_link() expect an error
    pointer when the link can't be read: readlinkat() checks the result only
   with IS_ERR() before copying from it, and path lookup takes NULL to [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: jsz6fy8iyqdx19fxpkjuaspbtrnmkqxm
X-Rspamd-Queue-Id: 9D4C1200467

Like in Linux, the callers of ->get_link() expect an error pointer when
the link can't be read: readlinkat() checks the result only with
IS_ERR() before copying from it, and path lookup takes NULL to mean that
the link has already been followed and continues from the directory
containing the link. barebox has no nd_jump_link(), so a NULL from
->get_link() is never legitimate there.

9p and nfs already return error pointers, and the squashfs series posted
separately converts squashfs_get_link(). This series converts the
remaining file systems:

- legacy returned NULL when the driver's readlink failed.
- cramfs and ext4 checked their read helpers for return values these
  never produce, so a link that couldn't be read was returned as a valid,
  partly zeroed link and stayed cached in inode->i_link.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      fs: cramfs: return an error pointer from cramfs_get_link()
      fs: ext4: return an error pointer from ext_get_link()
      fs: legacy: return an error pointer from legacy_get_link()

 fs/cramfs/cramfs.c    | 7 +++++--
 fs/ext4/ext_barebox.c | 3 ++-
 fs/legacy.c           | 2 +-
 3 files changed, 8 insertions(+), 4 deletions(-)
---
base-commit: f2e574b9c63c6da07a06179a868cae8a471ec176
change-id: 20261102-fs-getlink-fixes-d634fd50d1f9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




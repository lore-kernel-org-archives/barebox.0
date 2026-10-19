Delivery-date: Mon, 19 Oct 2026 11:54:15 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIk4M-000ZCt-39
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 11:54:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DC805201EF3
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 11:54:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="cL/qWgb2";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ez3GYSbx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792403655; a=rsa-sha256;
	cv=fail;
	b=C+GgEUJ5I1Ls3lmEqaFp5gT4Y9T3IGcVJ0G+eLhCXiScLB1PV28Y8p75wrpBCwOhUWVJGJ
	L2tJsk/WKlYz3uR/D2QQNqR3p/u0SZs0SMF282NXxe/AXS5L2LVRLpF3qP9GS/I7fTRXWm
	bNJip7DCDxwUxdVoDbs4W2z1nVp2AMrTgyByvIT9/rSx15Db3bG/yMOrhUSNA1MTPI7eBe
	KSHYq/W9bucpZjpP1NdtaX+5fD21QiFzaVyLs0V0OqkClrxiztUCjyB8tp8WfQuKmerIyq
	m1xMlVDEIMbXMVSxJfBHcM2si/0g2hyjtdk9JtSAC6V/ZYz+m5d8dWJWipnK7A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="cL/qWgb2";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ez3GYSbx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403655;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=aYr58h2kmVJ9F7qVOijLu0kmYQRLMkEKZTDqzFfWeoA=;
	b=g0Jc3O1kpHxZWPy8ypoimz1K+XuB2OA8w74NQQUdt9aaNeo2k0/pdxUTSVYqqeMXlPMoMu
	7GIW8Jhnaz1gB5uiOpn3bPfS1OnDt0xGr4PWl9NdAaDBC0iPJzIQ02vnYimeMoLSRqNU9m
	SbQq2v29/Xlwrt2EtJ/haM+E46dwynhtn0a+36jZOFXswS0poVqbjJnK9kOjqrbhwLsV9S
	70nsediHNEghtfHpOTb4iU1uaUtUuNK+vRvOrlzwfEl8V0Q20BfemfOVYdZcZ5O34iRDUY
	fciRlAiSzGn01xErnnR0re0uY3sYVAt9VcBPafb7ej8IxAUqIQ/ek7tA/KNuLw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aYr58h2kmVJ9F7qVOijLu0kmYQRLMkEKZTDqzFfWeoA=; b=cL/qWgb2FGg1oFy0DQiARK98D4
	F1YHaxFBgzO46AD4AAnZPzG4WIlb9I5O9eTk29dt387AH1j2aouOWrhPw2/dFi7DVAGmss7liloPY
	IXsJtWWSW8XaDrOxJ79fmlywCVGYI0Z+s9vs4LtVQJgvP5ygUeYrrbDh9o0/Yd/gnFBpHl1X1S69T
	AGHBAViLYtZERAFFRR545g2llZYUQsr7omiFvBe6Ntf3vbSTWSqxAKMQimEc9XGBs6kjT3ltJ8Gk4
	KHJbeYwaW6z9YIAFUNLnaV1Lkd2Gr3iSxUX0bY8ap8s45N8+XizQ5ghhEMGdIzerW9n4SXGQ4/D4K
	r9cVFRTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk34-000000074Gj-2KTx;
	Mon, 19 Oct 2026 09:52:54 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk2y-000000074Dx-3eZ7
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 09:52:51 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D73FE201F3E;
	Mon, 19 Oct 2026 11:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aYr58h2kmVJ9F7qVOijLu0kmYQRLMkEKZTDqzFfWeoA=;
	b=Ez3GYSbxLiTsA8fwQG8POhiQQY+z6aEC6oVbO5jCYXCj/P8RryXdEuYcfRjUBl+J53pm5B
	OIrtz+/oMVpTf77L2omVMuMFlPohwqd4Z0CQ9zqVr01Ax5pADLxe1AmbX+KqF9Lc9B6lwb
	4gqMkTcSzUOVu1rGvhYlHndIk7WNYEbvvXyH1Y6fYXzO7ZZUqLni1DdkJoJ3Fs4MLlVhZW
	xElNPtlHAZ/sOf6oho0Nm+aYUD1mlYfYSAEvmtDW0MfkiHdNixyUSbBrifupHSaoDlmy+3
	4PkGW0eXD9BjIHqt0c2YamFq1szhtoVLicV/aPFNVaN29kqBqrC3HNOZGDrqbw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792403564; a=rsa-sha256;
	cv=none;
	b=cqBp6Abn3qFVhBZGAj+G3qELtswp8/hW098pyjdH7HgVH6G+7ezcuLsxZUKVjz9d/mmRQQ
	8PyKf9BnoC3TLkTRY3dyUlI5icSsynLTcucuBkqW2e0J8zYbIBsxlLAiLLFDh0PKWUdi7v
	JsRM2TWLwF8rr2elKmH9vUe6JbA91bPG3+QwCmCnv8CozEEhSMRxeEfpvJbnkl3sTKITNi
	aqW8S+BwyYlKdg50GC63CzgIGklYYdgp5KzJEQTREtb/e7UYiH0iwAp2TuKNgMthe2c5PX
	zqk52GDCSCXf9lo9mppWGjzW7NOqdLvrIXEEuw3oMraKHPbtCvGopXWtGrCXmg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aYr58h2kmVJ9F7qVOijLu0kmYQRLMkEKZTDqzFfWeoA=;
	b=PfnIwF8djhoPZylE+y6YfJuaXZCsFdwveW2HvuFTKQsfbLIMaIqiIMhgZTb9kSfwg4NAib
	jHce7M3+AaW+3aZftesv+2QFwlpXWwh5D7O5/jjWZsOs/4q/pj9IgJ017hPXNGNxHDcA45
	YBd36Ox6abXKBZMlcfSPtlju0VBT4n328ZYu6QhWcgoOlRfXb/l2GJmTqZtIKJjFviKtcT
	AX56APSzXOQMu9IrY2W9DrDybpNHjX91pV9kokr6Bmih8Q4EB7F3MxZD6eP7C4v/2IPPe5
	PvU1pn9tn/JCQmuGBNrQwlY/SauUwTFNnj3c9wAP1f+O+/IMDUn4P/lkXLQGQw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Oct 2026 11:52:44 +0200
Subject: [PATCH 2/2] mci: wait for card to leave programming state after
 block writes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-atmel-mci-fixes-v1-2-6a636f3b28ca@pengutronix.de>
References: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
In-Reply-To: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792403564; l=2251;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=95KYtPWiQhATpLF5GjLaU3MAulnSoiCQVdezL96NVhA=;
 b=p9XxIBGamVBfH5Rh2jFl8tMk67C15tWvxhHMlHKumoQow//6JNKs6MdRpOXNRiL6boKZdAUxK
 1Cik+naylYoDBLdf6AdyL+5deuSSw/Er4hAcQGeNPXrjlV/UaPoOIeG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_025249_062179_ADF62F75 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Commit d8c3bab30542 ("mci: only write blocks when card out
    of programming mode") polls the card status before a block write, so that
    CMD24/25 is not sent while the card is still programming the previo [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DC805201EF3
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
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
X-Stat-Signature: yq8k48mug1dj3xrbffsjn87dytk4eptr

Commit d8c3bab30542 ("mci: only write blocks when card out of programming
mode") polls the card status before a block write, so that CMD24/25 is
not sent while the card is still programming the previous write. Reads
are not covered: a read following a write can still find the card in
prg state. CMD17/18 are illegal there and the card does not answer
them, so the host sees a response timeout.

On a KSZ9477-EVB (SAMA5D3) with a freshly flashed SD card, the first
saveenv fails with:

  ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout
  ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout

With more verbose error reporting, the failing commands turn out to be
a multi-block read and the stop command sent after it:

  CMD18: response timeout (SR=0x04100005)
  CMD12: response timeout (SR=0x04100005)

The same happens without any filesystem involved when writing larger
amounts of data to the raw device:

  memcpy -s /dev/ram0 -d /dev/mmc0.root-A 0 0 2M

Also poll the card status after each block write, like U-Boot does, so
that any command following a write finds the card back in transfer
state.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 874ee40cb3..1954de8053 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -266,7 +266,7 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 {
 	struct mci_cmd cmd = {};
 	unsigned mmccmd;
-	int ret;
+	int ret, err;
 
 	/*
 	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
@@ -304,6 +304,15 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 		mci_send_cmd(mci, &cmd);
         }
 
+	/*
+	 * The card stays in prg state for a while after the write. Polling
+	 * before the next write is not enough: a read sent in prg state is
+	 * an illegal command, which the card does not answer at all.
+	 */
+	err = mci_poll_until_ready(mci, 1000 /* ms */);
+	if (!ret && err != -ENOSYS)
+		ret = err;
+
 	return ret;
 }
 

-- 
2.47.3




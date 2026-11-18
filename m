Delivery-date: Wed, 18 Nov 2026 15:54:07 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh30-000njG-0v
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:54:07 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 61551200467
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:54:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zN7IubnH;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HcQQGY23;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013642;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5/JFdeduSnUPelpZ/tWIIR/N+xuaVE16d7nZr0s+sDw=;
	b=P576OFKI9Eg/I7Cffx/7umg1CszjpJlqLVaNmjIAgRqdcuXMPjdvrOuGCm+a3vOoDFR4sI
	376qLip3jteOUqHie/Y7Ono/1Bo9PPLVwOpibf5yNt54ZD6kYKYYkummqPFQ/L0/lZb7Pm
	0bnay3QqlnNhB6BQ8bgamu5Q6eiV2cWJy9dRfIUypvAJweZgArKLTdLT5dg/cD6SVkYG3w
	Tg7M/aKVoaTZBzG+b7TcGGN7MkIrb6St0hWj7tQ4/lqshG40GjoPJvBcOjAS2sPCMGH18b
	fRhLeQuBnbYVexjfz84VgNVEi07gJhHUVLEPaRMHqcqR8K8uVhMOE6LftAqw8A==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013642; a=rsa-sha256;
	cv=fail;
	b=KBUJmt4aX4x/zLSWKi9iS6qZIkNVieK7a5TV0Icy/8WHKnAicImQEkqrmR+vUvh5++3t7T
	kbwBT7Gk2XSGg/MmCMa3XKQAcSZmx9fick8tKMMi2j0JSMTljScdKWbXgYvG1ex1+gVH8t
	Udhn9s6Wub4gGE02Sxt1lJb2SETh/EcdWqPMLqLpQg6RzlCebbMU0wNHFoPq1/xdNTsM8C
	Y2Vh8+fGCo3HHNmRwPpYm7Q5OGsiDUr5owFRIBkrAcTce2EZ6p3opeEL99UsWeEVBobRFK
	oMMkD6Zp4/xUNosn9zVeKfs7Ch3t0EG7cro2Cdd8csysL+sULw9zbL3eEc1tNg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zN7IubnH;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=HcQQGY23;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=5/JFdeduSnUPelpZ/tWIIR/N+xuaVE16d7nZr0s+sDw=; b=zN7IubnHI7D8Tm
	tpRW5p1SQ+jH9PHP+Hynvppq1Y15ESYpGoNt2ZXD5Se+QfgY3/Fkn1VGiJwiBWQqa3LryeFBh1i5/
	HOsxqMOYE7BnWQn1RwtGi9qNu+75CAVphbAu5qUgMDZK+f24OmqyZjNyrQKZ7VO0TaDHR8K5m6YLH
	lBzTYf5AhjWOY3ltAn6i96CHHb0SQLO83I4d7heJ8cVshpIwzdgSLRcVsptOKr2s7u1WXe6wShdtd
	lFF+kp/67dAMyYGJTE7cGJBNEKzw4dLGSfaDIpETAtpUHsolRD5bgF75zS6DtnFAkaRWx3AVcLdWS
	EAs9xOx+3mvm/L0Y8sUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1q-00000009AFn-34go;
	Wed, 18 Nov 2026 14:52:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1n-00000009ACH-1Lnn
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:53 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 755C1205AF7;
	Wed, 18 Nov 2026 15:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5/JFdeduSnUPelpZ/tWIIR/N+xuaVE16d7nZr0s+sDw=;
	b=HcQQGY23pw3WnahckFGem2KhB5vhkZkFYhhq1xF7FJmmNfvLHyqmDYVUIPM3TSRnOyF8Ky
	IPvmyHjRV2NPXwpvaoz66TEtwmD10LPEa5CLayLHL0muC1YvnVGEzLk0+2LvRipueGajBb
	aw95nrwSjQXWZ8t75yyqVTXaSkY+sFlzCRM9ua5Zt00DkuC2NvROD04NH5hCZyUfoqQD2F
	+sRNA0b8SznGaSGAR4PYV3c+8f1zX3juJtHNQNu6MJ9b7M1C79ZuKcjrvt2lELrjs0t1Ki
	0k2UK33YYn6E7ittCvjvbY+1TLCNVQGimZMjesnIS4nsHcum5WSSBmnfW3VloQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5/JFdeduSnUPelpZ/tWIIR/N+xuaVE16d7nZr0s+sDw=;
	b=H1bRQop4XunCCW5cL0K3Kqrt9elddRmL7VJ6Ko2lIqiYrjoPR4xkxEhlN8oJ2n1x1fa5QH
	2SICraRVqAt52eQ7hJ05ItHpX/f7jWunPJWt2tbptsp41GLBSyT2pZgw5aq/zITyVDxxV4
	51Hux7FhnLi/Y4x561X3cjhCfE+D2TW9hr5gMIMrznRYeeXTtdmrxaETfgtEptXm+ksX6M
	SZPvFPQwTQWqO1NBdjOOIp/tcBp38D7NQny2uO3vc0adsiXHDhSMvl14M/60nbc2oYvVXK
	0jqt54vHZC/HKEseTY2A645gC1w3chhAdEXSWXmw0emTUeVoASto/K2WmwW+Jg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013565; a=rsa-sha256;
	cv=none;
	b=D4JhepbS1ecojJWHVjWjNy5aMm/yiJgbpxIr95I/EA2fTkdoqqPjrw6Wz3d3oetuLKhYAX
	mwvLu0T+l06QrgolUqjbZTFB7UXfoNvoXDEsQxS1hk8RqF3Zdxe3yOEEwUPWYYTvToQtg+
	FFe6MNu5Dpst6unrtabb7DWenukAiOF2FxkGGZVYWRmvNYBR5N1rTc9uYbK7fchIHV343u
	0J9X5xi/PCYm7ZRnhac0DQMDs594BqLB3uJX24utPaGlwnqQ7plvUqj1hs6CPsXU8fg/ol
	XKanrqlDrpkxSW9VvtXPOBPAL6HoCnaaqM5cg2CGn1T15lpbIAE26OQgjPKD8g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:52:02 +0100
Subject: [PATCH 12/13] fs: pstore: don't free the records when unmounting
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-12-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1492;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tgQp3Ro+gh2dDkQA5x+xPUZQHrwYz7EwiL0+kSjOa0U=;
 b=0AX3DiujqodOwt5wJdnrJSU/tmr+tUdCeSWbB5E2yKH0EFCS76GAjlrTG+UkBq3aGEWdSVuvn
 MrinGf/qWzPCWoSOjlNL6l4ysr/JYXxlWZhzuHAz6MsvOOfMHm5UXyK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065252_339804_716D038D 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The records belong to pstore rather than to a mount of it:
    they are read from the backend once, and every mount of pstore shows the
   same list of them. Unmounting pstore frees all of them nevertheless, [...]
    
 
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
X-Rspamd-Queue-Id: 61551200467
X-Rspamd-Server: mx1
X-Stat-Signature: ggknssftsub85yz1ryx8joogw46oyhp1

The records belong to pstore rather than to a mount of it: they are
read from the backend once, and every mount of pstore shows the same
list of them. Unmounting pstore frees all of them nevertheless, without
removing them from the list. pstore is mounted on /pstore at startup,
so unmounting another mount of it leaves /pstore with a list of freed
records, and so does unmounting /pstore and mounting it again:

  mount -t pstore none /mnt; umount /mnt; ls /pstore -> use after free

Leave the records alone when unmounting. They are still freed when
removing them with unlink().

Fixes: 160d2ed0ba18 ("fs: Add pstore filesystem")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/pstore/fs.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 1a0eba4fa4..a5b48a04c0 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -208,15 +208,6 @@ static int pstore_stat(struct device *dev, const char *filename,
 	return 0;
 }
 
-static void pstore_remove(struct device *dev)
-{
-	struct pstore_private *d, *tmp;
-
-	list_for_each_entry_safe(d, tmp, &allpstore, list) {
-		free_pstore_private(d);
-	}
-}
-
 static int pstore_probe(struct device *dev)
 {
 	struct list_head *priv = &allpstore;
@@ -243,7 +234,6 @@ static struct fs_driver pstore_driver = {
 	.legacy_ops = &pstore_ops,
 	.drv = {
 		.probe  = pstore_probe,
-		.remove = pstore_remove,
 		.name = "pstore",
 	}
 };

-- 
2.47.3




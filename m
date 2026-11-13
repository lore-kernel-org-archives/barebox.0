Delivery-date: Fri, 13 Nov 2026 11:03:06 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo7d-00ANj2-2d
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:03:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CAE56201BFB
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:03:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dJdfNuiq;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Rr0jGUt7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564185;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=uxnqEhOokCFNFreMpzTS8rWXgUbZYjCYbRJwLeXhncE=;
	b=bCPRHeYenqxCGBSr8HhDfv3Y1lSWxw2kApMosoB8AWtMuDvUIlgRBRnRGi/jFhjw8JqS96
	cu2M2Yjhqvp0X+p4HNqHIp/B6h48ryBozbNPIEd/HDLLbqJxIWLJKtYi+PDMzdPxb6LLF3
	/Pcz8KVw9KMoxbS7E6SCzoa2Ad/IZshkGR2DwEPa1yJjZI7DE/2Xmkm1O+MS6xNitjeXAi
	gyyaBicbFzi+sYRAigp585V4h/lhjQlSguqb/Ie3GwNFPwmZKzoASsrmbGY3d8GdT3Q7iR
	gb3EWIx98VIqJ75lEw48pdV3OP4db4BWMyn7P4GnndmB37jOOxPKmHV6MzZwMg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564185; a=rsa-sha256;
	cv=fail;
	b=PY+xTG7nsgHVYbx2hPZnG3/jZJxPipZsftNd2heMy5haJpVBE7PbgR40HF+odPgW7Q/CqT
	KH+Q4kGLUtjU0RQYwA5canZyVc5CQpRdJ91wJRLb26N62WhMvbrdYAZR8LGyDVJWpJMBHx
	iOTKw6tuHHM3Oc2X3Uj5lCaJySyb0vc7pnMnUPDQQHQuY134oUjn4YFThYNN7z+SSU584u
	kaSAZxZHnjLUa1m8QRNnnA4zwe9LtIrM7341FpsbDJZkZe4sVemz8TeKWavPt3Fg96mrLt
	aELdeg/HnslmzqTyXOcKWeayt5lu2y55Oj+HisyCMuuFhoDM6J3h4stMcGMHFw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dJdfNuiq;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Rr0jGUt7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=uxnqEhOokCFNFreMpzTS8rWXgUbZYjCYbRJwLeXhncE=; b=dJdfNuiqNmV0W9
	uXCyMaxTkiJZ+dvADKhjuiWoyJ5UQrOAXo7RZuTylz/V9udCzkZ7I3tcYsAaYMNrY4B1Wf6CPMWjI
	4QJ+1h1p4rj6leWoQ5/QGFbuM7v7QpYYKEvZTgyeBOZKCqG6XqHPIyg/z7jEkNIk7n5yOmbcYNdqw
	kE3Bwqzi7Hczu8axk3lpxqm5xVn0u2Yw/dggfVucXdX281CN5VRTQ0M9l6n0DXjybtqKoVa61aAQM
	+zZ9zzYyZXYuhGtj6EiJNjf0aVpIU8nvyXy3XSxNjSotwQcHKzxiWbyLdnqJfSYyvmVwAL0qYUHuh
	9neDuwDZR4SCK3R2B7dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3H-0000000CHRJ-24uU;
	Fri, 13 Nov 2026 09:58:35 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3C-0000000CHO1-3ECV
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:33 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F153520592B;
	Fri, 13 Nov 2026 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uxnqEhOokCFNFreMpzTS8rWXgUbZYjCYbRJwLeXhncE=;
	b=Rr0jGUt7cNQ51uiikUix6m69UGp/kwHTgSgvyf+mhKfT4iddnsopMapIEOlJaw48ImAZd+
	xLLpdObgfzAmxtP6oBQkzJtbmrzhswLyOeOuZ+Goev9pGu8d3ESk2NeKAVEmuqYxPAL3UQ
	g948VBF03uHXYJ8f33v1IUZEvGCNOqTCd+zQvJF/XM3H0PhC8SFBzzKY9mzKjEmSg/7wr4
	EORTHJnQm/epI6ossYZYATrVYVktRKHnGoW2z+xUfwb8CT4WIByKjOOfTKjQdz3eAWcYmm
	xy2RyrXiUWRsLy3r8ERG8cRN7oiwpkA+vuxfh422qkzQZHXN4E47xezh7lYWag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uxnqEhOokCFNFreMpzTS8rWXgUbZYjCYbRJwLeXhncE=;
	b=H5j+YnhubCpY7bWQWvWOSs5EPJt61ex1PdVAMqxSAc5V1Q2G1zMgiVmLm02nRBcUR9QOEG
	ONI+JDzY2zJaMLsu+Pe+OoR91sp6rvqje25al3wQmMlGSqaqFnTRUrK6jhhQWAbobbXKS7
	keFRRKgmIhgfiN1qjGjl512t6zRA3nC5bmtdTkwc7hdVUgzbTng9n7/Po88Q/KSw52xHmN
	hiarvEaKk0fMqLrChRB+jcqjMB86W3JqpjLOF1lo3Sx+7gTh9MT/yfo4AT9bMcuhCuam0l
	V2wqnx12WFkDXuiKgdWhB/U5YP7KPrsqivoWKWzeIConwTxzEIDCxXrS40W68g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563909; a=rsa-sha256;
	cv=none;
	b=cX34DweazmqxQ8SsIWxPTSDuzJJslypGaKdSWCXvHOQcmt3IbPnLNlhPUCiWJBMISL9zbd
	ZHQFIgvRVGO2ak/q8gavhEcIjWAl1Vh+i9Oz7qT+S4ZXIbUTltsRsWYvzRZZU9/RwW/kN1
	e2JIm+BXGXcJlPPQeb0RK81OZDQ1XXwpXIb32k/7Cirb5rFpTc9HNUtSoUq6buPIDXyv4N
	JD98XOyazcUYlNcdJEN8urYVx9gG5wQCTtKsNMxJjs3xLuI9sD4N2vH/i4Hmo+GN5SiC2p
	RjEw9RLSrs8zJiYD8STba8GAfYetFX98tOwNdMx8xa3z8zE29wrCyDcUSs1Evw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:27 +0100
Subject: [PATCH v2 4/6] commands: boot: apply -o overrides to boot entries
 in the menu
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-4-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=852;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pIGqKAw7DP4lNcBu7SbV6M6KBLOoLeMwzVvrUms/C3E=;
 b=OkAbdNiLz+04UL1kNBA7R9x4Dq7jwHgVDw4DnuHQVePuAW1dldrv52CQ4OtkZt+Cj1WqdydC9
 71KQC34xj6KBERkukp0o5ElewQzxKaJNbBTCFs+qtj4aFY0VyvtumEK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015830_977934_D511DE1E 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  boot -m collects the boot entries and shows them in a menu,
    but merges the overrides given with -o only into the entries it boots directly.
    An entry selected from the menu is booted without them, so b [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CAE56201BFB
X-Stat-Signature: orc8o5w4cukiik6ktzwtq66imj9nsioo
X-Rspamd-Action: no action

boot -m collects the boot entries and shows them in a menu, but merges
the overrides given with -o only into the entries it boots directly. An
entry selected from the menu is booted without them, so
boot -m -o bootm.image=... silently boots the entry's own image.

Merge the overrides into all entries before showing the menu.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/commands/boot.c b/commands/boot.c
index 81f392075d..8e8afdff9b 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -204,6 +204,9 @@ static int do_boot(int argc, char *argv[])
 			goto out;
 		}
 
+		bootentries_for_each_entry(entries, entry)
+			bootm_merge_overrides(&entry->overrides, &overrides);
+
 		bootsources_menu(entries, idx, timeout);
 	}
 

-- 
2.47.3




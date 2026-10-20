Delivery-date: Tue, 20 Oct 2026 09:38:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ4QN-000wXu-0B
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:38:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C96E202136
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:38:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0kWFKWxb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OLUu4Met;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792481899; a=rsa-sha256;
	cv=fail;
	b=cyO6jtgcbRCsJNipkJ1tuaCSkCB48/qgXNBz//kW7xhhTWHDHUt7OZfcvIykepugN6PmSL
	t8AeGpM1Qx2LOnK/54gXvcEeQW9tUe/v+Iocdz2Lug7krp2pvgKgNu3vuK2Tt9Yok1JabR
	GwCiru3aYgUsFUmPCGkiC3uiX1ppSe3Cn2QDc6Hi6DJtF+IJJyG0bWsPuRybHNokFyvj5J
	cBuOf0TO29MsBVTygmUYRYRlXQnnJQQxmfLDq/U2OqW7ZpIZPw3ZjXYJwHCQB8Jk/XkxBT
	4i7Bz3Aft/OWOAKVCBTzgJHnMgXhMmvL/wpThNFQm40U53HSbSHoLFJd7UG3qQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0kWFKWxb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=OLUu4Met;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792481899;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=vyazT7QV8Q1xHboz8AeS5bvdNYNeICjeyIIQDSgp1lI=;
	b=RhKuBR59q+YMjzY+n17gZzGhT7o9KuPVkvhG3k81XyVvnNuJA+BTqfsMKKGtQkOIHJ0qwJ
	dRPrMcRW6jhNybKSL0q2E2hD5cnBCvVxL97NRZta3l4fvxCx+IO3zfCJreIIlEK0rsS1CR
	1E9o2iJbcmPlu3UVjsgB380sktTrNkPLfekp5+LaIafupxxg0AN48Lwk2fI+cTYOdiQnOE
	I7MYocgmm6irIzTjXseUNtdUi6mc14AAhrbSIPDCTVYM6bmepArDDurfMk5TOekK2Dba9k
	4S8u9qtOvdZKuoszGPm+YI5BOCdAeXaWhZylJkxyJpnw6cEW3YaHDqCHC1PtiQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vyazT7QV8Q1xHboz8AeS5bvdNYNeICjeyIIQDSgp1lI=; b=0kWFKWxbl1r0siFTsRtK3gmF08
	4hfMwQx1mUBkNb4zZBufoglV5dKbxZz7KQTzoOfziZ494kJ1mWy/10Kb9AVF0gnRssTv+/ePmpJcH
	LN7DjuQHgc+JzNFm2uLfGaw3ezhmF0gwuRqztgupTxVuDSGbRb3+6f+mB7uf8HgclSbZlCBqVd99u
	N2zlES4wp7DVNXckvjcIzKITGkRTuEgk5tOS5jM8xwSpBECi37aZVknIuw54viDWwv5KDDF5+Js0S
	lqvWsi+0ZuoAjiQvL0dwAhOC2hmMwvlxcyFa1Z7VKP++PU6E6DonyG3R30YQfg+TBA8sTeXppZOif
	8ku6+Dcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yZ-00000008zGu-1Rfl;
	Tue, 20 Oct 2026 07:09:35 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yW-00000008zFX-2aeG
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:34 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B976C2021F2;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vyazT7QV8Q1xHboz8AeS5bvdNYNeICjeyIIQDSgp1lI=;
	b=OLUu4Met/tDzMLVRvPCn4xbX47JznNGrAzZV2DFJ2DJBMB+MCFqH4Et7CgSLVHEu2wJmIl
	In281pPsPJe5wR/nW+7BrCqE+CZpsYOgIM4AJ+/lVMAslt+uoaryWAb7GSgxj+fcfgdKjj
	MIxV06sWBdcrj58XJJFY61AVeEY9EDjsCWabzdnnXeSLgvHTKTVYZ2n43rtHdcivq3I+7L
	7w/TGAnty1h4/WKHA9uDTL4wOOo8NUphTLWNw8ln1ShcGwTIjPd+PtxEg3TPdu0sUOoKBM
	DPahrzC+nz/R+oGfMrmX49CRIUt0lyqN5uVxjB2hXntPnv5mlflinl4mcvVB8g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=AqrggCfQUOEE/g9NWgRPixqz/ejk+WOqNum/ShU5aLHX0IcsNaOj29wFe8pJTvoAXkbSF/
	Hr6134qN1YY2XQCsg4S/ch05Z84ZZQtFS5X9hW7wwVTCMNF0KYNrVmNj+kf1Efb5s2r6gA
	kXqE8dx1YDwgsWxoZ49mtFHGyTqqQa4VGj0MO8VB+/C9i+zSRXvuJRiStZUP8PfQYNji+6
	NdtXAfZrFE0FCYkZERVyA2zNpcrDOibai3+damuaT4/KcEWIgGWjIOYzfwRUpAIkBv0U15
	84tNpILuYo0lDoD1eB2OTBfSUFixvmHLKTohvYTJc1plKmoa6MYRin3iF6EbQw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vyazT7QV8Q1xHboz8AeS5bvdNYNeICjeyIIQDSgp1lI=;
	b=eVg+OeBNsgOaGKS3tIt9jkK6yzNl1zTuSyjekv6Cx3NYBF0dW9bnCiFyhs2X9yyFSAIVS4
	rA+mAMN4aMSqTTXrVdKH0hiGRe8aJgBgl8aSMZEL4eRc2X0zx3djm5LS4wWXcmoVhcbw2e
	F/OYoni4BcL04/GYC0bmAGRxvt9TRj/g1JtTPpY6WGnILEXw5fWiY2aTJhGBYCvNqDHugZ
	0INRLRGUDGwfoA06khpbCqlKlqH008GsdAXnG2bff5IEcR6l/io5sWUZYoQUV2+qpqi8d0
	FjLtljn6y2ITALwvPPRoRtcCWCNGIXmT95uocPuwBcU1rAjZSRp3JR9kp9fM3Q==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:27 +0200
Subject: [PATCH 2/9] fs: qemu_fw_cfg: report symlink target length as
 st_size
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-2-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=961;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EKXRpIRqFAad7zTeYCKSF3X+bFgb+JrOwncGdrsuNF4=;
 b=nmR4nGYr0VlVjlmVDRW+H3H7DFemuOaJ1oqSygMlmxaRnsDgwXW0+jMUy0PHS4Q1fggb+xUWu
 JZUzKnm215HCOGWoQCuPhRFZQxmKk3hWignjiYzTy/9GkSaOZEa/cSX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000932_834878_7F9F368A 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The by_name/ entries are symlinks into by_key/, but their
   inodes are left with i_size 0, so 'ls -l' and lstat() report a size of 0 for
    them. Set i_size to the length of the link target, as other files [...] 
 
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
X-Rspamd-Queue-Id: 3C96E202136
X-Spamd-Result: default: False [-56.36 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.95)[99.77%];
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Stat-Signature: uz7ckssfpqitkfs45zag5of9r4msbwx7

The by_name/ entries are symlinks into by_key/, but their inodes are
left with i_size 0, so 'ls -l' and lstat() report a size of 0 for them.
Set i_size to the length of the link target, as other filesystems do.

Replacing the leading spaces with "../" afterwards does not change the
length of the target, so it is safe to take it right away.

Fixes: 050ea5bb93 ("fs: add qemu_fw_cfg file system")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/qemu_fw_cfg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index d0414b127c..fd16c09239 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -241,6 +241,7 @@ static int fw_cfg_fs_parse(struct super_block *sb)
 						    (ndirs + 1) * 3, "", buf);
 
 				parent->inode.i_link = s;
+				parent->inode.i_size = strlen(s);
 				while (*s == ' ')
 					s = mempcpy(s, "../", 3);
 			}

-- 
2.47.3




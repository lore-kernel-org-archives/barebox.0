Delivery-date: Tue, 20 Oct 2026 16:38:59 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAzT-001402-0r
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 16:38:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 60D28202863
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 16:38:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RtniAROK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TeYyOTaN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792507135; a=rsa-sha256;
	cv=pass;
	b=bqWQlMvuIyKIhAIAPLWIUd0Pr27AiRw6m8xcD/5PEIHLBV2e0zT5vjmM5YYiQHp5XEwjop
	CXbqOAj16yyinvauhr2rfYfCgaRjHguRzK5cCkrZcLOSb7Joc7lha1Dz1aeeuPpa8qzbY0
	qz26Xt6U2oqr+Y8Elrm8wKUyGRC0Zjdbz3Mabrf7kgVLpCycq/zSOxLSiLG30Sqh/2EKWV
	J9zM4brMoEXFmBWZ4rYqk6hr33GSMMFVr2zZ11h8cP4UugtO4QfSaT1txSmhFVg9J0IQr3
	3f4tQ2myhxPr4+bW4v2ogE7TsSQJgD5YTst612D9qalTwp2RcQLm20I0fdqBhg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RtniAROK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TeYyOTaN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792507135;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PvSLrNJf2MHbiQKe5Gr58LpNAIJNFM2uZ3v3l/bLBOE=;
	b=GQuXxgu2KOQQyJg8IrSsXfwes9/VktSOZIYu+WypglnFGyxIlEuPebjIxhQiy/S0a63yUe
	HeAoE4bkL2D/xZrzEJbDZtzZY+PYjgrj4vskJB8iQO39bNkTsV4352jtmT/k+VlY562P5I
	ES8UBjhh1iqia0ioKv45HsdSNrqgALM+kaQ+7V0R3Z5wo3zRdVu6XRyQSe42QfEk8HffdW
	8GxQgF+5LOr4Y6srZwP0R/popLk2wMPGMvwRIq/1Vx0rSNFmcTwwOClmPIdOuUDgrKI1pk
	Q6uHWpubcmwJmlWm0FnCqZNQoVUxhlF8bo1QC1TfpHwAWNmYbu/pzB4sY1AS/A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvSLrNJf2MHbiQKe5Gr58LpNAIJNFM2uZ3v3l/bLBOE=; b=RtniAROKFy1pJtjrlKOQ4kDAp+
	rAFsPLmtbqFFsYcgIiFzevaTpu40vxj3I3kW98RJeOZF951aElKCrjfUVzL0XzMEYoq0B8vCXpYaW
	uOGjmAqleGK7IGM1Ise0X5FTo9V/uK83OHA/3GFqk/6/St42gtWwYi5N96gg0S4INR8/vIhEhB5l+
	mBi0RnO/UOy904BVY4PpOhUCVb0v121DxVKQU+haeLK4J8pX8oK6dCU5cNd0uZDmr8PVYG3uahYqo
	sclU92dn85JjehiMtQHDqh1Gkdb9Xj+YnsRIhNkzqdiEEpj0/R49sGpwi6WhiAZk3nQJO/95ITbSp
	iVoInsMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAKW-00000009qVf-4B3v;
	Tue, 20 Oct 2026 13:56:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAKU-00000009qVD-2Mhl
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:56:40 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F0B8A202013;
	Tue, 20 Oct 2026 15:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PvSLrNJf2MHbiQKe5Gr58LpNAIJNFM2uZ3v3l/bLBOE=;
	b=TeYyOTaN6FV0aTBZA6kv3HPz5gcMOLJECN5x4G8cHwT5hnR2RqcSmCP8VfXeL7U1TmZpCt
	LwdWV551PaO4Dl3rZfCxOi8+k7RbHWEXp9VWW4+gmEOksV+mqoR7SH0WMeUaZvZPDHgLbp
	m+rGHRMIgocwpmUuUEIeHlKQ8kFP6WkpNgyEdaRKle3K4NuP6mvHFYU1pAHgdtG0Xuwlc/
	mUznnIhf5UwMp+4rf9XzFU09lAdCohiVimKymIwyUf+mj7mtqE47mC39WECusop4F+nDlb
	B6epERVPZ64z1xC96QOinnNFgTJPs5tZQU3aWuVVrASYFzBDeSk5OduN2Wt2JQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504596; a=rsa-sha256;
	cv=none;
	b=bf8mqnJd5WAGpHbL2gozOAZw0zC3R/kL6qdX39AoGdXsx4PIyyo6R9mWlwq2h1nBYOTOga
	C9rKnqWN2nHX9Q3KfexPv+SChgsFagXLx/IwF2KlFE4WUbQjlKdzb7iox2H+tsuMV2Yj6f
	Gr2gvurZ5te3trnTcLcfHLCE0/y/uFSEz5qDWGg20fvc+5e1hxdHcNJssczhYRwQeBQekP
	4WYgdp2/o9z+rYMVIZqqd78HyUzRvo6GqV/ijNYb4DstGXH3biNtejKGc7gEL6s7NOVMFf
	YVhTmnuaY4i4EQgR9E01jdHCSs+s25ByeIoddrHlxD12D9IlN0kLPz/ZIyxDTw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PvSLrNJf2MHbiQKe5Gr58LpNAIJNFM2uZ3v3l/bLBOE=;
	b=BaZTVPFlKA/3ooXTDfTfjBXeBj4H9o+R4bM1O1SJMmLK8kcI0hW/ThPK8hxjMAdHDZz69T
	SIzv2PpuHEjgVpm8Qb3rAwX93Vf2OskWvOcfLpUdXldX5VV4/xTk8O5HeqeqV5hYt1wduf
	wXs7KVAIFis4jJJZe1nCEWBgd+3pN0n2DygrEUJl3iP2//D0ovzEeQrzZMyyRrdI8hUqoG
	oWQNcdHzWkGeGpRzZEFi+kTYVcmp6IfO2RHE2Oq0iwYdOE5mgL+57mg6sH4uZGsXCDbiii
	9NZcCcqzQOFAp7XcmLW29kHO14Thf2ARP3tdHnA8Reeup21X5pStWw7YJJFl5w==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id DFB94FFA47;
	Tue, 20 Oct 2026 15:56:36 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015140802.1227004-1-a.fatoum@pengutronix.de>
References: <20261015140802.1227004-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] fs: efivarfs: skip variables whose name does not fit
 struct dirent
Message-Id: <179250459691.2718816.17089990214505618920.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:56:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065638_884596_E33A106E 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:08:01 +0200, Ahmad Fatoum wrote: >
    efivarfs fills struct dirent in its own readdir, so it doesn't benefit >
   from the length check in fillonedir() and strcpy()s the variable nam [...]
    
 
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
X-Rspamd-Queue-Id: 60D28202863
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: tu6o79ir9s6p8bo9twzrcaauixhgj1uy


On Thu, 15 Oct 2026 16:08:01 +0200, Ahmad Fatoum wrote:
> efivarfs fills struct dirent in its own readdir, so it doesn't benefit
> from the length check in fillonedir() and strcpy()s the variable name
> and GUID suffix into the 256 byte d_name unchecked.
> 
> The names come from the firmware, which allows up to 1023 characters
> here, and efivars_create() takes them from the path, so creating a
> variable with a 300 character name and listing /efivars overruns the
> directory allocation.
> 
> [...]

Applied, thanks!

[1/1] fs: efivarfs: skip variables whose name does not fit struct dirent
      https://git.pengutronix.de/cgit/barebox/commit/?id=69e4768c46df (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




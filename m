Delivery-date: Fri, 13 Nov 2026 11:02:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo6z-00ANi9-2B
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:02:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 80969202C91
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:02:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eqXCfKoj;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=TwCwAujz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564145;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GMQoQg3/4s/TXbb/M8Tx09QbHUaq6QXSBUTil4eDNAo=;
	b=V7uv75m5GCPB8jBUWqXZJpL+uyOHxlSnSBVnOMIrnwnr1LTYgmIfNXkxIGa9q7og3e3h2K
	QCkuhIJYiKhusHFO/8P61poOKwegVZcVhHfTyR+VmocsE8b5AUsUqKlFoD1JJ37ptDGhJh
	7s71snb5aOYbbNuppnq1/T0kyWyJVD1dK4Q9/7JcLMx1R21qd5ittii43/7dwbub/258P1
	vPxeJRj9EurJqftTWdmVg3yRrcDwI2mZ0p4IZWxvsxsnSI8V4F8U5XuM7XY5WtbHFYBWpF
	A3SykIqhVjW2fW7s7Qokm9iM1W0iSHwktyVjd5ti9BkbKJSOADOXZof0gXyEvA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564145; a=rsa-sha256;
	cv=fail;
	b=aBvax18aWEXVm9tV+lU+ti6WzTSYXiNUCYsMRkJQgWlTgtEe3u3ODKWfsQYEJWyzXN6Y0C
	MGrxDQDvQNKX+WZ/GAXoBDWZOVjb83NQ0cwHPITgtVmBNHDq2qEWyr7EWyW2zcSEsN8/z5
	xjK1HP1mxs2bi1qxA/jwl9bL0A6bv1mlbtqqnush/JRIAr1XNFXyT68H8BEwuZnX/hQXIu
	x92Wud6fnOmqQWDjiemv3o6FbkAhbTIoadP7BJ8BpGyvSkpW6gxcxWdYMfAipzg8BTy+M1
	9ZUIneCgY9DLcRKHoQVV0GnpC/vgmgwmx4XskQxCqwSCIgj969TRBl1BoRW6cQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eqXCfKoj;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=TwCwAujz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GMQoQg3/4s/TXbb/M8Tx09QbHUaq6QXSBUTil4eDNAo=; b=eqXCfKojre38W7Vj3SGYpQXa7d
	HxT4ZcKrmnf8zBHpNHhRam0QQmOKaMD4Vk9GF29vxq03G8sYReNkPtHLgH3UAiTfa6ZvL4PLcPshj
	vZXhYDcRCVcvO8VjuMQE6rtw+FLkxLm4U1HB67Hu9ngKl8Dgq5FnktkVXtB5yiVEI+LMnU9vIY8Vj
	6z5aQExgVXWDR+pms0t/LPkI4iGq9PC9EwcB6iKrAPVlCkn3otpJtDtzobqHF56XIHJZzTXhEdMbW
	sX1FwoAtoMkatnLVEJp4rXZleT3+mSW1pT11PKOyymnLSKUsUMK5bZBWO6JxoD0XnTvynJIB0dlI6
	AeoaF1FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3J-0000000CHTE-0cB7;
	Fri, 13 Nov 2026 09:58:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3F-0000000CHQ0-2wCn
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:35 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1D9382059D3;
	Fri, 13 Nov 2026 10:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GMQoQg3/4s/TXbb/M8Tx09QbHUaq6QXSBUTil4eDNAo=;
	b=TwCwAujz8V50TtAS3a8if9pDjGVjF7krKgGCsBMnGhEo/dJcIZIF4noscEYTeJ5DhhzoE9
	tNbSzT/2V2ywPBZOCqPR/OrCsRbT9vxWsuIcrtZ9/E0KYJEc4UrsXpOhMi555VJZErxc4N
	Nv1uKcu/m36lIdy6vQ3K1Ap+RcnL6UJsczmkqmcfa8uwkmZ0DJzy6V5+W5fxSUKjC3CjcW
	6mXBMsFspGF2hS2TMSc98Fuis7wzQAhHnsWoGA4o/c03Jw+S7R99IGEpi+DWzMAV4GTrwc
	5XhpYBUrOV3xkRLZ9pnKsnQDyQDPi2BQh4msdUhUROdeZeBDut3H8jAatW2xCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GMQoQg3/4s/TXbb/M8Tx09QbHUaq6QXSBUTil4eDNAo=;
	b=OHSOtOvAT75XaAT+RKso3ikLi5xHHEhLqqHolwX3L1zoknNt6nc2hyo8/VeGXUJrhC6OOV
	NOs9wAjmvbBzctjPXarpbABa0Ig8AteB0vpsdc+M7/TcczyE/oFuAOsrXwka8FKPDrDAuq
	VDjd3PdZZfc08L2bhnf3yvhmB57/JrdYRnCiXVheRYUGE3S4hPtwikpL7HyOUwnB9gZZhn
	LFNiVby7YPxGN+dGrWKdMNWMqfeZXX/xoiiitapOsOQ6/bFeJH6qbpyrXnCfNzBfvsQrXW
	lL7hWCDzOqOMUzdT39oF6U3UTC32WZDDjRfWP2kn5Y15UzDwOQ9aJA9338SR+w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563909; a=rsa-sha256;
	cv=none;
	b=cY44P7zeP9QIlIVUITnn35eKsc46/oa68x5j4MQ0CInb/QwmjfGm02xo04lF1F3PcvXVKS
	qrGdCanEoPqXvks9HhLEpp6O5zry+xNMNJZDV9nHz0kcInoMvvfdImLEAya89ixhao/tMA
	3zpr+HLcbHV2Llei8nYxDvvfpDNVLNhgVB44lfFSvyv7Q446I2ZNroLCrA9x2Nq1ntdbjN
	Ws+mx+NoKdNWPCAKPmFCB2ONRWlTIJD8L0GtqeyiD8Cvq0XyeGfOnJMs+5NWRad+8wYkDv
	XrUHOwT94CKMcRNv/LUuNKjBJ29eWnCj4Ig7FXGD0jg0rc9t0RVfGwv5cTAAAA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:29 +0100
Subject: [PATCH v2 6/6] sandbox: defconfig: enable boot overrides and
 devboot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-6-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=1058;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=y4MKHYoVOlTNozqexrgxF/1hTygjG3we2ALx7UgFikE=;
 b=V3h3P2JgTWwfHCQ2HVpcLv3urnZHQFWkyaY4f1l+G/voFZDOk9nyPLdkOxCeJlqF6hGUqPqUK
 mX8rGonUQfoDO5TttV9IEUa/HMtg3SK8MEAcQQ4eA0dNRuEBmka6wrn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015834_168178_C4F90EE8 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Enable boot overrides and with it devboot along with the devboot
    snippets, so that the devboot tests run on sandbox as well. Reviewed-by:
   Ahmad Fatoum <a.fatoum@pengutronix.de> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    --- arch/sandbox/configs/sandbox_defconfig | 2 ++ 1 file changed, 2 insertions(+)
    
 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 80969202C91
X-Stat-Signature: g6msas88kf1wucaxk47tutfiuses8hpy
X-Rspamd-Action: no action

Enable boot overrides and with it devboot along with the devboot
snippets, so that the devboot tests run on sandbox as well.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 5b2cfdd515..46f1270178 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -4,12 +4,14 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOT_OVERRIDE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DEVBOOT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y

-- 
2.47.3




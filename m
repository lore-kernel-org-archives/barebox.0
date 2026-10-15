Delivery-date: Thu, 15 Oct 2026 16:12:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHMC1-00Dx4m-1A
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:12:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1DE41202601
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:12:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MjI5V4g+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NoVr8vb6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073541; a=rsa-sha256;
	cv=pass;
	b=fV50bUHdJF2ZbhRX8fTRGBWAAnoLMANUEQmNQjHnolrXOgTriqVAq8RVM4yZ3GTHJG9dPd
	pe4qwxa5zCwuSEZmspu1iwgU93kwBMO9voYe8PKjc3hC9b3PD497+Ud+b50c8qkCZj2tp8
	tFQVEFG2OvugOuehzOu2JO/Br4zAj5bt4xmCi2Tb0QpE0rlNBglRyuYmpGp80TXLqDHAXP
	sDWJj9XTBLTc3267Ly9jETHdvsG3RS5ZMH1jMY/BwHOqlXGjc1InFSQVXxefuGURaqy/R1
	9lI2SHaFdq0YbGVMg/bVMhZB6YH2SWyhP3/gOiwWZ3oLnrfUBRqzmIuNfQdLdA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MjI5V4g+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NoVr8vb6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073541;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0w6POJnf8R7Zgtgh9PhWcC/yPDBfUy3zJLnOFZjL6cY=;
	b=Df1ge+PBA7M5iN1NQsgiZQzTyIL7vA4I5K/l/5XFwbnLAk9KO8V78sqNPcdsSifDfs0YvX
	vQc6/Tq/WUPcdzA1uSHe/dX47ZRUZqIG14tVGCBq6a8v0ejnHmx/9JVwhq4C1yAm1vgSaP
	+yxUdA/ptT9eOfhRHmXGSbiKtzpCYTOpAUcpmUGP448rAhwHk6YemKY0YVlCrHQKzPR0v2
	AX6THgoR/XNa+FfS48IR+0Khlku3ITyvUfDmcxE2Ku1tka46STCzrDUYZ4A03l4gW4TNz2
	18fIj7LN9sTs3jOiFAzmfxjiu+wucsjEIlhn7MGdIiQqGo0CwGSsK9zA3vJdyA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0w6POJnf8R7Zgtgh9PhWcC/yPDBfUy3zJLnOFZjL6cY=; b=MjI5V4g+OpuZBNrdMaJoMevgRo
	s7dRmjRGYDAPrUGXNj/TUOTTydLZJBAQVJmhheorxAZTbNiW/DxTSdNu29njpuHZifvDWMsi7uByM
	8nQUiPCMO/veeAvWqby1R2+iblqx2Wy6s7sGL0jBeBbA1p4IzEJIN1XnWB5S371WxJ8JdPaeif4nj
	UyRIpWtRF6xZCUctspp+wW1lE4KyoUKa3kQ688xfGZ2F07wjTjm1q336EaZBbTtuOhJnodtcXJMkJ
	a79rqFJFXNYc8NECovX0YXpc0X9K8KGqMOLmsKFTnqPUV7gHfZBreYmvRjbMyaIik7694XVWEkqSr
	weFa24gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMAe-00000000KuU-1oZi;
	Thu, 15 Oct 2026 14:11:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMAc-00000000Ktr-00xE
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:10:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D9FCA2027CF;
	Thu, 15 Oct 2026 16:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0w6POJnf8R7Zgtgh9PhWcC/yPDBfUy3zJLnOFZjL6cY=;
	b=NoVr8vb6yRfTDtAq6Hvhu8IHuZM37vr0zD+ZFnhlACoucMS+KgciXUhqgeCmj+X1DZsdFU
	BWmPeuSZJU17FAvBRg6E8cb0C/fqQX+Uv7yN14NiZbupD6yvFCkMcj9WZr+2WRO2OTKF3z
	D0cKe+PsBdS4O0ov5N75IXv9n6hNECv++hzJrtCqqDXWCjxlT2g+C76pXYPz2m84aWu/VX
	ke49nfy+dcz6BrnZffoksYSCqjxe0tatN9w9/iM2pjthUI94iKebhjpD9IuKGiIzPm/WsY
	SUNgxnWJ4gLeGnollCASxSVwlgtY94meYHarGg0NRNMAq6V91UNM3yfJ/0bYyA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073451; a=rsa-sha256;
	cv=none;
	b=ABlqvym1YUFokZdzFk/wYVpOKt8GIMB5GGyjzoxqA11T4GkvL3vkFgO8Z9M3PAm6MJFGy1
	2K11zOgodv54lTJKbTDpGT/PfHRaJ/h04iXJ+5p0RO35efTwWXiWxyiT9zODe/DtJj39oL
	wAl1h4jj3vVqKizRhOSKX4ExTBxAjF452XCtAA9a0Z/VJ1PYeXl4zBXIfrqEg0w+j2Tk8s
	EWhit9zMBBz5eN/W89BCwOxN0/KZC0g1oL3JUjABUsz+B8TmlMXe2hTBTtSwx8mgz/CUxC
	eDccLv/4CxL93M1WGg7JGDdpGalMchOeq0eXHRFZeLE4xaXNPuyPY1VaCf1xzQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0w6POJnf8R7Zgtgh9PhWcC/yPDBfUy3zJLnOFZjL6cY=;
	b=V8DToXuyJE8XOlFvDBALCgtL7fP7Id6isFBRadFtOOHGqUf4Vo0sZk7+qCKN/OCb67sF1R
	v44Xd/ROZ80B8I0PV8yIS2Y1OIgPgx/fANjqZEg3mY7/e6xonl0/ynNvxOgTbOK5zRbJPZ
	SUpeA9NLY/XTjkG33CxlEcYxaDoBRmDRBKxy0aV0J6lFUO4sPqbB03icWBLAfxD+hw9H20
	Xuq1KlSG5BB1oXBmTc1GJvdGjt6YJ/UoA5Q069xoE6Zd8HPHRlWiFX/hfY9NhKlwyAzPv0
	S59h/ror/8n93JBLsOdFl0rCrtLSgB9SvbVRZImvHrk6foDB61Mf5ylXa2th/g==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C17BD7402EA;
	Thu, 15 Oct 2026 16:10:51 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] ubootvar: reject copies too small for their header
Date: Thu, 15 Oct 2026 16:10:49 +0200
Message-ID: <20261015141050.1329095-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_071058_274929_275B5253 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Probe subtracts
   the size of the CRC and flag header from the size of each copy unchecked.
   For a partition smaller than that, the size wraps around and the CRC is computed
    over most of the address spac [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 1DE41202601
X-Stat-Signature: oroyqec3bsrwobrcc1zi8uhqjenzpjh1

From: Ahmad Fatoum <a.fatoum@barebox.org>

Probe subtracts the size of the CRC and flag header from the size of
each copy unchecked. For a partition smaller than that, the size wraps
around and the CRC is computed over most of the address space.

Let's fail probe with -EINVAL for such a copy instead.

Fixes: 9fdbd39f320a ("misc: Add a driver to expose U-Boot environment variable data")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/misc/ubootvar.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 8c387843bab1..9e2600b5c527 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -232,6 +232,13 @@ static int ubootenv_probe(struct device *dev)
 			goto out;
 		}
 
+		if (size[i] < sizeof(uint32_t) + (count > 1)) {
+			dev_err(dev, "U-Boot environment %s is too small\n",
+				ubdata->path[i]);
+			ret = -EINVAL;
+			goto out;
+		}
+
 		crc[i] = *(uint32_t *)data[i];
 
 		size[i] -= sizeof(uint32_t);
-- 
2.47.3




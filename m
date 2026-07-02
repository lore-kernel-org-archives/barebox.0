Delivery-date: Thu, 02 Jul 2026 10:39:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfCxa-00CCPe-12
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 10:39:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 251FA20066B
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 10:39:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A+lPkDIa;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRC3NOc53k/LRaY4Nj0dTNREW8ZW7Ieb5lApeFkwwuU=; b=A+lPkDIaOA5v/Hc7A6z6Zm7ARI
	eNNBCX7nTBdOCix5Ym5Y3HZKsz4IlmQE5aE1LtJE9VIKid3DvkQohnD20Oil/fjnoBdHVKNSrbRFz
	ssNR6sfDHdMHiOMclD726g+C/MZNi7X+V8+Aa5FWuUr6Ds0WsWyk7Iwh8Knr0ZidD4XYsH7hMhIC5
	fPqpCXKRaoWvXC+1vXZj+PghiZ/+SzpZA9eVMsIOVXf/RQCwY2emrzjxpGM2dpMnp0xGzVcbZ9x7N
	uFkkqQzinWLbihbLtw190nhey95GqtdkKq0mjsI0oEI6OaT1Cc72Jees3Lag8G/HbQvSmiPmSMGns
	T7o8KvHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCwY-00000003tls-27hf;
	Thu, 02 Jul 2026 08:38:46 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCwV-00000003tkx-1JhM
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 08:38:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C277B20066B;
	Thu, 02 Jul 2026 10:38:40 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfCwS-005iWK-2C;
	Thu, 02 Jul 2026 10:38:40 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfCwS-00000008fuQ-2b41;
	Thu, 02 Jul 2026 10:38:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: =?utf-8?q?S=C3=B8ren_Andersen?= <san@skov.dk>
In-Reply-To: <20260630124732.709291-1-u.oelmann@pengutronix.de>
References: <20260630124732.709291-1-u.oelmann@pengutronix.de>
Subject: Re: [PATCH] ARM: boards: skov-imx6: fix device tree path of state
 node
Message-Id: <178298152061.2067699.220941267709466117.b4-ty@pengutronix.de>
Date: Thu, 02 Jul 2026 10:38:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_013843_500941_1E207E78 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 30 Jun 2026 14:47:32 +0200, Ulrich Ölmann wrote:
    > The reference broke in commit [1] and led to the following error message
    during > boot while fixing up the kernel devicetree: > > Loading A [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 251FA20066B
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ethzc8n9h4e33a4ieom6mmt8yiw3pgfp
X-Rspamd-Server: mx1


On Tue, 30 Jun 2026 14:47:32 +0200, Ulrich Ölmann wrote:
> The reference broke in commit [1] and led to the following error message during
> boot while fixing up the kernel devicetree:
> 
>   Loading ARM Linux zImage '/mnt/nand0.firmware.ubi.system0//boot/zImage'
>   Loading devicetree from '/mnt/nand0.firmware.ubi.system0//boot/imx6dl-skov-revc-lt2.dtb'
>   ERROR: skov-imx6 machine: Node /state/ethaddr/eth2 defining the state variable not found.
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: skov-imx6: fix device tree path of state node
      https://git.pengutronix.de/cgit/barebox/commit/?id=ed4d06aaf6d0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




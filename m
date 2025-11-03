Delivery-date: Mon, 03 Nov 2025 09:53:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqJB-00EnW0-1z
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:53:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqJB-0001s3-3T
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:53:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0cY/kPwRlu3WiOekdZn18coHmUtgYevD8kcg8C2ri80=; b=w/vm4vwBSRz1XQDQ/c75eJtvOm
	OZS3vV+0SCfO6+9PoCpJo2Yp3R6ph1SIrl5w9MwPQz3fuixlC+e0D1AX21YUsaxMTD/pW9FhaVguw
	fRRI1t4HFDku7/VF4qMjDcLjkcHqahFQfvqrE3ee0zv1/cKwUpz1w581iA1z4l8b6iQCj48GQUKmQ
	Td/yvQ40yZXiWPBcxR2+cHH7pgMEiQSbHtpAzZG1NyC2LZAGikHsB4QYT8KDqLs37DhuUlBO+xj5o
	CYNSgvk05HIeBVRgXaRv4nppVOW5kzIX7qXyC7SAEGu+jSyja2yLMSe5WrF8TVH1h1UcQSaEtvD5Z
	7dF0K2ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqIi-00000009TAf-32lC;
	Mon, 03 Nov 2025 08:52:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqIf-00000009TAA-3bjF
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:52:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqIe-0001mm-ET; Mon, 03 Nov 2025 09:52:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqIe-006pUj-0q;
	Mon, 03 Nov 2025 09:52:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqIe-0000000HMaO-2jBp;
	Mon, 03 Nov 2025 09:52:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251029083627.3464965-1-f.pflug@pengutronix.de>
References: <20251029083627.3464965-1-f.pflug@pengutronix.de>
Message-Id: <176215994820.4138329.5025618439231798294.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:52:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_005229_902700_CF86E5EE 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] console_common: get_first_active: respect security
 policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Oct 2025 09:35:23 +0100, Fabian Pflug wrote:
> If the console input is deactivated through a security policy, then
> there is no need to iterate over the current consoles, as none should
> have a STDIN.
> 
> Since this stretches the definition of active, the function is renamed
> to console_get_first_interactive to make it clearer, what it does.
> 
> [...]

Applied, thanks!

[1/1] console_common: get_first_active: respect security policy
      https://git.pengutronix.de/cgit/barebox/commit/?id=74e378e377ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




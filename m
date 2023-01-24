Delivery-date: Tue, 24 Jan 2023 23:02:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKRN5-000sYJ-GR
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 23:02:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKRN2-0004u1-U3
	for lore@pengutronix.de; Tue, 24 Jan 2023 23:02:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=r1lHK6e8/X88iFQD9olLscc9pp5M9mjekrTs/RLKgSI=; b=uaoOZvtjiYTewn
	hrnokq+nx1QttiM633K1rfiXn8OOQ9HrQGlvEUBku3XRuvoqu39nPmO2FCfW3SNZj/u0DfPNtfu7K
	9f28C4lGqhTUdqMnIBYdk7UR6550A9BWAjN7i6oLr4MqrMOg5NrMwTObOTcxjDE5C2dFNskLO/07i
	VmW1wOO7wSIo5XR7KfBtSmip3FrfT51xn3bWess17fAe/Gb5PGkTpNsKHV7KIuyHWWvVUIJBheWE4
	QC1ZTAH3e/VQ+ucFN9hzIAdSaSkqmH4amMUwW6ebSqcVdyml83ev/qNBqXdQ3enAOZetZyuxifkOY
	a2PV6ejCe4v8MA++lFLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKRLN-005TFo-0t; Tue, 24 Jan 2023 22:00:41 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKRLH-005TFC-LF
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 22:00:37 +0000
Date: Wed, 25 Jan 2023 08:59:49 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674597630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=r1lHK6e8/X88iFQD9olLscc9pp5M9mjekrTs/RLKgSI=;
	b=YpU89KQDziOXaOOpFUp4ig5NScxW94UTKzG2lpKRClbS6JGy+S3DXxgtogUipsEZ3Zfq8O
	ScqH6GaLmKnDkC8UqYP3FLJOET6Fn++S0whIQ7YBzw9megrjk/PuR9Mw288OcBQOxDhw0z
	2chHzmgDjx71JS6HZekaj9XB8l2on2EvVDm28x5W4Cw+xa5UUrcuMfMOhM8anTpKsICxoJ
	jCwzd5ebct0nazxSrKtCy6pyOLcBprX9gP4cwBhlTUmAGtzRARJJPHYMcY5w5EqJyIgcXd
	TCr8zgL7q7pcG4EGaLzlAuggrKQty3UbGgmb6bfEY7RqwYQv1EMpzSrfQQ/5HQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Message-ID: <Y9BU1Z0CJH6Vk01d@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124182224.GB5952@tellis.lin.mbt.kalray.eu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_140036_449341_3E8E2DEA 
X-CRM114-Status: UNSURE (   8.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Question about RATP protocol limitation during handshake in
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I had a read of the RATP spec at https://www.rfc-editor.org/rfc/rfc916

The goal is to detect one end trying to start a fresh connection while another
is established but manages to be a bit too broad by specifying that any SYN
is an error rather than a SYN without an ACK.

There seems to be two solutions here:

- Don't re-send SYN packets
- Break the spec and check if ACK is set before terminating the connection

John.



Delivery-date: Thu, 05 Jun 2025 14:02:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9IO-0040CS-12
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:02:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9IN-0001Xf-Ma
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:02:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8N/kgyo3wJ5c6Tuk96Ajtu1hlvwwHiLKY9oXoJIHUWc=; b=y7sP6tp9aoO27yJJHcqyyWtUnM
	+cbRXe1AeFLAOKkKbFJKGzxCqoRbw/n8C4YoxaUNG64CZhiBCEmBQCJBUkURRmjdYU1+PPfIy/IsD
	+7S+j7uspJsAOVnVK9SnfwJi2hD9vAIzTCV3Tw+UuY3KZERShqMj43et9VwrzcfjT3aO3uUnTQhg5
	d3kaYxnlCKBME624CathdZCVXOVW0SIywqnl0v75G3nnFhDxdssx3wti0paRNPmhR3RvBLgbohDLp
	djQNZmTcmcy1NyUmxtxzS5/VeK1gpkCMMiw6k9kMvgYPsdGwOlmGm8WJwVsx6miOZRnAm0BBD7O28
	B2QhNLeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Ht-0000000FRDx-1Sk4;
	Thu, 05 Jun 2025 12:01:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Hr-0000000FRDT-1ybi
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:01:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Hq-000119-3Z; Thu, 05 Jun 2025 14:01:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Hp-001x4e-2z;
	Thu, 05 Jun 2025 14:01:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Hp-0022zb-2n;
	Thu, 05 Jun 2025 14:01:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528150322.611761-1-a.fatoum@pengutronix.de>
References: <20250528150322.611761-1-a.fatoum@pengutronix.de>
Message-Id: <174912489386.488070.15722776234674031503.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 14:01:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_050135_516290_44EE03DA 
X-CRM114-Status: UNSURE (   5.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: partition: do not try to translate offset as OF
 address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 17:03:22 +0200, Ahmad Fatoum wrote:
> of_platform_populate will eventually call of_platform_device_create,
> which will print out errors for partitions with a compatible, because
> of_translate_address chokes on the partitions container node as it's
> not a valid platform (child) device:
> 
>   ERROR: prom_parse: Bad cell count for /soc/bus@5c007000/i2c@5c002000/eeprom@50/partitions
> 
> [...]

Applied, thanks!

[1/1] of: partition: do not try to translate offset as OF address
      https://git.pengutronix.de/cgit/barebox/commit/?id=60a0b71e8ded (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




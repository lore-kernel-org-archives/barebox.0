Delivery-date: Fri, 01 Mar 2024 10:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz6M-001QeM-2G
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz6M-00081h-3P
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:22:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W5kAdB3dkYF0RGOzYvRv0YrbJZhYD3lmLWZOWbwbcPA=; b=rPzXDUYVRwH80FWuTKzXqSUIuD
	dnbC1pjjuIjYBmsjyHSBWXYDTGEPU+nc+Pn6hKxB7n9MGf0KmemQ+sRIScc92QQH777SBEkQ936WQ
	Tomq5fqbKHfTSZSCPAfGtl3roooubvCLJym/SdBtoE4BXe5CN1gTgMUIusBNbniba0YnoYCNm49QJ
	aHnAwtmKiO/oMIexoUl8hET7a5HzzlYn3yAjOB9KLHHlMkXJUgoQBkwtTSYXizrXFSjKOhmYOOlB7
	FivO2Cs+48d0nUTLW7FHp9mOasrTRyK1STui2P0xgBciH+iJyZVFDOq3/TEdLtLIpj9IzoYJ3DpiY
	NoqwLFeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz5R-0000000H7k1-15Q6;
	Fri, 01 Mar 2024 09:21:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz5L-0000000H7h6-3dyF
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:21:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz5K-0007nT-DP; Fri, 01 Mar 2024 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz5K-003kiy-0z; Fri, 01 Mar 2024 10:21:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz5J-00A6VH-37;
	Fri, 01 Mar 2024 10:21:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240229071825.1624411-1-s.hauer@pengutronix.de>
References: <20240229071825.1624411-1-s.hauer@pengutronix.de>
Message-Id: <170928490196.2408252.15419002968176993952.b4-ty@pengutronix.de>
Date: Fri, 01 Mar 2024 10:21:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_012144_313664_5731192F 
X-CRM114-Status: UNSURE (   8.12  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] partitions: efi: change first partition number
 from 1 to 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 29 Feb 2024 08:18:24 +0100, Sascha Hauer wrote:
> Traditionally barebox starts partition numbers at 0. This was changed
> in bdc3cb54dc to start at 1. This was done to make the parted numbering
> consistent to the Linux tool. This breaks boot scripts though which
> assume 0 to be the first partition, so change it back.
> 
> 

Applied, thanks!

[1/2] partitions: efi: change first partition number from 1 to 0
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ea3221bfb55 (link may not be stable)
[2/2] partitions: dos: change first partition number from 1 to 0
      https://git.pengutronix.de/cgit/barebox/commit/?id=c695f0184352 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




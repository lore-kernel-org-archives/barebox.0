Delivery-date: Thu, 21 May 2026 10:41:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyyW-002AnF-0S
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:41:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyyV-0004Ld-Jb
	for lore@pengutronix.de; Thu, 21 May 2026 10:41:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wUK2lZD4c7Bsl67Ar1RiTuSVS9Bbob3WMG4En26cod4=; b=X8O5axihKvOjMaIMYYJtuUAw5D
	07TdaYsZLpNCF737pwJ3i2Nqin7BuEzU+TBuhUTeDF0gEbQC3xYaP/azmGUmLnoV5CP96sVq+05B+
	8R/abs6YNyAb4KUi7/ihIRtiv2LXh98XB10HyL7fZ2KbS4ShQ1sZKXpL1mJkVH5OJ7K8YvmOAlIa/
	0tNU7yUCa5nhIj5Cn/u8aztFPcRgFZRHivRc5fZI5+oNap56W6mA6uUEMKPWnuB7JB4V8uHhe6MPV
	MNuGcsm9TSXMBH2LTbA+kADgkAVb3DiDnZl+VYlKwmpI25E72+8CmEVb++iV38fLKkJlRid+sqgTS
	jaR5G/Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPywU-00000007BiN-29nm;
	Thu, 21 May 2026 08:39:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPywS-00000007BhW-1Osd
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:39:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPywQ-00042W-Gm; Thu, 21 May 2026 10:39:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPywP-0014dU-2t;
	Thu, 21 May 2026 10:39:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPywQ-0000000DTWG-1fqz;
	Thu, 21 May 2026 10:39:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260520134923.3233562-1-a.fatoum@pengutronix.de>
References: <20260520134923.3233562-1-a.fatoum@pengutronix.de>
Message-Id: <177935278239.3211609.4206807058302960059.b4-ty@pengutronix.de>
Date: Thu, 21 May 2026 10:39:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013944_377282_9375D470 
X-CRM114-Status: UNSURE (   6.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: base: handle of_set_root_node(NULL)
 correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 May 2026 15:49:06 +0200, Ahmad Fatoum wrote:
> of_set_root_node(NULL) used to be valid and the if clause at the start
> of the function explicitly allowed of it.
> 
> This was broken by the unconditional use of of_property_write_bool, so
> guard that behind the existence of a root node.
> 
> 
> [...]

Applied, thanks!

[1/1] of: base: handle of_set_root_node(NULL) correctly
      https://git.pengutronix.de/cgit/barebox/commit/?id=031e0f514d8d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




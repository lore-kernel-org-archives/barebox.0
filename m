Delivery-date: Fri, 07 Feb 2025 09:13:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJUE-009Yvd-0B
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 09:13:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgJUE-0007l3-7b
	for lore@pengutronix.de; Fri, 07 Feb 2025 09:13:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=83GzBomMYupfqWxjYAYVEtrXP0T4UslkZAk+oejkjqs=; b=m8oYfKBW7oDk7LRNlGPySZyVbJ
	3rU94AzWZKwuvhTdUeS+M4MjDTVv3Wm/Esxy10jYBdgI3RPP7ptX3E+Y5wlhyM6h3y/VFVNZAnU71
	oyNtb+8MlViio+MM6fp3v7f95cU63Tq9jt78FUZULK770xD1grNf1UtfG6HDkitpYMWUZqc1qdYfk
	or8pEwDKkgo79NjLN6L3YzgFX4PU8OAVmhJoTJAeQ0MVqkPJ8WB/Kj2I4bVRkVn6werdu2cNFOB4w
	y8PNspFTp/VUx7x8+urgehvt1TPoQJO+csWqhcozjhK0xHnMlznp8pTKzgM2DnYxmow7VZI6Lxyp8
	IxnAS9nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJTh-00000008luH-44Fd;
	Fri, 07 Feb 2025 08:12:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJSh-00000008lnx-1fCr
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 08:11:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJSg-0007a9-4L; Fri, 07 Feb 2025 09:11:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJSf-003wg6-2Y;
	Fri, 07 Feb 2025 09:11:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgJSf-000yrm-2K;
	Fri, 07 Feb 2025 09:11:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250204073151.16501-1-eagle.alexander923@gmail.com>
References: <20250204073151.16501-1-eagle.alexander923@gmail.com>
Message-Id: <173891590172.233955.5964457075081214823.b4-ty@pengutronix.de>
Date: Fri, 07 Feb 2025 09:11:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_001143_436937_FA7952F7 
X-CRM114-Status: UNSURE (   5.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: Remove dead link to struct i2c_algorithm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Feb 2025 10:31:50 +0300, Alexander Shiyan wrote:
> struct i2c_algorithm is not defined anywhere.
> 
> 

Applied, thanks!

[1/1] i2c: Remove dead link to struct i2c_algorithm
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4cc0225555c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Mon, 20 Oct 2025 14:58:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTR-009tjw-1N
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTJ-0000Wv-DV
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nh7K4Gs45pRFvYrI0hWT1BmqxQrR2PzQFIDx/C/kwyw=; b=dyRRiAmKuSCc8ufzEiT95sIV+Z
	n371/IS4VLGxMlgPzjG3wX9kwOotVccCT3utObdjMSMwzZ6pYCX3eHwqM6mo92C1JgyESy2raURZ2
	S2LJQt7yjKrgbQ+ADU5M50SjriafhPVEqn1FuvepDb/Xe8/aUTys5a2OojqpLRDK//wpp59M1xbMS
	4WHucyZrkgRFVOyDgRJN5GlNTVCsBPp50H5+mMwXDsXti+p4xdF2no45gvclQM5lknm4tq2FsI2fc
	jJ/MIxbQV8fEutCKp3GVFBhQirHcBR8jsrzKD6tzM4nuDvMI9Ou62MMaRV2FffcnrpVvLJzAFnPj9
	hrTGb7nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSh-0000000DfAy-40D8;
	Mon, 20 Oct 2025 12:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df43-0T8o
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008Be-Dp
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo7E-004XUC-1X;
	Mon, 20 Oct 2025 13:31:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo7E-0000000A6CF-1iXx;
	Mon, 20 Oct 2025 13:31:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251013140957.8360-1-a.fatoum@pengutronix.de>
References: <20251013140957.8360-1-a.fatoum@pengutronix.de>
Message-Id: <176095991240.2407090.4222497919993724936.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:31:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_155604_88BD0E08 
X-CRM114-Status: UNSURE (   5.95  )
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
Subject: Re: [PATCH] Documentation: migration-2025.10.0: add guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Oct 2025 16:09:56 +0200, Ahmad Fatoum wrote:
> By looking through the changes sitting in master waiting for the next
> releases, two potential breakages pop up. Mention them in the migration
> guide.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-2025.10.0: add guide
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d6bffb3565c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




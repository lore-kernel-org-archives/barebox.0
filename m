Delivery-date: Mon, 23 Feb 2026 12:33:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUC4-004oc9-0R
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:33:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUC4-00009m-G9
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sCdwlm1YUX+BjrN7j0Wx4RWhPxJTTotwyFeqgqDuLQE=; b=12vovjk88X6GanXz3qUkU5a0W1
	TWWOzGimVxiFESepGApG8368XzINX/pTpKEXlzBYYT3IWXzLRIh1mwcbQL/xEJ3DkYiWGILMR19FW
	y/C5gqXpad2fJh3PBtVf7Z6Ir7sKfO2o91GwQpVj3Mdo+PUQRHhEIPmOxx2KhIuF+fk5ngqtNA+eE
	vKTkRTIKV77t6NyNNn5SF7qyYpdFVgywsL9MLlrQaYZfcoamEDAGq3dsJV7Wu963mutrdQfWcIX+U
	VN+xR49F2V29Nepw+4/hi3ah7u0HM20aDRp/MW/FVS+O9A69dxitUH+FpyqDM6kXz76/nW1Gzy3RC
	OmZBqvfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUBk-00000000Bof-2qBG;
	Mon, 23 Feb 2026 11:33:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUBd-00000000BmF-3H8f
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBc-0008Ug-5d; Mon, 23 Feb 2026 12:33:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBa-002Dlv-1l;
	Mon, 23 Feb 2026 12:33:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUBb-00000000x2Y-3V2U;
	Mon, 23 Feb 2026 12:33:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126105541.1859911-1-a.fatoum@pengutronix.de>
References: <20260126105541.1859911-1-a.fatoum@pengutronix.de>
Message-Id: <177184639183.226900.7204757273551586520.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:33:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033313_838475_9C0FB4E3 
X-CRM114-Status: UNSURE (   7.73  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: bootm: add proper support for boot script
 calling bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:55:41 +0100, Ahmad Fatoum wrote:
> If a boot script calls bootm and it returns whether due to error or dry
> run, bootscript_boot() will just call bootm again leading to confusing
> output.
> 
> Let's detect whether bootm was called and skip calling it again in that
> case. This will allow boot scripts to do cleanup in future.
> 
> [...]

Applied, thanks!

[1/1] commands: bootm: add proper support for boot script calling bootm
      https://git.pengutronix.de/cgit/barebox/commit/?id=60f1b7cbc352 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




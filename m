Delivery-date: Mon, 17 Feb 2025 10:54:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxpw-003Qr3-1c
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 10:54:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxpv-0005eT-CT
	for lore@pengutronix.de; Mon, 17 Feb 2025 10:54:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mUDHR3HV+DmTSC0FElx/o95PDl4BguuB1igJdEE608k=; b=wR0LH45K0cpB6AELg1Ro+mL+ls
	BMmepSUVxyZIBbLx2erxS0BU7eGLQv4htUzl4qOTTS/e3NNRMwZS2UNw9jI4OAg2w2Q7rwN0vdOKI
	RwXlClQS6A6208IqMUmwuJTzvDT8W4G64PQr57KVLoZfiz66Zuqenih4sWQ89Npgj/RjtjiLTlqGv
	7lkEr+Ge62qIRp4Ni1Zx6+DDBOL8xxXJn2X7BoZ23iBbGxhhLExnLCzRLGdFzLEKl4RjZWa1l1Fgo
	JQjLPlxes0r3A2Tp3j1HjqnHp8UkN0za1Z4YY/jN0NByiqQ0mXwr1HQ7gQio2ej8T9IiAiroOhyX2
	0NuguJLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxpS-000000040RP-2tgC;
	Mon, 17 Feb 2025 09:54:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxVG-00000003wW1-1zXL
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 09:33:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxVE-0002W0-TX; Mon, 17 Feb 2025 10:33:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxVE-001NnF-2M;
	Mon, 17 Feb 2025 10:33:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxVE-0016jL-2A;
	Mon, 17 Feb 2025 10:33:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250214103114.2900899-1-a.fatoum@pengutronix.de>
References: <20250214103114.2900899-1-a.fatoum@pengutronix.de>
Message-Id: <173978480466.264173.2782075133124227046.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 10:33:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_013326_514663_060C626F 
X-CRM114-Status: UNSURE (   7.74  )
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
Subject: Re: [PATCH] mount: support specifying mount -o options more than
 once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Feb 2025 11:31:14 +0100, Ahmad Fatoum wrote:
> Specifying -o more than once is useful for scripts: A mount.9P script
> for example can specify some default options and the caller of the
> script can specify an extra -o to add extra options.
> 
> This is supported by normal mount(1), but wasn't so far in the barebox
> variant. Remedy that.
> 
> [...]

Applied, thanks!

[1/1] mount: support specifying mount -o options more than once
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d3f9bf831f1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




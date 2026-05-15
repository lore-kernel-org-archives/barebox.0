Delivery-date: Fri, 15 May 2026 11:29:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNorc-001x76-2Y
	for lore@lore.pengutronix.de;
	Fri, 15 May 2026 11:29:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNorc-0003zk-7j
	for lore@pengutronix.de; Fri, 15 May 2026 11:29:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilTGYTsYUMRcmTzAN4qebZmcrr932FYE9sDLMcpFcl0=; b=WOObJUN1rcfwA7LaM5zlEEj9XF
	lp6XAxs0Uig6we9wQI44Ug0LrpVMxUh14VCfX15seM5b+iu/Pwn7kLMZL5lUJK+zS/ARo82wn7c0N
	qGcMM2uM8YJJb77FaZZyQ87ZBxqcrOgHFeLzZ5K//i83/FhH35nua3wn0d4c78265aLE4WYG+RzS8
	+GKOJq13QZdHIMWgQl9Su9cJfVZFtmbCsbIBshXJizXq1QuFSCPYAlOGDMCd8d9Xg/dNWvqQ+1/86
	9nlLAeloKqKEHfVq9uQ9cWuTr4rrZNkaKfN/7dLYTe/uokltpOVaxEt+52h0TKF1+A+H0ewI+r+ka
	2LuqvgNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqK-00000007tCe-0y06;
	Fri, 15 May 2026 09:28:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoqF-00000007t9p-1oli
	for barebox@lists.infradead.org;
	Fri, 15 May 2026 09:28:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0003Op-6J; Fri, 15 May 2026 11:28:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-000u1u-0S;
	Fri, 15 May 2026 11:28:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNoqD-0000000AVz2-0M6d;
	Fri, 15 May 2026 11:28:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: str@pengutronix.de
In-Reply-To: <20260513091516.3434125-1-a.fatoum@pengutronix.de>
References: <20260513091516.3434125-1-a.fatoum@pengutronix.de>
Message-Id: <177883730108.2505901.11649887183347221253.b4-ty@pengutronix.de>
Date: Fri, 15 May 2026 11:28:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_022823_480370_CEF1000B 
X-CRM114-Status: UNSURE (   6.35  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8: esdctl: fix breakage for multi-SoC
 i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 11:14:52 +0200, Ahmad Fatoum wrote:
> Only the i.MX8MP supports ECC out of the i.MX8M* family, so checking
> DDRC_ECCCFG0 on the other SoCs is incorrect.
> 
> Guard the check behind a cpu_is_mx8mp(), which expands to 0 if
> CONFIG_ARCH_IMX8MP is not defined and to
> imx_cpu_type == IMX_CPU_IMX8MP otherwise.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8: esdctl: fix breakage for multi-SoC i.MX8M
      https://git.pengutronix.de/cgit/barebox/commit/?id=c7bdd78be7cc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




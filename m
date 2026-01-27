Delivery-date: Tue, 27 Jan 2026 08:59:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdyw-005pH7-10
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:59:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdyv-0004gW-C1
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:59:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VrXt6L6gmRrHKYDZH3oHS5bxgH/tKqIiWaNwmlzlyoQ=; b=QNiVSMkyd9Px6D0bhtmYGXzP3T
	KQK7mnQRdLrJ1OF5vK+eOmaoGhY+aWmO3KCMt0HHTt5d1Hhh16a2FetdQ7OXYocjP4QM+pgIEOv7Q
	Yx9kebb/PWx4LA1IWkoy4pe0fxLBjL3T5gLltOeMy8rITNqQ1+6zfFrPXBEweOvZckTUYSP1HK/kk
	B4phqMDSK+FUG8vJ5mGQS4wnpujQz6no5ie8aRkAv6NLs9JyeplHqDQ7nQrlaDQL/LR7kWPoTHrfN
	/m/iJRXdOBsJE1sHRHIUeyvZhB1/K9A8SQTKHcgrJKnBrM85W/XAUGhEUw6pXAKjjFtKULdYJ3dds
	962CIc4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdyZ-0000000DoDl-2iat;
	Tue, 27 Jan 2026 07:59:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdyW-0000000DoDQ-1JDp
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:59:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdyU-0004bV-Iu; Tue, 27 Jan 2026 08:58:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdyV-002iH8-0C;
	Tue, 27 Jan 2026 08:58:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdyU-00000008sWR-3J2u;
	Tue, 27 Jan 2026 08:58:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126104656.832582-1-a.fatoum@pengutronix.de>
References: <20260126104656.832582-1-a.fatoum@pengutronix.de>
Message-Id: <176950073831.2115366.11360524241031886088.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:58:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_235900_376212_12DA2D48 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] bootm: fix bootm override saving/restoring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:46:44 +0100, Ahmad Fatoum wrote:
> As bootm_set_overrides() only sets non-NULL members, it's not suitable
> to restore old settings as once a member is non-NULL, it can't change
> it.
> 
> This may lead to use-after-frees, as the original strings are free'd,
> but the override keeps pointing at it.
> Fix this by merging overrides only before the boot and resetting all
> members after.
> 
> [...]

Applied, thanks!

[1/1] bootm: fix bootm override saving/restoring
      https://git.pengutronix.de/cgit/barebox/commit/?id=e0b19f3ac155 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




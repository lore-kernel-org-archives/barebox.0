Delivery-date: Thu, 10 Apr 2025 08:57:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2lqq-00AjIO-1D
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 08:57:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2lqp-0004Jy-NH
	for lore@pengutronix.de; Thu, 10 Apr 2025 08:57:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZJfaMU+Mjneva+1yZ7fquscoRRZ4rFMo+E3kb4zcSyo=; b=fLgYRTIjbYplOz0OCHgrAzZjee
	ECLY87AnMN5cbUnzvaTez4PrgS4wogsufbprYV5rF/WOXJCIKjc7gh9N5j7XPqMaqaXDii57Pv30c
	9QMNMQfEwoDK/tbnpd+MhQWkotqQrknil3iu2TVe4DCEdeNYsTNL/5yD6HFg/l5VXZrgUnAtP+Sr+
	sA0e05FDNF605Bu5rnn0sgX9LLJ1ss0JkKXV128oBkmWIwXKrPMUujzh5yZLNZCQ9c9emL/f0fOzY
	5SaC9EodjMoXFCXX+ys92x5Ka9I8NXM7+mUNNLs2vgFzeU62rNjbi4iBTy7dXfkT0tKe8FCq8hPVH
	tyCzammw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2lq9-00000009Rcp-3ts0;
	Thu, 10 Apr 2025 06:56:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2lV1-00000009O0H-0T6C
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 06:35:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2lUx-0000SX-GZ; Thu, 10 Apr 2025 08:34:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2lUx-004E4V-12;
	Thu, 10 Apr 2025 08:34:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2lUx-004SwE-0o;
	Thu, 10 Apr 2025 08:34:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250409131926.1949805-1-a.fatoum@pengutronix.de>
References: <20250409131926.1949805-1-a.fatoum@pengutronix.de>
Message-Id: <174426689124.1064510.14423488789556554996.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 08:34:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_233455_151599_AC1A5467 
X-CRM114-Status: UNSURE (   7.18  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] bootsource: retire bootsource_set_alias_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Apr 2025 15:19:25 +0200, Ahmad Fatoum wrote:
> This function was never used in upstream board code since it was
> introduced, so drop it.
> 
> This avoids it interfering with the addition of bootsource_of_node_set
> in the follow-up commit.
> 
> 
> [...]

Applied, thanks!

[1/2] bootsource: retire bootsource_set_alias_name
      https://git.pengutronix.de/cgit/barebox/commit/?id=7e664e579c88 (link may not be stable)
[2/2] bootsource: add optional read of /chosen/bootsource
      https://git.pengutronix.de/cgit/barebox/commit/?id=a3278b10dffb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




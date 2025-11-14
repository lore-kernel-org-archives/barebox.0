Delivery-date: Fri, 14 Nov 2025 14:04:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtTm-000ucP-0a
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:04:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtTk-0000it-FC
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:04:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3hhwtUwXo5k1fzkE3erW5MJJU9wk0hZv+ISCo84v9Xk=; b=CM9cmVUtU59PcXUUl6vBC/V1qZ
	13jVM4ZTNxls3IqVID9f4TCv9WRvLfs05VUwg/QJeMZP7Ts53B+kWKyJPm1BcNn52HHPYNyRv7LxY
	kFUe4/J2jBbW6TvikMQjPHfdt1xnZwPc6UTN8C9XajTVhQx3i+NWcVghd5QtmABmH27PfEjoBbqec
	ndDflRrTQQ+BUAqCKIbtFwoMoEojL18aN3FE4sKmM2k1oDWjVpUYcOA4lNbniutzx1MnoCGlr+HVI
	LxgJLLTRxCCCIsy9BQR9wgC0K8Cjet3+oBIAC/I1v4QFVXSBPKM9NrzKx+j+2KMb54DrqoqgSwp0N
	dUTO8O7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtT2-0000000CE1b-40LF;
	Fri, 14 Nov 2025 13:03:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtT0-0000000CE1G-0QHX
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtSy-0000ar-6j; Fri, 14 Nov 2025 14:03:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtSy-000QQq-04;
	Fri, 14 Nov 2025 14:03:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtSy-0000000HSip-1g2B;
	Fri, 14 Nov 2025 14:03:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251113075904.990058-1-a.fatoum@pengutronix.de>
References: <20251113075904.990058-1-a.fatoum@pengutronix.de>
Message-Id: <176312543195.4161414.16637272590914533750.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 14:03:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_050354_145555_5021640C 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: don't propagate of_alias_get_id's -ENODEV out
 of probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Nov 2025 08:59:03 +0100, Ahmad Fatoum wrote:
> of_alias_get_id() returns -ENODEV on failure and propagating it gives
> the user nothing to hint at there being a problem, so let's improve upon
> that by either falling back to dynamic ID selections if possible or
> returning a more fitting error code instead.
> 
> 

Applied, thanks!

[1/1] drivers: don't propagate of_alias_get_id's -ENODEV out of probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=e688d63a116a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




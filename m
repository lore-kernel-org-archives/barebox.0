Delivery-date: Tue, 22 Apr 2025 14:43:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7CyK-0043TX-1t
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 14:43:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7CyK-00032L-0g
	for lore@pengutronix.de; Tue, 22 Apr 2025 14:43:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0v3vHm6umFjfXIvDefn5EQHbu4Y3I0InaHRjPHpfdF8=; b=oUzUomgjWaq8narns4cJLRyPe1
	cibbGW50YK6VUTTIMeNmKy95YKkwecvgg0Fv2W1rcFu+H8561kBTxywW1AiJpgk2mQikPbKRDaufQ
	DpBGYgFGcjYH+WzxyoGIV/xOfL4GlO13bN2q+K7JihgprVaT/BhGLW3Zg5amTeLRwfDJqbpv9zyMP
	EryIuvJ4XvBnangwf5BcQXtbXohxQUg8U0B8j888tA+JAstghitflAEgVPzRUphACwwMZQKxDHGC+
	EmwlbbQbdkk0y1e4GXjkE6AhbYVr4WjcEb7bHzBvpukGZ7uqqbOAcjScB2hOAsi9HHaSx9+SMt0Dy
	n7pogS9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Cxj-00000007AEj-1j0g;
	Tue, 22 Apr 2025 12:42:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Bv4-00000006y4s-0Pv0
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 11:36:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bv2-0006KN-0L; Tue, 22 Apr 2025 13:36:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bv1-001Xq9-2c;
	Tue, 22 Apr 2025 13:36:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bv1-00F04s-2M;
	Tue, 22 Apr 2025 13:36:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075615.220139-1-a.fatoum@pengutronix.de>
References: <20250422075615.220139-1-a.fatoum@pengutronix.de>
Message-Id: <174532176372.3575143.11614215243352392946.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 13:36:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_043606_145556_8223D6F1 
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] restart: give poweroff_machine and restart_machine
 a flag parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:56:12 +0200, Ahmad Fatoum wrote:
> We currently do differentiate between warm and cold reset, but
> restart_machine has no flag to choose between them and instead users
> need to iterate over all registered handlers and choose a suitable one
> and then call hat handler's action.
> 
> In preparation for making warm/cold reset and any other flags we may
> require a feature an argument to the driver action, change all
> poweroff_machine and restart_machine calls to take a flags parameter.
> 
> [...]

Applied, thanks!

[1/4] restart: give poweroff_machine and restart_machine a flag parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=14e928800a18 (link may not be stable)
[2/4] restart: give all restart_handler::restart callbacks a flags parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=a375e0c5e4e7 (link may not be stable)
[3/4] poweroff: give all poweroff_handler::poweroff callbacks a flags parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=3fd1ec8bbefd (link may not be stable)
[4/4] restart: make warm reboot a callback argument
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa8e10d7617b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




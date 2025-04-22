Delivery-date: Tue, 22 Apr 2025 12:09:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AYy-0040O7-28
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AYx-0006K1-U5
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:09:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vIGY6gG5oVe8/LhSRb/i+5pIPb6wrfMsj5Gqu5yMrVE=; b=4iOO9KcmlAg9tdAg3LNy2q37Qp
	i/HnNT7gxUadCyzf9MOrQmWyrmf8CasNpjxpbaoCWBDkirsYarE5s1RW99kkCs7cbfkjTRsMFem3S
	H7LhrhRV8f9KuN2/rqB8t75nXxky0IKAmJ2rvpQROz58+q6jDTJYkEmF+W8+LOxqc3n6RB8cP3pH9
	/+xdWmxuMLl9x3OuXbL/lALdvv1Es+KLtFHt1WaBOyfK8IXbUyThnMQXMcUei11imXJK5IijI5TmH
	AWsn8PwKIrQs8MwUkiezk1bAjmLr4IWcztBufI5cn2dHVwaWYOdAC2aJ95IJkhYMbuSV92aMDQBw3
	MK8EqtzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AYa-00000006glB-3hWM;
	Tue, 22 Apr 2025 10:08:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79Tr-00000006Snl-3J5l
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:59:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79Tq-0008UG-BC; Tue, 22 Apr 2025 10:59:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79Tq-001WSB-0V;
	Tue, 22 Apr 2025 10:59:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79Tq-00Ccfq-0H;
	Tue, 22 Apr 2025 10:59:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075658.221273-1-a.fatoum@pengutronix.de>
References: <20250422075658.221273-1-a.fatoum@pengutronix.de>
Message-Id: <174531239008.3008570.11688336061526384698.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:59:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_015951_831177_03F3DC3C 
X-CRM114-Status: UNSURE (   7.92  )
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
Subject: Re: [PATCH] virtio: make more robust in face of misbehaving
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:56:58 +0200, Ahmad Fatoum wrote:
> The virtio device drivers assume at a number of places that polling
> indefinitely with virtqueue_get_buf will eventually succeed.
> 
> It was observed that sometimes after a warm reboot inside QEMU, barebox
> finds itself inside an infinite poll loop.
> 
> This needs to be further analyzed, of course, but it's already and
> improvement for barebox to recover from such situations by returning an
> error code or at least printing an error message.
> 
> [...]

Applied, thanks!

[1/1] virtio: make more robust in face of misbehaving devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e84d6ffc4af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




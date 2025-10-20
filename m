Delivery-date: Mon, 20 Oct 2025 14:59:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApU3-009tu0-1H
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTt-0001Gg-V4
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=anEmzLmh9JgTlZaS72cXV99Yy0RbDx4K8am6GtTwFlQ=; b=RboIY+hesKMiqR1ulsM1lBcFIc
	TAgNrtQI8feWLubbrI5QseR+vbOupszHXIUjjs8ZGkNfJhxscRzoid9h+Py94Y2VCqUuwm6+P927g
	qgXiT/lFYzaGK0kJArePKX+HZuEUW47Bu2jLV+3UHOnNK5tSePQZSPOzjmViufx770Fgire4jQGs/
	65sQX2dpbyZHO0UX/ygAwees9YfpgK5oRLEoZqw0l1zwAjt5dM1h97x7OwdNfdijCz1DSDdHIUZva
	o80d6VfAPqWMrdfXoibtt4HQhQJEcxL/dsnmF7i52UUUApcvecX/GRUD+pb8eypVdRO/lGSt0B7K3
	+R7a8PJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApT3-0000000DfnM-3BJt;
	Mon, 20 Oct 2025 12:58:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSs-0000000DfU5-0UTR
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=anEmzLmh9JgTlZaS72cXV99Yy0RbDx4K8am6GtTwFlQ=; b=ht35RvWA+c4D62aiqKmVjsnzy2
	YjDUbZEpfyfxX86wcPfURf8Mvw/yc+VKbT7c+FpSuiXbrhd9Tumu1WfyfiCx7Aeya3gcexd1F8Zr6
	1ueH9U7o3ZH0Q4sbxSPT+wsy+ch+oc7/z1l3gMFMLyerJG36aStnMd5MLYBEStt6uuEwlHU/tB4e2
	qSWzv6F8gctzeGqTHEltFC3TkAVknGZ+ZmOg6/BpMXTuriuGYd9aQomhQlZ+R9V/eDCjSHmbGPYlq
	wAEKXlfcTKla91x/pnDCuJC2tHGKyDsZZtET8cz3VfFrkoIbcRJEUboq37Dzy85rGIYy4/wbDknU5
	w62xZ2MQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSn-00000007hmA-3kY6
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSc-0008Ck-HA
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAneT-004X8z-1G;
	Mon, 20 Oct 2025 13:02:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAneT-0000000A4S3-1P4H;
	Mon, 20 Oct 2025 13:02:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251015082724.4094242-1-a.fatoum@barebox.org>
References: <20251015082724.4094242-1-a.fatoum@barebox.org>
Message-Id: <176095812932.2400366.6537733694502402917.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:02:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135815_181431_72CDE47E 
X-CRM114-Status: UNSURE (   4.51  )
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
Subject: Re: [PATCH] tlsf: use compiler's static_assert implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 10:27:24 +0200, Ahmad Fatoum wrote:
> The compiler's statis_assert allows for a much better error message than
> the current error message about negatively sized arrays.
> 
> 

Applied, thanks!

[1/1] tlsf: use compiler's static_assert implementation
      https://git.pengutronix.de/cgit/barebox/commit/?id=0565f4928ba4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




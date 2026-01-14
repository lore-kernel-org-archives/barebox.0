Delivery-date: Wed, 14 Jan 2026 13:21:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzss-001EMz-1v
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:21:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzsr-0003Ln-KK
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:21:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rOesoIoUjDxGL4WepKB4M0Us8fLvUKQK6GOSWrW5GiI=; b=U5Burk+VTyoLCV0fTZ+emWt6AV
	jkL49cJi62Ys3V4nyGQmtmR2bRK/G1mO7+WihHN3fm2E5VCM5vkS9tYjE0u3fpnDbaub2n0YaFMwW
	5M4CL00JXkqKGI34AykoCVhxHuywNG6E58grhdyMaiMxCmEkgqKFlgmkZjPTpn6H/5R/D83UnWT8B
	QOKa5w/XLG3k73zqUAoDrlso49gqqQ/KZE3SwnfBwo7yAnzU2QVJeeVggKo/skC5XHFcC+k/emjMB
	2G7m6rjHI2j8rKxTp3U+MncHXTzCbq+5Lh1F15dJxC0SoDV+snVAe/Q+WawLJOemNr/T5duN+HJaa
	u8WA88WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzsO-000000099m7-3b9J;
	Wed, 14 Jan 2026 12:21:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzsN-000000099lo-1zbD
	for barebox@bombadil.infradead.org;
	Wed, 14 Jan 2026 12:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=rOesoIoUjDxGL4WepKB4M0Us8fLvUKQK6GOSWrW5GiI=; b=HnabkpZuJNcho9VD5GtcLfn3Rg
	nweQvitCtH0zfwWEUYr77BUY+50Zr9SCiuoo6dQ4kYOGZzImuKxO2snCFkJ1ThvE2SAvbgX1lU5HD
	xbc1ZaOVV/50OdqJYxdbecD9/YVojfDuVm75jAgV7gZvomT4GFVU9aWNQckVbKlwoygnABCeV+J6O
	U4iW0nB9dKifLskRi4ZW6vHhFiirB0JNKbf1sIyAMT84HSqgtRWWh3s50BL9M6lMDLLsyA2Ou58Hc
	k1aNpS1fi8216UgQ+UDQXeWVQIaNSP/V0DGYMsYrzNXeLru0vEFF2DAeL6guciBnBS0vwxJGSxptm
	qN5lVgFw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzsK-00000004nrx-2aGQ
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:21:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzsJ-0003H7-VN; Wed, 14 Jan 2026 13:21:24 +0100
Message-ID: <1ad3a7d3-56ff-48d2-8d70-8e7a16d61916@pengutronix.de>
Date: Wed, 14 Jan 2026 13:21:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-6-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-6-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_122124_710657_262889B9 
X-CRM114-Status: GOOD (  13.95  )
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
Subject: Re: [PATCH 06/23] ARM: i.MX8M: move BL32 setup into
 imx8m_tfa_start_bl31()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/10/25 9:34 PM, Marco Felsch wrote:
> Each i.MX8M platform repeated the same pattern for loading the optional
> BL32 image because of the firmware name handling and the BL32 location
> (end of memory).
> 
> The firmware name handling can't be generalized without change the logic
> to function-like macros but the rest can be handled within the common
> imx8m_tfa_start_bl31() function. While on it the commit adds a sanity
> check that the BL32 image size is > 0.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +	if (tee_bin) {
> +		BUG_ON(tee_size <= 0);

Nitpick: tee_size < 0 can't happen for size_t. tee_size == 0 must mean
an empty file was passed. I think it would be better just to do

  if (tee_bin && tee_size).

Cheers,
Ahmad


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




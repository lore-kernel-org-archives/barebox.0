Delivery-date: Mon, 03 Nov 2025 10:05:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqUr-00Enem-0u
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 10:05:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqUq-000494-Ox
	for lore@pengutronix.de; Mon, 03 Nov 2025 10:05:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7R90Bw3TN/+E0WAK2YLI/Dxss3nNPo/w5yjHawAuOIg=; b=Hf7Mh2iYUNGrQhVJVT3hdCcXbq
	+Pmyp/hQ+DG+VNN0EXhtbLj3idhsMyi6aOQS2A6iD+0ylwHoPGVoArEJDKArt1FA4ymRZTkTwQMYn
	wRdcWbUxw12dGnvDgGTI8TizVXbgt8Y14eVJpEYoQRE02T3lHcdhc8OHzA2T7k8nm0ZXgjLeRxYSI
	MBqSpMqwXjFL3rNPIxNNElhakxB5x4pt+CboWMDEdr3MnAIBP7K1yQrJHlLuFsnspY6nZWApnhBKd
	1Cyso3JJeLx/mopWimQ10NWE9AR5loXVKa5ApooUFz41qN3fGh4cash7yAHWzoVVLJurShJhgVsZB
	BV+k7T3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqUN-00000009U8b-2KpP;
	Mon, 03 Nov 2025 09:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqUK-00000009U8E-2zJ7
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 09:04:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqUI-00044J-TS; Mon, 03 Nov 2025 10:04:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqUI-006pam-2L;
	Mon, 03 Nov 2025 10:04:30 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqUI-00GbY3-23;
	Mon, 03 Nov 2025 10:04:30 +0100
Date: Mon, 3 Nov 2025 10:04:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aQhwHq9PRjeJzVJm@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-4-3bafce636ad7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028-tlv-signature-v2-4-3bafce636ad7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_010432_751136_C19ABEC5 
X-CRM114-Status: GOOD (  15.52  )
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
Subject: Re: [PATCH v2 04/17] fit: only accept keys from "fit"-keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 07:03:09PM +0100, Jonas Rebmann wrote:
> diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
> index 2a3fb14392..536f61646c 100644
> --- a/include/tlv/tlv.h
> +++ b/include/tlv/tlv.h
> @@ -42,6 +42,7 @@ extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping
>  
>  struct tlv_decoder {
>  	u32 magic;
> +	const char *signature_keyring;

This is first used in 10/17, should be added there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



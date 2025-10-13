Delivery-date: Mon, 13 Oct 2025 12:36:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FuS-007LCX-1v
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 12:36:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FuS-0004Jq-2v
	for lore@pengutronix.de; Mon, 13 Oct 2025 12:36:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o2HvRUxwQMhf3M54w/mF1Ro+usGcJgpRsoJaRft70gE=; b=AOd1kRC9ccog1RLSLDNeocsG6f
	mmqOP/Vh11yi7/WCGo3h/7KZJOrXBWGj2PA/pO5xSIAxr/ySby1AuUEw5Pn//kwA/1bC0yt+s7o2F
	He93QnKhGeXYYuLU6UnCfGEperKh26mmaDs7jAu5F4KZ9GlWU6XHFFxPGiEF6KdsAcWjVt1PD+KAG
	XCAyTYGej8H4UiiJZESGmqOYqrNyX2tguXfipe/t7vXwSNHV73Ws+ZOcbLo1IEmQ2g92VtJIcJEkU
	JWH3P7GeZVxLRT85Ib/CSxcL7UYODd5O0n9pc/v8dhM/XtCzd4RbPYtZXPRR3MrsOysOVr4M17bD6
	HFirI9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Ftu-0000000Cuq5-1jUb;
	Mon, 13 Oct 2025 10:35:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Fts-0000000Cupm-1Bhk
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 10:35:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8Ftq-0004CU-82; Mon, 13 Oct 2025 12:35:30 +0200
Message-ID: <79020d0a-53ab-48b5-a43a-1e4584700e1e@pengutronix.de>
Date: Mon, 13 Oct 2025 12:35:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-9-55f75da7e670@pengutronix.de>
 <3186d83b-10ef-4ab7-bff8-18a18826c2e0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <3186d83b-10ef-4ab7-bff8-18a18826c2e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_033532_348591_D08D4BA6 
X-CRM114-Status: UNSURE (   8.15  )
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
Subject: Re: [PATCH v2 9/9] test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/7/25 11:12 AM, Ahmad Fatoum wrote:
>> +from crcmod.predefined import mkPredefinedCrcFun
>> +from .helper import skip_disabled
>> +
>> +_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")

This is unused, what's the point?

I will submit a patch for removal.

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




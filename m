Delivery-date: Mon, 13 Oct 2025 12:54:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8GBy-007LSC-0J
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 12:54:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8GBx-0006R0-He
	for lore@pengutronix.de; Mon, 13 Oct 2025 12:54:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+YQT7c58tFjuJF6JTIG70xswt3EggX8iysMsuxmL/E=; b=G3KmX4bC6+awhwH+xqJmSz3Ze9
	0OWgXB75H9lLmhXoLH+ZhxqSKxce+v1i8oTVE4pEC6n3WGB0SVSE15wBmdasAC+MqCKaah4JZm1KY
	vPy0eTQ2H4h48LdnXbp11FQOqtQc4pBtUJMVae6V0VFgUOrXyiqWf1EB9aeAOKwBV34CIG1ykKeRf
	Y4zGQ6+k+fVPgDmVQNeYQFLnsvOO0/4LPiSM+VUOWgqWBm0JsuXST75pOvaB6TWEAQGBnW0WHI0wS
	KKIcOtX0iayZ7YFt+udUYzV6J9wqiPclqxO4KRUxFQsn0KBFR+EYbzQ6fCAc6lYNqE5EiZyUfaUZf
	PqtFBrzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8GBO-0000000CwW0-0v82;
	Mon, 13 Oct 2025 10:53:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8GBL-0000000CwV6-0wFR
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 10:53:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8GBJ-0006JN-Ct; Mon, 13 Oct 2025 12:53:33 +0200
Message-ID: <9b501658-ec62-4bf8-9581-eedb8fcd180f@pengutronix.de>
Date: Mon, 13 Oct 2025 12:53:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-9-55f75da7e670@pengutronix.de>
 <3186d83b-10ef-4ab7-bff8-18a18826c2e0@pengutronix.de>
 <79020d0a-53ab-48b5-a43a-1e4584700e1e@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <79020d0a-53ab-48b5-a43a-1e4584700e1e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_035335_263770_F999C0D3 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 9/9] test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 2025-10-13 12:35, Ahmad Fatoum wrote:
> On 10/7/25 11:12 AM, Ahmad Fatoum wrote:
>>> +from crcmod.predefined import mkPredefinedCrcFun
>>> +from .helper import skip_disabled
>>> +
>>> +_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
> 
> This is unused, what's the point?
> 
> I will submit a patch for removal.

This indeed made it into my patch by mistake. It was supposed to be part
of the upcoming TLV signature integration tests in test/py/tset_tlv.py,
which I'll send this week.

There, I have tests with invalid signatures and valid CRCs for which I
need to fix CRCs after modifying the TLVs; hence the need for
_crc32_mpeg (which we also use in bareboxtlv-generator.py).

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



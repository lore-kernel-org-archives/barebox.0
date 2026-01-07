Delivery-date: Wed, 07 Jan 2026 09:10:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOcr-002BUj-2p
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 09:10:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdOcr-0006Bw-B0
	for lore@pengutronix.de; Wed, 07 Jan 2026 09:10:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dFCfrWiTfsuKP3W31DwFhKQearVdKiB/547ZCdcUrBY=; b=sheGvXHR98LsiObqU9vT1F0WIC
	04BaCfUrQQ6u+4u+xZacF+lO4Uty5QO65qHQVk+zjXQQhfa9gJSsJnxWwZhGs/2F347c+KxsilyBt
	nk9CWjbQeq6IFSxq86Pa1udRfNYYoAhHi9eGKmfKqMPobnSOUeO4WAc67GLVFgg42OHTDgEkDUo6I
	/eYg5rBhRIV2K5e3G+pRk3iiDx7RhO0sN9QkRrRK/piYdbHMY+pD5/zrEF/xOUEgdg4jeuu36kVWo
	gToCu5pu1OGFLEshP8QAo5GBdk3rR351FT/VFkwxKPnHhX/c7ulNjyyvBOLJB5vh354NKogRRTHg4
	tsSaXEcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOcE-0000000EMc4-00PZ;
	Wed, 07 Jan 2026 08:10:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOcB-0000000EMau-0d5t
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 08:10:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdOc8-00060t-Vq; Wed, 07 Jan 2026 09:09:57 +0100
Message-ID: <010cb0fc-da0c-4537-8f81-c75fc9ffdd84@pengutronix.de>
Date: Wed, 7 Jan 2026 09:09:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: mfe@pengutronix.de
References: <20251218094645.49668-1-a.fatoum@pengutronix.de>
 <176605178500.3950089.802776548022539556.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <176605178500.3950089.802776548022539556.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000959_196837_FA0ED890 
X-CRM114-Status: GOOD (  13.87  )
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
Subject: Re: [PATCH] mci: use partition table index for Linux mmcblkdev fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12/18/25 10:56, Sascha Hauer wrote:
> 
> On Thu, 18 Dec 2025 10:46:35 +0100, Ahmad Fatoum wrote:
>> If we have invalid PTEs, there will be gaps in the partition numbering
>> both in barebox and in Linux, but if we only iterate through the
>> partition list, we will not account for this.
>>
>> Use the new cdev::partition_table_index to fix this.
>>
>>
>> [...]
> 
> Applied, thanks!

This patch seems missing on both master and next.

Cheers,
Ahmad

> 
> [1/1] mci: use partition table index for Linux mmcblkdev fixup
>       https://git.pengutronix.de/cgit/barebox/commit/?id=928a71e0d678 (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



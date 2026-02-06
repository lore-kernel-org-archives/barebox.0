Delivery-date: Fri, 06 Feb 2026 12:56:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKRy-009TIJ-1D
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 12:56:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKRx-000251-Cd
	for lore@pengutronix.de; Fri, 06 Feb 2026 12:56:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OaXEBGDQFuKtR/jczhBaXFZFiZe+v+42wOJ6munu0jA=; b=BbBqzgkgZLuREjDBQ+bAn1upnk
	LrmCSHxftSTEtf7mywQEjKj/Dw5FJNFSrg7Ay6qJ8UuGQQIIJV8C2OtnoCyaDEecTccFZd15E2hma
	ZfUsgn0YZjR5FKkXVFECdHTaXvKKonfkw4UkY+75q2dlptitDJO+b58EpBSf75HyPaEUy6zZLH4YT
	5dc8Y/3jESHIXbBqtsSYrKfpTZk3fmz0WV6pbtY0Qufw6kZ6nyYFN+wH+8R/yCqrCNZQNtnLfCmIM
	GNFSOc++dmc8rzeT7YlM0wUhChwHHQGgrcY7I28Crt61OhR6kLCnvDhak6i450/i/Z4QjekFT5iNx
	PKsiICAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKRY-0000000BGWB-14Og;
	Fri, 06 Feb 2026 11:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKRV-0000000BGVi-20Zm
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 11:56:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voKRT-00020V-UP; Fri, 06 Feb 2026 12:56:07 +0100
Message-ID: <4724dbe8-f004-4073-bb72-df9ed88fc0b4@pengutronix.de>
Date: Fri, 6 Feb 2026 12:56:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-10-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-10-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_035609_519847_57566E4E 
X-CRM114-Status: GOOD (  16.30  )
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
Subject: Re: [PATCH v2 10/15] handoff-data: Add TEE_DT_OVL entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/4/26 9:01 PM, Marco Felsch wrote:
> Add support to pass a TEE provided FDT overlay from pbl to barebox.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Given that we only support a single handoff entry per cookie, this is
the best we can currently do:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  include/pbl/handoff-data.h | 1 +
>  pbl/handoff-data.c         | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
> index 7552ed5fc35f351f71822d309095980eaa764f63..399d769f386f30d0fb18a525ccc09cf3f3e8d402 100644
> --- a/include/pbl/handoff-data.h
> +++ b/include/pbl/handoff-data.h
> @@ -13,6 +13,7 @@ struct handoff_data {
>  #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
>  #define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
>  #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
> +#define HANDOFF_DATA_TEE_DT_OVL		HANDOFF_DATA_BAREBOX(5)
>  
>  #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
>  
> diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
> index 42e53f986bf14408f25cdf4434a5c284f8361401..9a24b82ef64a355b38bf436c03bece05cb1b77c5 100644
> --- a/pbl/handoff-data.c
> +++ b/pbl/handoff-data.c
> @@ -189,6 +189,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
>  		return "handoff FDT (external)";
>  	case HANDOFF_DATA_ARM_MACHINE:
>  		return "ARM machine number";
> +	case HANDOFF_DATA_TEE_DT_OVL:
> +		return "handoff TEE FDTO";
>  	default:
>  		sprintf(name, "handoff %08x", hde->cookie);
>  		return name;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




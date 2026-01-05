Delivery-date: Mon, 05 Jan 2026 12:46:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcj2s-001VYK-2C
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcj2s-0000cn-4y
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fpk2pgm7YoxMYJ3pA9kbQnxcJtj4syP3jjmdOC4EcxQ=; b=wEUKK8ruHlFsPTdY2iyV+DMNtQ
	jjEo1Ke8nRcIEejAZB5ooT4himeqDs/36Hn97ssqFLtceZ6Xerel5ieGlu9tAs80jk0k+ncZUNw81
	uMEuwOZ2UY5guWmylAX4mWV8COiuUgpUyLq5+cyTxQi/BaXzZvG0zj7zAbR0zuCAkjbhiMDxpSwfx
	EV9XAH+0GL6BYxiKUdqzwnYtB2fkGrTeMx3D8bbKDzsfKuj0TRGXteJd/sB5cfP90gr8W+13/MpCB
	tC1U6LFjmiI8yOqN4fU7VZkpHRXphYbEbhveJwpRrdB0FBiUb0nTRqqwM/9Zvt30sZjvy4Q2JfN1Q
	q76qe4lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcj2U-0000000BDUK-391C;
	Mon, 05 Jan 2026 11:46:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcj2S-0000000BDTU-0Rf9
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcj2Q-0000Y7-Kq; Mon, 05 Jan 2026 12:46:18 +0100
Message-ID: <9d576d13-338e-480a-9fed-c8733bb38044@pengutronix.de>
Date: Mon, 5 Jan 2026 12:46:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-1-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-1-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_034620_173878_6971E83E 
X-CRM114-Status: GOOD (  20.34  )
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
Subject: Re: [PATCH 01/19] elf: Use memcmp to make suitable for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> In preparation of adding ELF support to the PBL use memcmp rather than
> strncmp for checking against the ELF magic. The other possibility would
> be to add strncmp to the PBL, but for the sake of binary size use a
> function that is already there.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I am still not sure if we want to reuse the ELF code in PBL instead of
duplicating it, but I will read along.

Cheers,
Ahmad

> ---
>  common/elf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/elf.c b/common/elf.c
> index c68ea0be3fa668d988b27530644bbb77eb62ff48..692323c6beab2dd8aae9a9e874fb4980152a74e0 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -201,7 +201,7 @@ static int load_elf_image_segments(struct elf_image *elf)
>  
>  static int elf_check_image(struct elf_image *elf, void *buf)
>  {
> -	if (strncmp(buf, ELFMAG, SELFMAG)) {
> +	if (memcmp(buf, ELFMAG, SELFMAG)) {
>  		pr_err("ELF magic not found.\n");
>  		return -EINVAL;
>  	}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




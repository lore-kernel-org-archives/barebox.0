Delivery-date: Tue, 06 Jan 2026 13:59:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6eh-001tZI-1l
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:59:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6eh-0002Hq-11
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:59:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KSngh76Lxew7KD/wey2ZMXvlrDUr6hkzLSmbhj07SaI=; b=TmUy6VWzvW7+yNbbjb1Zy4grDs
	FrUk2KWxEcxXMRJ2sp8TM79M2NCd22XNrNX7fyHETFhrIk2avRuJV+IkwwD7KKK7QlzjMenNpA0FF
	u2ciVrJlJh9mdb+ic+UINV9gJUA3jsL3VnhIspErGTRngjRh+Vqqi34/67Ad0Okdgi/745UqSp3mw
	btvym0eDbcjX4Y94PYYOmM4VCuu5cnGhK0IeMKwN8mfo5AwAmoIacIb6UZNNakgPDymCyhefHKxoz
	vsgQxbuShOt92zSn5K8TIYl8YzQp9EP49avNWdNhPeJGNkTS8Q3TcL9fndD5cx5nyB0d+46UfJRSB
	nJ6xjNfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6eH-0000000D2I6-3QbA;
	Tue, 06 Jan 2026 12:58:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6eF-0000000D2Hi-2PWT
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:58:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6eD-0002DX-TD; Tue, 06 Jan 2026 13:58:54 +0100
Message-ID: <ec778897-a380-45d1-a3bd-9e65a65a2902@pengutronix.de>
Date: Tue, 6 Jan 2026 13:58:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-1-487bc760f045@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-1-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045855_640178_66DCA9D9 
X-CRM114-Status: GOOD (  15.24  )
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
Subject: Re: [PATCH v2 01/21] elf: only accept images matching the native
 ELF_CLASS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/elf.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/elf.c b/common/elf.c
> index 18c541bf827e6077e64c15f62cb4abedc68cf278..a0e67a9353a12779ec841c53db7f6dba47070d8d 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -213,6 +213,9 @@ static int elf_check_image(struct elf_image *elf, void *buf)
>  		return -ENOEXEC;
>  	}
>  
> +	if (elf->class != ELF_CLASS)
> +		return -EINVAL;
> +
>  	if (!elf_hdr_e_phnum(elf, buf)) {
>  		pr_err("No phdr found.\n");
>  		return -ENOEXEC;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




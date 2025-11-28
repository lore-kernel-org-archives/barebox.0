Delivery-date: Fri, 28 Nov 2025 15:57:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzuJ-005ojy-2c
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 15:57:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzuJ-0000FU-8Y
	for lore@pengutronix.de; Fri, 28 Nov 2025 15:57:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N+wDuB9sy7Xrv45eYiASUc3HNCDtfVnHKQEU77P1DFg=; b=uorAglJQNOGKT+xsGsqj2vzh8q
	ZeQ9LzWS6ro7NbDynM6L1w2Q0FVYdUlbE/4E4iSYx01zokdcr/B8VJF85+S//o/JATeHHYXrr6K+f
	yPhN4TH8hXej2vPjzI/m0IrnX/EtgL7Rjl+ZLEKdRa9nFi1S5/G2mGgOvV0dlQ5yRu5H12IIYGKk8
	dHN8bkHcypyzwrRL5LOcM4bGRtTd1KbWfvhfZWK8voMFLk7Em12xKk/NbV8DdFEWgl4WE3iWhFdAU
	ZJvYRX6DYHIDCv9rwZcDwj1Uyq4Esip6W+GQcQ1q38CWpv/KPDfZX5nd2/yPLpDhnvgYRyci/B74H
	C1SgQ6zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOztn-00000000YWy-07GM;
	Fri, 28 Nov 2025 14:56:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOztk-00000000YWY-0whk
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 14:56:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOzti-0000Am-Mt; Fri, 28 Nov 2025 15:56:34 +0100
Message-ID: <7e285378-cff8-4387-bb6e-02bb7d868faf@pengutronix.de>
Date: Fri, 28 Nov 2025 15:56:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
 <20251128-imx_usb-v1-1-bb6a5180b38e@gocontroll.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251128-imx_usb-v1-1-bb6a5180b38e@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_065636_293464_C220FC00 
X-CRM114-Status: GOOD (  20.26  )
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
Subject: Re: [PATCH 1/3] scripts: common: fix pread_full() for windows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/28/25 3:08 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> pread() is not available for windows, convert to lseek() + read()
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> 
> ---
> 
> I think this modifies the state of fd, I am not sure if pread() did this
> too. May be necessary to point the file pointer where it was before? On
> the other hand this reads the whole file so why.

I would prefer to ship a pread implementation for windows instead that
takes care to lseek to wherever we need to read from and then lseek back
to the original offset as not to induce subtle breakage into other host
tools.

Cheers,
Ahmad

> ---
>  scripts/common.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/common.c b/scripts/common.c
> index a6eee968b7..544d295b7f 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -202,8 +202,12 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset)
>  	size_t insize = size;
>  	int now;
>  
> +	now = lseek(fd, offset, SEEK_SET);
> +	if (now < 0)
> +		return now;
> +
>  	while (size) {
> -		now = pread(fd, buf, size, offset);
> +		now = read(fd, buf, size);
>  		if (now == 0)
>  			break;
>  		if (now < 0)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




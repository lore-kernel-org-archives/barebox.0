Delivery-date: Tue, 07 Oct 2025 11:12:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63k0-005CD9-2V
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:12:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63k0-0001Sw-7t
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:12:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X5zNdDPyCwSJjnE38Xt3wDlrU7O/2VHWPktVDsaLQQI=; b=RX0mp9LdYs+AvPAH/bEdwtgQPb
	D2Ys4iQjTn/+O+/SwCut9UMTFJMq2nZp4WVwOoZFKmAMCXIpE1mGFpgkQ6OCup0xkw6kreZfVHEkL
	EOclukmvzZGoC4MVV9uiWNyZJ4atTRsIJ77jBFqgKCVpa63zIE7NaVCCZjoOuH+FykD7iYrQsfdxx
	d9ILUYPUz4xufSF1GaUCEK2ToY66GyRCDjpc/ovtXSLxm/e6HN+hGvLCKMUAteA8lnvwop7QnkFuP
	JeS95WTFxn0RvbgP4TAeIocBb7FqPZ2jps/212X7EPYdv7s3W4dKTXJNKyK0SA5ToLGgDzA4Y9dJM
	cGZaUaHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jb-00000001gQ8-2auw;
	Tue, 07 Oct 2025 09:11:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jX-00000001gOj-2OAr
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:11:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63jW-0001Id-3y; Tue, 07 Oct 2025 11:11:46 +0200
Message-ID: <b110caa3-b143-404a-a54c-00984e4ddfbd@pengutronix.de>
Date: Tue, 7 Oct 2025 11:11:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-7-55f75da7e670@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-7-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_021147_630150_4B674E72 
X-CRM114-Status: GOOD (  13.65  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/9] ci: container: install crcmod and cryptography
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Needed for bareboxtlv-generator.py which will be part of integration
> tests.
> 
> While at it, sort python packages alphabetically.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/Containerfile | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index c6c3c57596..f2e785d17c 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -43,11 +43,13 @@ RUN apt-get update && apt-get install -y --no-install-recommends \
>  	qemu-system-common \
>  	ovmf \
>  	python3 \
> -	python3-pip \
> -	python3-virtualenv \
> -	python3-setuptools \
> +	python3-crcmod \
> +	python3-cryptography \
>  	python3-jsonschema \
>  	python3-libfdt \
> +	python3-pip \
> +	python3-setuptools \
> +	python3-virtualenv \
>  	python3-yaml \
>  	virtualenv \
>  	sudo \
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




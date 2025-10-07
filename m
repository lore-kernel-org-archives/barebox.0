Delivery-date: Tue, 07 Oct 2025 11:11:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63jj-005C0c-1Y
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:11:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63ji-0001MS-TA
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:11:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+V5etUeSDAdkklrG/R4w73PeHmyNsvWd8nSupKj7KM=; b=VWebWhuv2a0iYZymhZG9ABNFa5
	DEv8Y3btRZ7M28ePWl7JT9L951VefCnzjDxuqzuvfSoF1ogi8G/riRmHsxUYtwxtDgX7CEhbF+Bqw
	XsXsPdpqlvbhlaNuIURajsUX53Nz3+NhjKVXWlLIBYkrxiUxShMYLDrE11Mi8uk/ci5e0bnefECSZ
	ZONcg6A8QooNgf3sxvral+lmZascUCZ9YxpHyAMkGp2bf3e1hrwCaldGJosh6vk6gyCubr3uALLco
	Mstks5PThTGXm4RJa+7Wb5m24YD1HchaE9x0TEYF0LMAc3gNWkRSPFmtDgcrDLNTuUJupYMjUkMw4
	oF3GwcaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jG-00000001gNB-2Bol;
	Tue, 07 Oct 2025 09:11:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63jE-00000001gMr-0aka
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:11:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63jC-0001EI-Ld; Tue, 07 Oct 2025 11:11:26 +0200
Message-ID: <e2eb1933-2436-4eb7-8ba1-d09ea2788692@pengutronix.de>
Date: Tue, 7 Oct 2025 11:11:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-6-55f75da7e670@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250929-tlv-integration-v2-6-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_021128_293667_68519AC6 
X-CRM114-Status: GOOD (  18.68  )
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
Subject: Re: [PATCH v2 6/9] commands: tlv: clarify error opening tlv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Returning PTR_ERR(tlvdev) instead of printing an error message leads to
> the same output when CONFIG_CMD_TLV and when the specified path could
> not be read:
> 
>   tlv: No such file or directory
> 
> In the latter case, print an explanatory message instead.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

FWIW, this is not strictly necessary anymore since:
https://lore.barebox.org/barebox/20250926091027.1024322-2-a.fatoum@pengutronix.de/T/#u

> ---
>  commands/tlv.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/tlv.c b/commands/tlv.c
> index 53fbc2a291..6118a2947f 100644
> --- a/commands/tlv.c
> +++ b/commands/tlv.c
> @@ -28,9 +28,11 @@ static int do_tlv(int argc, char *argv[])
>  	if (!filename)
>  		return COMMAND_ERROR_USAGE;
>  
> -	tlvdev = tlv_register_device_by_path(argv[optind], NULL);
> -	if (IS_ERR(tlvdev))
> -		return PTR_ERR(tlvdev);
> +	tlvdev = tlv_register_device_by_path(filename, NULL);
> +	if (IS_ERR(tlvdev)) {
> +		printf("Could not open \"%s\": %m\n", filename);
> +		return COMMAND_ERROR;
> +	}
>  
>  	if (fixup)
>  		return tlv_of_register_fixup(tlvdev);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




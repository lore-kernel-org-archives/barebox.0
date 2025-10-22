Delivery-date: Wed, 22 Oct 2025 12:01:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVfL-00AZ9e-1P
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:01:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVfK-0004IL-Qk
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:01:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sPTbSzwwfDROeZnIdd9r9bIMV3uloUatMBOzO9AwIyE=; b=Kd08OT+H7Q1Ibr7XxC4+ZJIHyQ
	uDN5ScpY3wgcCLSPK8SWVeONMWQewSMJ5UT8NOAJWS82QDigr5gD+p28nx7+e1w/PHlmQ4zm+ZC6A
	eIBI2NKlgVWgCjPIJU23WhSZWzLNb9eZjKW0Qs5QW+t/Fsvo2iGrY/AuA/X+5b10dRg79fAXIkluh
	s3Dd/jWp7bIWyq18eQUEkztO7p/lhWe7D+LQaFbrpGfuam57G50KfXrM+XAbFXle0hJCadyXCCzk5
	AqGxVE/E0hVP/K9nZ9y+GlOcV7fbj7SwDLl9UNQvxhwYa/eJDSH7JIOlCePG0iKJPzEQclXngUBuq
	+m/1d32Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVer-00000002NXu-2UuZ;
	Wed, 22 Oct 2025 10:01:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVeZ-00000002NTf-1v3R
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:01:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVeX-0003y9-SV; Wed, 22 Oct 2025 12:01:09 +0200
Message-ID: <2072764b-59e0-4ffc-9218-5a3010185220@pengutronix.de>
Date: Wed, 22 Oct 2025 12:01:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-10-7a8aaf95081c@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-10-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_030114_347862_D8547883 
X-CRM114-Status: GOOD (  22.15  )
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
Subject: Re: [PATCH 10/15] common: tlv: default decoder for signed TLV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/14/25 1:03 PM, Jonas Rebmann wrote:
> Introduce a second default encoder that behaves just like barebox_tlv_v1
> but uses the "tlv" keyring.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  .../devicetree/bindings/nvmem/barebox,tlv.yaml     |  1 +
>  common/tlv/barebox.c                               | 25 +++++++++++++++++++++-
>  include/tlv/format.h                               |  1 +
>  3 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
> index 7a77b9a0b4..7d678ee04a 100644
> --- a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
> @@ -22,6 +22,7 @@ properties:
>      items:
>        - enum:
>          - barebox,tlv-v1        # magic: 0x61bb95f2
> +        - barebox,tlv-v1-signed # magic: 0x61bb95f3
>          - lxa,tlv-baseboard-v1  # magic: 0xbc288dfe
>          - lxa,tlv-powerboard-v1 # magic: 0xdca5a870
>        - const: barebox,tlv
> diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
> index b941463b31..d4970e6ebf 100644
> --- a/common/tlv/barebox.c
> +++ b/common/tlv/barebox.c
> @@ -177,16 +177,39 @@ static struct of_device_id of_matches[] = {
>  	{ .compatible = "barebox,tlv-v1" },
>  	{ /* sentinel */}
>  };
> +static struct of_device_id of_matches_signed[] = {
> +	{ .compatible = "barebox,tlv-v1-signed" },
> +	{ /* sentinel */ }
> +};
>  
>  static struct tlv_decoder barebox_tlv_v1 = {
>  	.magic = TLV_MAGIC_BAREBOX_V1,
>  	.driver.name = "barebox-tlv-v1",
>  	.driver.of_compatible = of_matches,
>  	.mappings = mappings,
> +	.signature_keyring = NULL,

I'd drop it given it's explicitly meant as optional parameter.

> +};
> +
> +static struct tlv_decoder barebox_tlv_v1_signed = {
> +	.magic = TLV_MAGIC_BAREBOX_V1_SIGNED,
> +	.driver.name = "barebox-tlv-v1-signed",
> +	.driver.of_compatible = of_matches_signed,
> +	.mappings = mappings,
> +	.signature_keyring = "tlv",
>  };
>  
>  static int tlv_register_default(void)
>  {
> -	return tlv_register_decoder(&barebox_tlv_v1);
> +	int err;
> +
> +	err = tlv_register_decoder(&barebox_tlv_v1);
> +	if (err)
> +		return err;
> +	if (IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
> +		err = tlv_register_decoder(&barebox_tlv_v1_signed);
> +		if (err)
> +			return err;
> +	}
> +	return 0;
>  }
>  device_initcall(tlv_register_default);
> diff --git a/include/tlv/format.h b/include/tlv/format.h
> index cbe0a132b1..ab12f0c9bb 100644
> --- a/include/tlv/format.h
> +++ b/include/tlv/format.h
> @@ -23,6 +23,7 @@
>  #include <linux/build_bug.h>
>  
>  #define TLV_MAGIC_BAREBOX_V1		0x61bb95f2
> +#define TLV_MAGIC_BAREBOX_V1_SIGNED	0x61bb95f3
>  #define TLV_MAGIC_LXA_BASEBOARD_V1	0xbc288dfe
>  #define TLV_MAGIC_LXA_POWERBOARD_V1	0xc6895c21
>  #define TLV_MAGIC_LXA_IOBOARD_V1	0xdca5a870
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




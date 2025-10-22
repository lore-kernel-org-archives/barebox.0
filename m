Delivery-date: Wed, 22 Oct 2025 11:44:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVOl-00AYx2-0P
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:44:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVOk-00016q-Hz
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:44:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j7lCmu1nIjU1AUIQeYK8liA2/BbMTvKxyyKzo+1Z+cE=; b=guVtoJ8Bw1xNKvYQN7og+OvesK
	rN6WU2GcfiaBN+oiQzUSYiOmqhfw+PEKUr9dUfLpga2Ef7tHVMkaGlRnfE4e0vQpludHMikWtH5kI
	jCdt0DFmB/q6SZRJiV6u+9ARWWbgCY4N/py37TxmPYoin9v0CjKqLbfvtK6A8l77Yguz/7r7FBLz1
	2KCQEZc3zDtQsPiKjyGyerOh5O6nmUXtyX18mOo8F+Lb4QBIAl828MgJruT4BZTVUvgJGQSJSlrkr
	ae4x/qOLk23rMlodLzy5x3sCh3e+GaqkF1vxGlmSsph9mkql8FUCSXz+Upt3TesJKdhak8Mq3r/nT
	1+3tQFYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVOJ-00000002J4K-0H5t;
	Wed, 22 Oct 2025 09:44:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVOE-00000002J2U-2yDK
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:44:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVOD-00010d-5H; Wed, 22 Oct 2025 11:44:17 +0200
Message-ID: <6045fcb2-efd4-4d89-bc37-95195abb9a53@pengutronix.de>
Date: Wed, 22 Oct 2025 11:44:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-6-7a8aaf95081c@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-6-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_024418_783761_F3F1B976 
X-CRM114-Status: GOOD (  16.76  )
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
Subject: Re: [PATCH 06/15] commands: tlv: Error out on invalid TLVs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/14/25 1:02 PM, Jonas Rebmann wrote:
> TLV parsing happens in the TLV drivers probe function
> (tlv_probe_from_magic()) but register_device() does not propagate
> errors from match(), always returning zero.
> 
> match() however ensures that dev->driver is always NULL if an error
> occurred on probe and since we're only probing the TLV driver, rely on
> that as indicator of an error during TLV parsing (e.g. CRC mismatch).
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  commands/tlv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/tlv.c b/commands/tlv.c
> index 6118a2947f..c01a7b0399 100644
> --- a/commands/tlv.c
> +++ b/commands/tlv.c
> @@ -29,7 +29,7 @@ static int do_tlv(int argc, char *argv[])
>  		return COMMAND_ERROR_USAGE;
>  
>  	tlvdev = tlv_register_device_by_path(filename, NULL);
> -	if (IS_ERR(tlvdev)) {
> +	if (IS_ERR(tlvdev) || tlvdev->dev.driver == NULL) {
>  		printf("Could not open \"%s\": %m\n", filename);
>  		return COMMAND_ERROR;
>  	}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 13 Jan 2026 14:28:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfeRS-000tQt-39
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 14:28:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfeRS-0001VQ-0K
	for lore@pengutronix.de; Tue, 13 Jan 2026 14:28:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=//dxrK8iiFjqmbIAs9grg8GyDOoGVhybQM2w5lgQwFE=; b=t+8FlbWmDchv5uO0xnlYE3QniW
	7gpSlVQIzsBPKpgxj76XSqcbBh4Q9N7jAYHHSRSkar1n0W7IEC2TLtUJNriibPT6MwuLaJP/ioab4
	lYNQSGOQWnEzLdaaIah7i+YjUgjMmZMHB48W2aJEoJPiZV0wx9bca91cdUHYifuEk1CEaM87bFqnd
	DvMkBoV8rqT0VoSvYyph6zMH+JdjebqfHM2KldzBl838dxe37fqwFF+Hm6uwdlXmlWsNHdeoGFezb
	LTjfb/fmxrpIcFSJI0WQdMKTgPr3PDKOzYEZXqB9hj+2fpa94n/6dVtKKQxXli87y1vVgYnwur+5k
	2cOuokrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeR5-000000079x4-1qRz;
	Tue, 13 Jan 2026 13:27:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeR3-000000079wJ-2qsX
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 13:27:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfeR0-0001Nl-S8; Tue, 13 Jan 2026 14:27:46 +0100
Message-ID: <60fd0bfe-9400-479c-a56c-8885f352af0b@pengutronix.de>
Date: Tue, 13 Jan 2026 14:27:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>,
 barebox@lists.infradead.org
References: <20260113132444.3808198-1-ejo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260113132444.3808198-1-ejo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_052749_717228_85741CB4 
X-CRM114-Status: GOOD (  16.32  )
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
Subject: Re: [PATCH] state: helpful error message if state GUID cannot be
 found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 1/13/26 2:24 PM, Enrico Jörns wrote:
> So far, if the user didn't specify a valid GPT UID, state initialization
> failed with the not so helpful error message:
> 
> | ERROR: state state.of: probe failed: Invalid argument
> 
> Improve this by also providing a helpful error message.
> 
> Signed-off-by: Enrico Jörns <ejo@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  common/state/state.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/state/state.c b/common/state/state.c
> index ac6cd6e572..1c23ad4c80 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -649,6 +649,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  	if (cdev_is_block_disk(cdev)) {
>  		cdev = cdev_find_child_by_gpt_typeuuid(cdev, &barebox_state_partition_guid);
>  		if (IS_ERR(cdev)) {
> +			dev_err(&state->dev, "cannot find backend GPT partition by PartitionTypeGUID\n");
>  			ret = -EINVAL;
>  			goto out_release_state;
>  		}

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




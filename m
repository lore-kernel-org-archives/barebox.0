Delivery-date: Tue, 18 Mar 2025 12:43:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVLt-0011Sg-1o
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:43:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVLs-0000Ei-FQ
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:43:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPmmJDXeD5AmHV/u79VtCCLvBQBz+B6zc4ENpSd9aj0=; b=EzS+9IovP/N1QZalLk50k7oeoy
	IYTc6wt3fwVp4WSTq2KRoY/Iz+ByA06hojUeDoFtmfwVNUfFN0C8OmByLyLFnaGuJ8RphnQkR6IYk
	GQ31TjaN9GpcQMQPXrL8cIYQwD3a6SYYYSFpObPpID4+dT2HOoUy73jNvvzsfrWs8UWVgEWuuM5BV
	oDGdiaAsV2KlO8heme9kz1mmbNNI6gPJbW596H/syhqKyixlkQEeqfjug1JRugCou2YB+a+rkuyQ3
	6DXspoWxJo2MRnl7LhLhgojxmI4Lc/1nnsrdqXpSAhOfYTpCn3BRbBZ8gcO8gCc3IwGHsiWEgznio
	3ClF6uQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVLQ-00000005lEj-1QJK;
	Tue, 18 Mar 2025 11:42:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVLN-00000005lE9-34By
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:42:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuVLM-00008C-Dd; Tue, 18 Mar 2025 12:42:48 +0100
Message-ID: <ec54f22b-3751-4891-948a-b9a79272acdd@pengutronix.de>
Date: Tue, 18 Mar 2025 12:42:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
 <20250312-rpmb-v1-6-0f213382a3f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250312-rpmb-v1-6-0f213382a3f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_044249_771791_FFE4F204 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] tee: optee: implement shared mem alloc/free RPC
 commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/12/25 13:16, Sascha Hauer wrote:
>  void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
>  		   struct optee_msg_arg *arg)
>  {
> -	pr_notice_once("optee: No supplicant or RPC handler for command 0x%x\n", arg->cmd);
> -	arg->ret = TEEC_ERROR_NOT_SUPPORTED;
> +	pr_debug("%s: receive RPC CMD: %d\n", __func__, arg->cmd);
> +
> +	switch (arg->cmd) {
> +	case OPTEE_RPC_CMD_SHM_ALLOC:
> +		cmd_shm_alloc(ctx, arg);
> +		break;
> +	case OPTEE_RPC_CMD_SHM_FREE:
> +		cmd_shm_free(arg);
> +		break;
> +	default:
> +		arg->ret = TEEC_ERROR_NOT_IMPLEMENTED;

Please move the pr_notice_once here, so barebox users know that
OP-TEE tried to do something not supported yet.

Thanks,
Ahmad

> +	}
> +
> +	arg->ret_origin = TEEC_ORIGIN_COMMS;





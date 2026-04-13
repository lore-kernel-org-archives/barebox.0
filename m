Delivery-date: Mon, 13 Apr 2026 10:22:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCYn-00Beaj-0n
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:22:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCYm-0004QY-Mk
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:22:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HnFq6SoNqS+9ehdfCqdN44KoeQVAVViXqEvwds2Qilk=; b=e376KlqakqjrJULrorP6Ub1OdF
	OeFkS1V8PJ3XekTTsxlI0MctcThwQ/QvyMdVT9r8AE8du1lUCkfvfEY57Vm/5kJesXP0oeZfOnEAp
	feTDWMYofpwdtYJT/L/KLkv87nrfxplcaR7me54H3cPdGaDpcr/qi2OFZUtjU+VbPLDpysshg4DLk
	gH9rls645JAy4lJ23Nxqf740Jlh190gaZ2rXcj8+kZlMuW9Da4FbUHcEUQgDy+zJrWV2WM9HHIG+a
	Ph+ONkUFShZ1sf/Uaf/Nm3yxDSD/IXjbbqoHqtk+8TXqjECU2xEREuh6AUDTNP6Xj7GVZVcbqXomt
	ufpukQxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCYK-0000000FG1N-29Zk;
	Mon, 13 Apr 2026 08:21:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCYI-0000000FG0l-3EQd
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:21:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wCCYF-0004GO-Ro; Mon, 13 Apr 2026 10:21:47 +0200
Message-ID: <012c0d74-7a91-4294-9d7d-06e87ed57b02@pengutronix.de>
Date: Mon, 13 Apr 2026 10:21:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_012150_835782_8471A826 
X-CRM114-Status: GOOD (  16.26  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Add additional globalvar for soc_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 2026-03-30 14:24, Fabian Pflug wrote:
> The binary representation was used to compare against,

What was compared against soc_uid_bin? Or is it still?

tlv_bind_soc_uid?

> but never exposed to userspace to query, as the exposed variables
> could correlate with the value, but did not.

The exposed string representation is encoded in a manufacturer-specific
manner, hence for use in scripting, soc_uid_bin should be accessible in
a generic representation.

> For example on i.MX8MP the byte order was reversed in comparing
> the return value of barebox_get_soc_uid_bin and $global.soc_uid.

This was discussed with regard to i.MX8MP, where the byte order of
$global.soc_uid and linux' /sys/devices/soc0/serial_number is reversed
compared to barebox_get_soc_uid_bin.

Regardless of whether the current value of barebox_get_soc_uid_bin is
correct, barebox_get_soc_uid_bin should be used for scripting.

> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
> Fabian Pflug (2):
>        common: misc: add soc_uid_bin to globalvar
>        i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
> 
>   arch/arm/mach-imx/Kconfig | 11 +++--------
>   common/misc.c             |  8 ++++++--
>   2 files changed, 9 insertions(+), 10 deletions(-)
> ---
> base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
> change-id: 20260330-v2026-03-0-topic-soc_bin_id-d12a84d7b1b5
> 
> Best regards,

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



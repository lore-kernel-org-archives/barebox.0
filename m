Delivery-date: Wed, 22 Apr 2026 09:56:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSRq-00F1Pj-2a
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 09:56:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSRq-00029J-6e
	for lore@pengutronix.de; Wed, 22 Apr 2026 09:56:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ejh7nzNNvaLn2Y5TtjQledKPp0gMFmxS+X93kCif3j0=; b=DiD2q0PNcBeeg+fhs1gDElzAIB
	6wD4BRBzHi0z83wjt1+uU2gvItD0BB1NUStO0FyVaTS2T0eJNSojJm0IUAVTwbbP0QhMXr/Vc4JNa
	ZBc8Dn9ctCSCXTD6KbZLXK2cHA7NwTYMwxcyJhJLojAloboAApbiYiaVjW42DMXDPyiIlW8MEBEZn
	7P/Xsyxv/uxJx6ux1vv0COCIcQvgdVuRiQSTYLdrq89YSb24AYLkmw9yFjSZCgxM1dWacwSnRzNum
	ZT7diVuvP2kr6dhxgFU/p1uq3SLTrHIlZKXrKEBHh5ML1bYEwcTB8REiIZBK7X9Yc0d0Mgdt7ztfn
	ayueJmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSRN-00000009kMh-3EYQ;
	Wed, 22 Apr 2026 07:56:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSRL-00000009kLv-1EVE
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 07:56:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSRH-00022d-R5; Wed, 22 Apr 2026 09:56:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSRH-006dCW-25;
	Wed, 22 Apr 2026 09:56:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSRH-00000008JfB-2KmA;
	Wed, 22 Apr 2026 09:56:03 +0200
Date: Wed, 22 Apr 2026 09:56:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aeh_ExzusLb9PCX3@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_005607_354933_0247CF59 
X-CRM114-Status: GOOD (  27.95  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 15, 2026 at 01:10:21PM +0200, Fabian Pflug wrote:
> uidstr and uidbuf could be the same, but don't have to be. This results
> in uncertainty on what exactly is the current UID used for
> machine_set_hashable and to compare against with TLV.
> 
> Add an additional global var, that encodes SoC-UID registers in a
> manner uniform across SoCs/manufacturers.
> 
> This can now be used to feed as data for bound-soc-uid into
> `bareboxtlv-generator.py` or as the value for
> `CONFIG_HABV4_CSF_UNLOCK_UID`
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/misc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/common/misc.c b/common/misc.c
> index ecf9574f7a..be896706d6 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -268,6 +268,7 @@ const uuid_t *barebox_get_product_uuid(void)
>  BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UUID");
>  
>  static char *soc_uid_str;
> +static char *soc_uid_bin_str;
>  static void *soc_uid;
>  static size_t soc_uid_len;
>  
> @@ -295,18 +296,22 @@ void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len)
>  	soc_uid = xmemdup(uidbuf, len);
>  	soc_uid_len = len;
>  
> +	soc_uid_bin_str = xzalloc(len * 2 + 1);
> +	bin2hex(soc_uid_bin_str, uidbuf, len);
> +
>  	if (uidstr) {
>  		soc_uid_str = xstrdup(uidstr);
>  	} else {
> -		soc_uid_str = xzalloc(len * 2 + 1);
> -		bin2hex(soc_uid_str, uidbuf, len);
> +		soc_uid_str = soc_uid_bin_str;
>  	}
>  
>  	machine_id_set_hashable(uidbuf, len);
>  
>  	globalvar_add_simple_string("soc_uid", &soc_uid_str);
> +	globalvar_add_simple_string("soc_uid_hex", &soc_uid_bin_str);

barebox_set_soc_uid() takes two arguments, the raw SoC UID data and a
SoC specific string representation of that data. It's unfortunate that
you need two different interpretations of the raw data on i.MX, one to
match the Linux /sys/ format and one to put into the CSF file.

Anyway, just adding a second string representation not only for i.MX,
but also for all other SoCs is rather confusing. For the i.MX field
return case we could also add a hab command option or a i.MX specific
globalvar which is exactly described as "SoC UID in the format the CSF
needs"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



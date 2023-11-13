Delivery-date: Mon, 13 Nov 2023 13:48:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WN0-00A1W2-1Y
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 13:48:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WN0-0006Fc-H6
	for lore@pengutronix.de; Mon, 13 Nov 2023 13:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ejl7IuvDaVAoWoF97PCald2hAf0Rc4iuZLWzp6Xy+WE=; b=bDmE9CJYGbLQmgUNPdYHj86aNs
	A7L1jqvHZuEZQ6b/HTbDdWPId9yF4/3v3FYWAbmLr2NtC73BEG5jddJ/sABs3VUBpXy9FgxqvfaHL
	N8QCJx6ZcsDb+96RPv8zhbSXSGyAxQzp1ebTFxwvwKbqv2QtWsUsLho9kl1NZHEfZfxz7fJq5ljRI
	q7ctQfquyLdmGjivS8RyZnrnawBlBaObYxXGYWnzpzwKQLZXX8T/wPlOLKoiOmtNnh0oghSFMBVJk
	nQCt0Dtff6161Ms0pCoWfLtH8W6h/WMkVNgFgUzlj4eymINq7doD9ljjXhFL+K2EjR3Is0+LqbAJE
	yCph5T3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WLy-00DzTz-0h;
	Mon, 13 Nov 2023 12:47:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WLu-00DzTK-20
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 12:47:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WLt-00067x-4z; Mon, 13 Nov 2023 13:47:41 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WLs-008jyP-Ok; Mon, 13 Nov 2023 13:47:40 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WLs-001orD-MW; Mon, 13 Nov 2023 13:47:40 +0100
Date: Mon, 13 Nov 2023 13:47:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231113124740.GQ3359458@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
 <20231110214421.2726093-18-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231110214421.2726093-18-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_044742_661524_9DEB392A 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 17/18] of: define of_devices_ensure_probed_by_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 10, 2023 at 10:44:20PM +0100, Ahmad Fatoum wrote:
> We will need to ensure probe of OP-TEE from SCMI code in a follow-up
> commit, so add a small helper to facilitate this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/of.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/of.h b/include/of.h
> index a7a1ce125fc0..7ebf1f02cc68 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1220,6 +1220,16 @@ int of_device_disable(struct device_node *node);
>  int of_device_disable_path(const char *path);
>  int of_device_disable_by_alias(const char *alias);
>  
> +static inline int of_devices_ensure_probed_by_compatible(char *compatible)

Should the argument be const char *?

We would have to change struct of_device_id::compatible to const char *
as well, but at least a test build of multi_v8_defconfig showed no
problems with this change.

Sascha

> +{
> +	struct of_device_id match_id[] = {
> +		{ .compatible = compatible, },
> +		{ /* sentinel */ },
> +	};
> +
> +	return of_devices_ensure_probed_by_dev_id(match_id);
> +}
> +
>  phandle of_get_tree_max_phandle(struct device_node *root);
>  phandle of_node_create_phandle(struct device_node *node);
>  int of_set_property_to_child_phandle(struct device_node *node, char *prop_name);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



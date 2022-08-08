Delivery-date: Mon, 08 Aug 2022 15:08:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Ue-00GCkk-FR
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Uf-0007np-9E
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M8DEujh+k1tRVHQeQQomxW6c52BFFi7Rc2CONbeIOvY=; b=H4r00N5tXtjQ838aDIfow9VXGL
	WFaUjcQaSlD0xI/N7QdpXj+TJf+eDcZAorPqMD+fZv2seqA/iC+AzEw0tfS2/V0hVD86RNahtu/KV
	7mCsbyo5BgOthdh/iDhd2lYVPfNNMcLBK65Vye1KV6LUVKiCnAT9fLIZgf5cdz23u/fyQzC8eVmEO
	uvtY0fOZl7UeXVEtC9tvFMrBBE2ldZZozUFC4FgS25NScbruvEjKNOoANbto7a8bLKkDo+pcQ+L12
	3sSQdP+Z0LOlgnC7KBgbBDTJOOUSGMw7sK/HUDneYpyLdRN2PedeotLvT3oh5xyD++NHRMh4XrUim
	pepaMl6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2TR-00DwaA-Le; Mon, 08 Aug 2022 13:07:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2TN-00DwYr-Dv
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:07:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2TM-0007ez-7r; Mon, 08 Aug 2022 15:07:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2TL-00032j-IL; Mon, 08 Aug 2022 15:07:07 +0200
Date: Mon, 8 Aug 2022 15:07:07 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220808130707.GI31528@pengutronix.de>
References: <20220805040927.1658824-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805040927.1658824-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_060709_483251_D760FB0B 
X-CRM114-Status: GOOD (  22.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: devel: project-ideas: update after
 DSA framework addition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 06:09:26AM +0200, Ahmad Fatoum wrote:
> We have a proper abstraction for switches now, so drop this idea
> from the list.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/devel/project-ideas.rst | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
> index a3643298ab08..e49bfa6ca4da 100644
> --- a/Documentation/devel/project-ideas.rst
> +++ b/Documentation/devel/project-ideas.rst
> @@ -20,10 +20,8 @@ For GSoC, following barebox developers are mentoring:
>    - Rouven Czerwinski (IRC: ``Emantor``)
>  
>  This list can be edited and extended by sending patches to the mailing list.
> -Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs).
> -Switch device framework (currently scripts write into a ``/dev/switch`` file
> -to configure passthrough), Improvements for barebox-efi (e.g. as a coreboot
> -payload), ... etc.
> +Other interesting ideas: Support for new file systems (EROFS, extfat, btrfs),
> +Improvements for barebox-efi (e.g. as a coreboot payload), ... etc.
>  
>  Ideas listed below should contain a title, description, expected outcomes,
>  skills (and HW if any) required and a difficulty rating.
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



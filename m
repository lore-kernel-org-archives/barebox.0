Delivery-date: Thu, 21 Sep 2023 10:06:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEhJ-005doJ-2T
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:06:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEhG-0002qI-Gk
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RYBBkhl5EMbP5W0U7AGVLa3o1QbkmvXXM0acoMqO8eM=; b=GPSMcwno+O9XPpwQkPFgzg7nZx
	ZJNNeGqbSPhkh1RBnqA+8XU7mxR4AtR+TWb68/g7mz/yRc2kGEGDdrg9jfA2Q5n3x3Kog/GysULVT
	k8/MPujlhN9sNioehoeRUmuHOcOK68MdjvKqHA5z9HqNPqq0iqHASFpwvceFTb2RFG7ZzXJLHq5vU
	amMS+ar0jLjZtNYScQSxvJNTgtScYtPXFh+ReyH+9fsVED8CnyNTAOjzK9nLJ+2/5eK6C1FD/gWJP
	1Vr6CJ5pAD7lA5UIBerIWMEKN/iBqhnXvUTSmc8XWcoMysRQIYqoyl2b+yeJ20iZZF5mUccM90owK
	p0QOfatw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEgA-005RqE-37;
	Thu, 21 Sep 2023 08:04:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEg8-005Rop-1N
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:04:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEg7-0002SU-9D; Thu, 21 Sep 2023 10:04:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEg6-007sKU-T7; Thu, 21 Sep 2023 10:04:50 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEg6-00Af8i-Qe; Thu, 21 Sep 2023 10:04:50 +0200
Date: Thu, 21 Sep 2023 10:04:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080450.GZ637806@pengutronix.de>
References: <20230918161749.18170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918161749.18170-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010452_466199_39EA65EC 
X-CRM114-Status: GOOD (  19.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Documentation: remove info about bridging to
 matrix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 18, 2023 at 06:17:49PM +0200, Ahmad Fatoum wrote:
> The matrix bridge has been temporarily suspended last month and is not
> back up again. Remove reference it in the documentation to avoid
> confusion until it's back up.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/introduction.rst | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
> index e7388b8bc95e..ceafcbb6d7ec 100644
> --- a/Documentation/user/introduction.rst
> +++ b/Documentation/user/introduction.rst
> @@ -35,6 +35,4 @@ Patch series sent there can be fetched with `b4 <https://pypi.org/project/b4/>`_
>     git config b4.linkmask https://lore.barebox.org/%s
>     b4 am https://lore.barebox.org/$messageid # replace with link
>  
> -There's also an IRC channel, which is
> -`bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
> -#barebox on Libera Chat
> +There's also an IRC channel: #barebox on Libera Chat
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



Delivery-date: Mon, 03 Apr 2023 09:05:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEGE-008G5M-Fs
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:05:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEGE-0001wJ-AC
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:05:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LV5Kd9cAulp3vIVBHLZDGXOUxD006zOodbupVMvdLaw=; b=yOdrgipYPqJBBpb1BBW4RDQAxX
	jaIAJ5DQweRTu1OeXs6vxKSI9DYyj8HxVB9cJvfaobmoFdR1vpK2eaGd5JShkMyRtEIQyjY395gQi
	0sdAp3XkHETVjQ+V0sKM0LLFKrK+xDYAkD/6uAn/bvxfowEpAODHWeYSQv+La5GAs5SirqSbcsJuy
	POZ034hLCJYvj2ten5XPVXRAee6oR3d0289Jo+eVdrKvdRpxm3auDXu443qrsySIunVO61AIe4pfa
	S5opYXj7PPOsk6q3NH98Q4r4EzCXUEvzvStgQ+xE70gqmO22SoCQTEasL3eAESUy2PeYxQqF8I0lb
	+wkkj9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEFA-00EK7l-0E;
	Mon, 03 Apr 2023 07:04:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEF8-00EK79-0K
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:04:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEF6-0001Zk-QX; Mon, 03 Apr 2023 09:04:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEF6-0007sQ-5o; Mon, 03 Apr 2023 09:04:40 +0200
Date: Mon, 3 Apr 2023 09:04:40 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>
Message-ID: <20230403070440.GO19113@pengutronix.de>
References: <20230331103123.1525200-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230331103123.1525200-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_000442_132529_66860129 
X-CRM114-Status: GOOD (  20.45  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] pinctrl: stm32: Remove check for pins-are-numbered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 31, 2023 at 12:31:23PM +0200, Ahmad Fatoum wrote:
> Upstream has dropped this property from the device trees that we import,
> so drop our check for it to fix boot up on STM32MP1.
> 
> Link: https://lore.kernel.org/all/20221129023401.278780-3-bero@baylibre.com/
> Fixes: 03b1dd74aa6e ("dts: update to v6.3-rc1")
> Reported-by: David Jander <david@protonic.nl>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-stm32.c | 5 -----
>  1 file changed, 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
> index 15d845e0ad34..1eed5473f6e0 100644
> --- a/drivers/pinctrl/pinctrl-stm32.c
> +++ b/drivers/pinctrl/pinctrl-stm32.c
> @@ -348,11 +348,6 @@ static int stm32_pinctrl_probe(struct device *dev)
>  	struct device_node *np = dev->of_node, *child;
>  	int ret;
>  
> -	if (!of_find_property(np, "pins-are-numbered", NULL)) {
> -		dev_err(dev, "only pins-are-numbered format supported\n");
> -		return -EINVAL;
> -	}
> -
>  	for_each_available_child_of_node(np, child)
>  		if (of_property_read_bool(child, "gpio-controller"))
>  			nbanks++;
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



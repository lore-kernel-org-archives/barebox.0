Delivery-date: Mon, 22 Mar 2021 12:51:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJ5w-0003PW-4p
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 12:51:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJ5v-0001ZU-Ca
	for lore@pengutronix.de; Mon, 22 Mar 2021 12:51:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cZxQ2ea9zYS/38bc8G/FMO9B0gkwfgxZGf8N4C8YDhE=; b=Jz9JbsYPW6nX5OMKobnL46kbS
	0Nkhs5/Cvq+X+CahK9evrlXNq6AU0glHhvxJMC5+9BYZjMfQzy6yL6z1jVyC0806jv1xFtvWKuiZs
	VmxSdiYlHk8zAh4Ww884wypUk1XuWvQ2jrFeZlRBqPye7rTQO41KnwwXxMgvtSipY6+MPczM3z8JP
	fmc3W8J6a1Kd7wfs3zPPQlzrAftygzDsaPVPMu71DBgYG1xN7puXPowRjjI8VIEMu/SyvigUQ5n1S
	Qt3xKv3OXCOI/GjUjEe0ni21hYQcnStUOHIB/UCPHsAjlp0dtSPyuI8F5X/cWkXjt25gK2+zk8xLR
	yNLLioyrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOJ53-00BVed-DQ; Mon, 22 Mar 2021 11:50:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOJ4u-00BVdZ-SD
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 11:50:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOJ4u-0001KT-Et; Mon, 22 Mar 2021 12:50:36 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210322112412.4232-1-s.hauer@pengutronix.de>
 <20210322112412.4232-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bdd6b960-b421-f5b8-f1ea-15cbae1e5054@pengutronix.de>
Date: Mon, 22 Mar 2021 12:50:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210322112412.4232-2-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_115037_237558_7153143E 
X-CRM114-Status: GOOD (  20.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] reboot-mode: drop now unnecessary check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 22.03.21 12:24, Sascha Hauer wrote:
> The reboot mode fixup tests if it is the live tree before modifying
> anything. This is unnecessary now as the live tree is never passed
> to fixups anymore.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/power/reset/reboot-mode.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index df3be03edf..d9b51dfea6 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -71,10 +71,6 @@ static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
>  	srcnp = reboot->dev->device_node;
>  	dstnp = of_get_node_by_reproducible_name(root, srcnp);
>  
> -	/* nothing to do when called on barebox-internal tree */
> -	if (srcnp == dstnp)
> -		return 0;
> -
>  	if (dstnp) {
>  		dstparent = dstnp->parent;
>  		of_delete_node(dstnp);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

